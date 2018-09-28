package point.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PointController {

	
	@RequestMapping(value="/point/jpointInfo.do")
	public ModelAndView jpointInfo(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../point/jpointInfo.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;		
	}
}
