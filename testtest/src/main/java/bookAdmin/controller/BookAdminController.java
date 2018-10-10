package bookAdmin.controller;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bookAdmin.bean.FlightInfoDTO;
import notice.bean.NoticeDTO;
import notice.dao.NoticeDAO;

@Controller
public class BookAdminController {

	@Autowired
	private BookAdminService bookAdminService;
	
	@RequestMapping(value="/bookAdmin/bookAdmin.do")
	public ModelAndView bookAdmin(HttpServletRequest request) throws Exception{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		FlightInfoDTO flightInfoDTO = new FlightInfoDTO();
		
		String depAirport1 = request.getParameter("depAirport1");
		String depAirCode1 = request.getParameter("depAirCode1");
		String arrAirport1 = request.getParameter("arrAirport1");
		String arrAirCode1 = request.getParameter("arrAirCode1");
		String depDate1 = request.getParameter("depDate1");
		String flightName1 = request.getParameter("flightName1");
		String depTime1 = request.getParameter("depTime1");
		String arrTime1 = request.getParameter("arrTime1");
		int depPrice1 = Integer.parseInt(request.getParameter("depPrice1"));
		int depFuelPrice1 = Integer.parseInt(request.getParameter("depFuelPrice1"));
		int depAirportPrice1 = Integer.parseInt(request.getParameter("depAirportPrice1"));
		
		flightInfoDTO.setDepAirport1(depAirport1);
		flightInfoDTO.setDepAirCode1(depAirCode1);
		flightInfoDTO.setArrAirport1(arrAirport1);
		flightInfoDTO.setArrAirCode1(arrAirCode1);
		flightInfoDTO.setDepDate1(depDate1);
		flightInfoDTO.setFlightName1(flightName1);
		flightInfoDTO.setDepTime1(depTime1);
		flightInfoDTO.setArrTime1(arrTime1);
		flightInfoDTO.setDepPrice1(depPrice1);
		flightInfoDTO.setDepFuelPrice1(depFuelPrice1);
		flightInfoDTO.setDepAirportPrice1(depAirportPrice1);
		
		int result = bookAdminService.flightInfoInsert(flightInfoDTO);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("display","/bookAdmin/bookAdmin.jsp");
		modelAndView.setViewName("../main/main.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/bookAdmin/bookAdminForm.do")
	public ModelAndView bookAdminForm(HttpServletRequest request) throws Exception{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","/bookAdmin/bookAdminForm.jsp");
		modelAndView.setViewName("../main/main.jsp");
		
		return modelAndView;
	
	}
	
}
	// --------------- 여기서부터 수정하기!!!! -----------------
	/*@RequestMapping(value="/notice/noticeList.do")
	public ModelAndView noticeList(HttpServletRequest request, NoticeDAO noticeDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int pg = Integer.parseInt(request.getParameter("pg"));
		int endNum = pg*5;
		int startNum = endNum-4;
		
		List<Object> list = noticeService.noticeList(startNum, endNum);
		int totalA = noticeService.getTotalA();
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
	
}*/
