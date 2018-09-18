package event.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import event.bean.EventDTO;
import event.dao.EventDAO;

@Controller
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@RequestMapping(value="/event/eventWriteForm.do",method=RequestMethod.GET)
	public ModelAndView eventWriteForm(HttpServletRequest request, EventDAO eventDAO) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../event/eventWriteForm.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/event/eventWrite.do",method=RequestMethod.POST)
	public ModelAndView eventWrite(HttpServletRequest request, EventDAO eventDAO, MultipartFile imagefile) {

		String filePath = "D:/java_web_4/spring/workspace/testtest/src/main/webapp/storage";
		String fileName = imagefile.getOriginalFilename();
		File file = new  File(filePath, fileName);
		
		// 파일 복사
		try {
			// getInputStream() : 업로드한 파일 데이터를 읽어오는 InputStream을 구한다.
			FileCopyUtils.copy(imagefile.getInputStream(), new FileOutputStream(file));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		EventDTO eventDTO = new EventDTO();
		eventDTO.setImage(fileName);
		
		ModelAndView modelAndView = new ModelAndView();
		
		String id = request.getParameter("id");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content"); 
		
		eventDTO.setId(id);
		eventDTO.setSubject(subject);
		eventDTO.setContent(content);
		
		int result = eventService.eventWrite(eventDTO);
		
		modelAndView.addObject("result", result);
		modelAndView.addObject("display","../event/eventWrite.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;		
	}
	
	@RequestMapping(value="/event/eventListC.do")
	public ModelAndView eventListC(HttpServletRequest request, EventDAO eventDAO) {
		int pg = Integer.parseInt(request.getParameter("pg"));
		int endNum = pg*5;
		int startNum = endNum-4;
		
		List<Object> list = eventService.eventList(startNum, endNum);
		int totalA = eventService.getTotalA();
		int totalP = (totalA+4)/5;
		
		int startPage = (pg-1)/3*3 + 1;
		int endPage = startPage + 2;
		if(totalP < endPage) {endPage = totalP;}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.addObject("list", list);
		modelAndView.addObject("display", "../event/eventListC.jsp");
		modelAndView.setViewName("../main/main.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/event/eventListE.do")
	public ModelAndView eventListE(HttpServletRequest request, EventDAO eventDAO) {
		int pg = 1;
		List<Object> list = eventService.eventListE();
		int totalA = eventService.getTotalE();
		int totalP = (totalA+4)/5;
		
		int startPage = (pg-1)/3*3 + 1;
		int endPage = startPage + 2;
		if(totalP < endPage) {endPage = totalP;}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.addObject("list", list);
		modelAndView.addObject("display", "../event/eventListE.jsp");
		modelAndView.setViewName("../main/main.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/event/eventView.do")
	public ModelAndView eventView(HttpServletRequest request, EventDAO eventDAO) {
		int seq = Integer.parseInt(request.getParameter("seq"));
		EventDTO eventDTO = eventService.eventView(seq);
		
		eventService.hit(seq);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("eventDTO",eventDTO);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("display", "../event/eventView.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/event/eventModifyForm.do")
	public ModelAndView eventModifyForm(HttpServletRequest request, EventDAO eventDAO) {
		int seq = Integer.parseInt(request.getParameter("seq"));
		EventDTO eventDTO = eventService.eventModifyForm(seq);		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("eventDTO",eventDTO);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("display", "../event/eventModifyForm.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/event/eventModify.do")
	public ModelAndView eventModify(HttpServletRequest request, EventDAO eventDAO) {
		int seq = Integer.parseInt(request.getParameter("seq"));
		EventDTO eventDTO = new EventDTO();
		eventDTO.setSeq(seq);
		eventDTO.setId(request.getParameter("id"));
		eventDTO.setSubject(request.getParameter("subject"));
		eventDTO.setContent(request.getParameter("content"));
		eventDTO.setImage(request.getParameter("image"));
		int result = 0;
		result = eventService.eventModify(eventDTO);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("display", "../event/eventModify.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/event/eventDelete.do")
	public ModelAndView eventDelete(HttpServletRequest request, EventDAO eventDAO) {
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		int result = 0;
		result = eventService.eventDelete(seq);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("display", "../event/eventDelete.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
}


























