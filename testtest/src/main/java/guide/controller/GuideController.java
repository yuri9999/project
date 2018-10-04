package guide.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GuideController {
	
	@RequestMapping(value="/guide/innerService.do")
	public ModelAndView innerService(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/innerService.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/guide/airCafe.do")
	public ModelAndView airCafe(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/airCafe.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/guide/dutyFree.do")
	public ModelAndView dutyFree(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/dutyFree.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/guide/item.do")
	public ModelAndView item(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/item.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/guide/lounge.do")
	public ModelAndView lounge(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/lounge.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/guide/airReservation.do")
	public ModelAndView airReservation(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/airReservation.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/guide/airRefund.do")
	public ModelAndView airRefund(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/airRefund.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}

	@RequestMapping(value="/guide/boardingRule.do")
	public ModelAndView boardingRule(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/boardingRule.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/guide/onlineTicket.do")
	public ModelAndView onlineTicket(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/onlineTicket.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}

	@RequestMapping(value="/guide/cityAirport.do")
	public ModelAndView cityAirport(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/cityAirport.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/guide/luggage.do")
	public ModelAndView luggage(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/luggage.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/guide/help.do")
	public ModelAndView help(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/help.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
}
