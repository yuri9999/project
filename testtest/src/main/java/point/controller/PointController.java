package point.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sun.javafx.sg.prism.NGShape.Mode;
import com.sun.org.apache.xpath.internal.operations.Mod;

import member.bean.MemberDTO;
import member.controller.MemberService;

@Controller
public class PointController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/point/jpointInfo.do")
	public ModelAndView jpointInfo(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		String id ="";
		if((String) session.getAttribute("memId")!=null) {
			id = (String) session.getAttribute("memId");
		}else {
			id = "notLogin";
		}

		MemberDTO memberDTO = memberService.getMember(id);
		modelAndView.addObject("memberDTO", memberDTO);
		modelAndView.addObject("display", "../point/jpointInfo.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;		
	}
	@RequestMapping(value="/point/jpointAlliance.do")
	public ModelAndView jpointAlliance(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		String id ="";
		if((String) session.getAttribute("memId")!=null) {
			id = (String) session.getAttribute("memId");
		}else {
			id = "notLogin";
		}

		MemberDTO memberDTO = memberService.getMember(id);
		modelAndView.addObject("memberDTO", memberDTO);
		modelAndView.addObject("display", "../point/jpointAlliance.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/point/jpointGrade.do")
	public ModelAndView jpointGrade(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		String id ="";
		if((String) session.getAttribute("memId")!=null) {
			id = (String) session.getAttribute("memId");
		}else {
			id = "notLogin";
		}

		MemberDTO memberDTO = memberService.getMember(id);
		modelAndView.addObject("memberDTO", memberDTO);
		modelAndView.addObject("display", "../point/jpointGrade.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/point/jpointSave.do")
	public ModelAndView jpointSave(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		String id ="";
		if((String) session.getAttribute("memId")!=null) {
			id = (String) session.getAttribute("memId");
		}else {
			id = "notLogin";
		}

		MemberDTO memberDTO = memberService.getMember(id);
		modelAndView.addObject("memberDTO", memberDTO);
		modelAndView.addObject("display", "../point/jpointSave.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
}
