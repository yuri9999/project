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
	
	
	@RequestMapping(value="/guide/counter.do")
	public ModelAndView counter(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../guide/counter.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/company/airIntroduce.do")
	public ModelAndView airIntroduce(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../company/airIntroduce.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/company/introduce.do")
	public ModelAndView Introduce(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../company/introduce.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/product/rooms.do")
	public ModelAndView rooms(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../product/rooms.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/product/rentalCar.do")
	public ModelAndView rentalCar(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../product/rentalCar.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/product/insurance.do")
	public ModelAndView insurance(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../product/insurance.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/product/pet.do")
	public ModelAndView pet(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../product/pet.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/terms/airServise.do")
	public ModelAndView airServise(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../terms/airServise.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/terms/homepage.do")
	public ModelAndView homepage(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../terms/homepage.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/terms/passenger.do")
	public ModelAndView passenger(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../terms/passenger.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/terms/privacy.do")
	public ModelAndView privacy(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display","../terms/privacy.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/product/product.do")
	public ModelAndView product(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../product/product.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
}
