package book.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;
import bookAdmin.bean.FlightInfoDTO;
import member.bean.MemberDTO;
import member.controller.MemberService;


@Controller
public class BookController {

	@Autowired
	private BookService bookService;
	@Autowired
	private MemberService memberService;
	
<<<<<<< HEAD
	@RequestMapping(value="/book/stepForm1.do")
	public ModelAndView stepForm1(HttpServletRequest request) throws Exception{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		HttpSession session = request.getSession();
		/*String name = (String)session.getAttribute("memName");*/
		String id = (String)session.getAttribute("memId");
=======
	@RequestMapping(value="/book/step04.do",method=RequestMethod.POST)
	public ModelAndView step04(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		String seatPrice1_1 = request.getParameter("seatPrice1_1");
		String seatPrice1_2 = request.getParameter("seatPrice1_2");
		
		System.out.println(seatPrice1_1);
		System.out.println(seatPrice1_2);
		
		modelAndView.addObject("seatPrice1_1", seatPrice1_1);
		modelAndView.addObject("seatPrice1_2", seatPrice1_2);
		
		modelAndView.addObject("display","../book/step04.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	@RequestMapping(value="/book/selectSeat2.do",method=RequestMethod.POST)
	public ModelAndView selectSeat2(HttpServletRequest request) {
>>>>>>> refs/remotes/origin/master
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("id", id);
		modelAndView.addObject("display", "../book/stepForm1.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value="../book/step1.do")
	public Map<String,Object> step1(HttpServletRequest request) throws Exception{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String depName = request.getParameter("depName");
		String arrName = request.getParameter("arrName");
		//인천(ICN) -> ICN으로 자르기(출발자르기)
		String SubDepName= depName.substring(depName.lastIndexOf("(")+1);
		int idx1 = SubDepName.indexOf(")");
		String depAirCode1 = SubDepName.substring(0,idx1);
		//다낭(DAN) -> DAN으로 자르기(도착자르기)
		String SubArrName= arrName.substring(arrName.lastIndexOf("(")+1);
		int idx2 = SubArrName.indexOf(")");
		String arrAirCode1 = SubArrName.substring(0,idx2);
		
		//가격측정하게 부킹테이블에 넣어주기
		
		String dayGo = request.getParameter("dayGo");
		String dayCome = request.getParameter("dayCome");
		String adult = request.getParameter("adult");
		String kid = request.getParameter("kid");
		String baby = request.getParameter("baby");
		
		
		BookDTO bookDTO = new BookDTO();
		
		bookDTO.setAirportName1(depName); //출발지
		bookDTO.setAirportName2(arrName);//도착지
		
		bookDTO.setAge("성인");//성인구분
		bookDTO.setNop(1);//구매티켓수(나중에 count Sql문 작성)
		
		
		System.out.println(bookDTO.getFlightName1()+"<<<<<<<<<<<<<<<<<<<<<<<");
		
		//테스트용
		System.out.println("depName ==> "+depName);
		System.out.println("arrName ==> "+arrName);
		System.out.println("depAirCode1 ==>  "+depAirCode1);
		System.out.println("arrAirCode1 ==>  "+arrAirCode1);
		System.out.println("dayGo ==> "+dayGo);
		System.out.println("dayCome ==>  "+dayCome);
		System.out.println("adult ==> "+adult);
		System.out.println("kid ==> "+kid);
		System.out.println("baby==> "+baby);
		
		List<FlightInfoDTO> list = new ArrayList<FlightInfoDTO>();
		List<FlightInfoDTO> list2 = new ArrayList<FlightInfoDTO>();
		
		FlightInfoDTO dto = new FlightInfoDTO();
		
		if (!"".equals(dayGo)) {
			dto.setDepDate1(dayGo);
			dto.setDepAirCode1(depAirCode1);
			dto.setArrAirCode1(arrAirCode1);
			list = bookService.getAirlineTicket(dto);
		}
		for (FlightInfoDTO flightInfoDTO : list) {
			bookDTO.setDep1(flightInfoDTO.getDepDate1()); //출발일시 노선1편명
			bookDTO.setAr1(flightInfoDTO.getDepDate1()); //도착일시 노선1편명
			
			//확인용 test --> 나중에 지우기
			System.out.println(flightInfoDTO.getFlightName1());
			System.out.println(flightInfoDTO.getDepTime1());
			System.out.println(flightInfoDTO.getArrTime1());
		}
		
		if (!"".equals(dayCome)) {
			dto.setDepDate1(dayCome);
			dto.setDepAirCode1(arrAirCode1);
			dto.setArrAirCode1(depAirCode1);
			list2 = bookService.getAirlineTicket(dto);
		}
		
		
				for (FlightInfoDTO flightInfoDTO : list2) {
					bookDTO.setDep2(flightInfoDTO.getDepDate1()); //출발일시 노선2편명
					bookDTO.setAr2(flightInfoDTO.getDepDate1()); //도착일시 노선2편명
					
					//확인용 test --> 나중에 지우기
					System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
					System.out.println(flightInfoDTO.getFlightName1());
					System.out.println(flightInfoDTO.getDepTime1());
					System.out.println(flightInfoDTO.getArrTime1());
				}
		
				
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("memId");
		MemberDTO memberDTO = memberService.getMember(id);
		
		Map<String,Object> returnData = new HashMap<>();
		returnData.put("bookDTO", bookDTO);
		returnData.put("arrName", arrName);
		returnData.put("depName", depName);
		returnData.put("list", list);
		returnData.put("id", id);
		returnData.put("flightInfoDTO",dto);
		returnData.put("list2", list2);
		returnData.put("memberDTO", memberDTO);
		

		return returnData;
		
		// 스텝1에서 선택된 편명을   스텝폼 2에 보내줘야함
		/*
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("id", id);
		modelAndView.addObject("list", list);
		modelAndView.addObject("flightInfoDTO", dto);
		modelAndView.addObject("memberDTO", memberDTO);
		modelAndView.addObject("display", "../book/stepForm1.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;*/
	}
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/book/getPrice.do")
	public Map<String,Object> getPrice(HttpServletRequest request) throws Exception{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		int total= 0;
		int depPrice = 0;
		int depFuelPrice = 0;
		int depAirportPrice =0;
		
		String flightName = request.getParameter("flightName");
		String goToComeCheck = request.getParameter("goToComeCheck");
		
		FlightInfoDTO getPrice = bookService.passengerCharge(flightName);
		
		if(goToComeCheck.equals("go")) {
			depPrice = getPrice.getDepPrice1(); 
			depFuelPrice = getPrice.getDepFuelPrice1();
			depAirportPrice = getPrice.getDepAirportPrice1();
			 total = depPrice+ depFuelPrice+depAirportPrice;
			
		}
		if(goToComeCheck.equals("come")){
			
				depPrice = getPrice.getDepPrice1(); 
				depFuelPrice = getPrice.getDepFuelPrice1();
				depAirportPrice = getPrice.getDepAirportPrice1();
				total = depPrice+ depFuelPrice+depAirportPrice;
			
		}
		
		
		System.out.println(">>>>"+total);
		
		
	
		Map<String,Object> returnData = new HashMap<>();
		returnData.put("depPrice", depPrice);
		returnData.put("depFuelPrice", depFuelPrice);
		returnData.put("depAirportPrice",depAirportPrice);
		returnData.put("total",total);
		return returnData;
	}
	
	
	@RequestMapping(value="/book/stepForm2.do")
	public ModelAndView step2Form(HttpServletRequest request) {
		
		BookDTO bookDTO = new BookDTO();
		
		/*FlightInfoDTO dto = new FlightInfoDTO();
		FlightInfoDTO dto2 = new FlightInfoDTO();*/
		/*dto.setFlightName1(request.getParameter("hiddenGetChecked"));
		dto2.setFlightName1(request.getParameter("hiddenGetChecked2"));
		String goFlightName = dto.getFlightName1();
		String comeFlightName = dto2.getFlightName1();*/
		
		String goFlightName = request.getParameter("hiddenGetChecked");
		String comeFlightName= request.getParameter("hiddenGetChecked2");
		
		
		System.out.println(goFlightName);
		System.out.println(comeFlightName);
		//dayGo
		FlightInfoDTO getPrice	=	bookService.passengerCharge(goFlightName);
		//dayCome
		FlightInfoDTO getPrice2	=	bookService.passengerCharge(comeFlightName);
		
		
		int totalDepPrice = getPrice.getDepPrice1()+getPrice2.getDepPrice1();
		int totalDepFuelPrice = getPrice.getDepFuelPrice1()+getPrice2.getDepFuelPrice1(); 
		int totalDepAirportPrice = getPrice.getDepAirportPrice1()+getPrice2.getDepAirportPrice1();
		
		int finalPrice = totalDepPrice+totalDepFuelPrice+totalDepAirportPrice;
		
		bookDTO.setFlightName1(goFlightName);//노선1편명
		bookDTO.setFlightName2(comeFlightName);//노선2편명
		bookDTO.setTotalPrice(finalPrice);//총항공운임료-->이건 기내식외 좌석추가요금까지 넣어져야함
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("memId");
		MemberDTO memberDTO = memberService.getMember(id);
		
		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("bookDTO", bookDTO);
		modelAndView.addObject("totalDepPrice", totalDepPrice);
		modelAndView.addObject("totalDepFuelPrice", totalDepFuelPrice);
			modelAndView.addObject("totalDepAirportPrice", totalDepAirportPrice);
			modelAndView.addObject("finalPrice", finalPrice);
			modelAndView.addObject("getPrice", getPrice);
			modelAndView.addObject("getPrice2", getPrice2);
		modelAndView.addObject("memberDTO", memberDTO);
		modelAndView.addObject("display", "../book/stepForm2.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
		
	}
	
	
	
	
	
	
	
	
	@RequestMapping(value="/book/step3.do")
	public ModelAndView step3(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../book/step3.jsp");
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
