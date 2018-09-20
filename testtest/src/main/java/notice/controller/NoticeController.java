package notice.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import notice.bean.NoticeDTO;
import notice.dao.NoticeDAO;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value="/notice/noticeWriteForm.do")
	public ModelAndView noticeWriteForm(HttpServletRequest request, NoticeDAO noticeDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../notice/noticeWriteForm.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/notice/noticeWrite.do")
	public ModelAndView noticeWrite(HttpServletRequest request, NoticeDAO noticeDAO) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		
		NoticeDTO noticeDTO = new NoticeDTO();
		
		ModelAndView modelAndView = new ModelAndView();
		
		String id = request.getParameter("id");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content"); 
		
		noticeDTO.setId(id);
		noticeDTO.setSubject(subject);
		noticeDTO.setContent(content);
		
		int result = noticeService.noticeWrite(noticeDTO);
		
		modelAndView.addObject("result", result);
		modelAndView.addObject("display","../notice/noticeWrite.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;		
	}
	
	@RequestMapping(value="/notice/noticeList.do")
	public ModelAndView noticeList(HttpServletRequest request, NoticeDAO noticeDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int pg = Integer.parseInt(request.getParameter("pg"));
		int endNum = pg*10;
		int startNum = endNum-9;
		
		List<Object> list = noticeService.noticeList(startNum, endNum);
		int totalA = noticeService.getTotalA();
		int totalP = (totalA+9)/10;
		
		int startPage = (pg-1)/3*3 + 1;
		int endPage = startPage + 2;
		if(totalP < endPage) {endPage = totalP;}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.addObject("list", list);
		modelAndView.addObject("display", "../notice/noticeList.jsp");
		modelAndView.setViewName("../main/main.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/notice/noticeView.do")
	public ModelAndView noticeView(HttpServletRequest request, NoticeDAO noticeDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int seq = Integer.parseInt(request.getParameter("seq"));
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO = noticeService.noticeView(seq);
		
		noticeService.hit(seq);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("noticeDTO",noticeDTO);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("display", "../notice/noticeView.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/notice/noticeModifyForm.do")
	public ModelAndView noticeModifyForm(HttpServletRequest request, NoticeDAO noticeDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int seq = Integer.parseInt(request.getParameter("seq"));
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO = noticeService.noticeModifyForm(seq);		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("noticeDTO",noticeDTO);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("display", "../notice/noticeModifyForm.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/notice/noticeModify.do")
	public ModelAndView noticeModify(HttpServletRequest request, NoticeDAO noticeDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int seq = Integer.parseInt(request.getParameter("seq"));
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setSeq(seq);
		noticeDTO.setId(request.getParameter("id"));
		noticeDTO.setSubject(request.getParameter("subject"));
		noticeDTO.setContent(request.getParameter("content"));
		int result = 0;
		result = noticeService.noticeModify(noticeDTO);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("display", "../notice/noticeModify.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/notice/noticeDelete.do")
	public ModelAndView noticeDelete(HttpServletRequest request, NoticeDAO noticeDAO) {
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		int result = 0;
		result = noticeService.noticeDelete(seq);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("display", "../notice/noticeDelete.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
}
