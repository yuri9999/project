package book.controller;


import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;
import member.bean.MemberDTO;
import member.controller.MemberService;

@Controller
public class BookController {
	BookDTO bookDTO = new BookDTO();
	
	@Autowired
	MemberService memberService;
	@Autowired
	BookService bookService;
	
	@RequestMapping(value="/book/selectSeat2.do",method=RequestMethod.POST)
	public ModelAndView selectSeat2(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		String dep = bookDTO.getFlightName1();
		String arr = bookDTO.getFlightName2();
		String dayGo = bookDTO.getDepGo();
		String dayCome = bookDTO.getArrBack();
		String adult = bookDTO.getAge();
		int seatPrice1 = Integer.parseInt(request.getParameter("seatPrice1"));
		String seatName1 = request.getParameter("seatName1");
		
		System.out.println(seatPrice1);
		System.out.println(seatName1);
		System.out.println(dayGo);
		System.out.println(dayCome);
		bookDTO.setSeatName1(seatName1);
		bookDTO.setSeatPrice1(seatPrice1);
		modelAndView.addObject("dep", dep);
		modelAndView.addObject("arr", arr);
		modelAndView.addObject("dayGo", dayGo);
		modelAndView.addObject("dayCome", dayCome);
		modelAndView.addObject("adult", adult);
		modelAndView.addObject("seatName1", seatName1);
		modelAndView.addObject("seatPrice1", seatPrice1);
		
		modelAndView.addObject("display", "../book/selectSeat2.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/book/selectSeat.do",method=RequestMethod.GET)
	public ModelAndView selectSeat(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		String dep = bookDTO.getFlightName1();
		String arr = bookDTO.getFlightName2();
		String dayGo = bookDTO.getDepGo();
		String dayCome = bookDTO.getArrBack();
		String adult = bookDTO.getAge();
		System.out.println(dep);
		System.out.println(arr);
		System.out.println(dayGo);
		System.out.println(dayCome);
		System.out.println(adult);
		modelAndView.addObject("dep", dep);
		modelAndView.addObject("arr", arr);
		modelAndView.addObject("dayGo", dayGo);
		modelAndView.addObject("dayCome", dayCome);
		modelAndView.addObject("adult", adult);
		
		modelAndView.addObject("display", "../book/selectSeat.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/book/stepForm2.do")
	public ModelAndView step2Form(HttpServletRequest request) {
		
		// 여기서 총액계산애서 티켓팅에 넣기
		
		String flightName1 = request.getParameter("flightName1");
		BookDTO bookDTO = bookService.passengerCharge(flightName1);
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("memId");
		MemberDTO memberDTO = memberService.getMember(id);
		
		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("memberDTO", memberDTO);
		modelAndView.addObject("display", "../book/stepForm2.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
		
	}
	
	@RequestMapping(value="/book/step2.do")
	public ModelAndView step2(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../book/step2.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/book/step03.do",method=RequestMethod.POST)
	public ModelAndView bookStep03(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		String dep = request.getParameter("start");
		String arr = request.getParameter("end");
		String dayGo = request.getParameter("hdayGo");
		String dayCome = request.getParameter("hdayCome");
		String adult = request.getParameter("hadult");
		String kid = request.getParameter("hkid");
		String baby = request.getParameter("hbaby");
		System.out.println(dep);
		System.out.println(arr);
		System.out.println(dayGo);
		System.out.println(dayCome);
		System.out.println(adult);
		
		bookDTO.setFlightName1(dep);
		bookDTO.setFlightName2(arr);
		bookDTO.setDepGo(dayGo);
		bookDTO.setArrBack(dayCome);
		bookDTO.setAge(adult);
		
		modelAndView.addObject("dep", dep);
		modelAndView.addObject("arr", arr);
		modelAndView.addObject("dayGo", dayGo);
		modelAndView.addObject("dayCome", dayCome);
		modelAndView.addObject("adult", adult);
		modelAndView.addObject("kid", kid);
		modelAndView.addObject("baby", baby);
		
		modelAndView.addObject("display", "../book/step03.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;		
	}
	
	@RequestMapping(value="/book/goAvail.do",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView bookFillForm(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		
		
		String dep = request.getParameter("hdep");
		String arr = request.getParameter("harr");
		String dayGo = request.getParameter("hdayGo");
		String dayCome = request.getParameter("hdayCome");
		String adult = request.getParameter("hadult");
		String kid = request.getParameter("hkid");
		String baby = request.getParameter("hbaby");

		modelAndView.addObject("dep", dep);
		modelAndView.addObject("arr", arr);
		modelAndView.addObject("dayGo", dayGo);
		modelAndView.addObject("dayCome", dayCome);
		modelAndView.addObject("adult", adult);
		modelAndView.addObject("kid", kid);
		modelAndView.addObject("baby", baby);
		
		modelAndView.addObject("display", "../book/goAvail.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/book/step4.do")
	public ModelAndView step4(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../book/step4.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
}

