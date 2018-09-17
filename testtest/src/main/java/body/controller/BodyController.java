package body.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import event.controller.EventService;
import event.dao.EventDAO;
import notice.controller.NoticeService;
import notice.dao.NoticeDAO;

@Controller
public class BodyController {

	
	@Autowired
	private EventService eventService;
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value="/main/body.do")
	public ModelAndView bodyList(HttpServletRequest request,EventDAO eventDAO) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		int pgE = 1;
		int endNumE = pgE*4;
		int startNumE = endNumE-3;
		
		int pgN = 1;
		int endNumN = pgN*5;
		int startNumN = endNumN-4;
		
		List<Object> list = eventService.eventList(startNumE, endNumE);
		List<Object> listN = noticeService.noticeList(startNumN, endNumN);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.addObject("listN", listN);
		modelAndView.setViewName("../main/body.jsp");

		return modelAndView;
	}
	
}
