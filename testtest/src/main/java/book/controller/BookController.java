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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;
import bookAdmin.bean.FlightInfoDTO;
import member.bean.MemberDTO;
import member.controller.MemberService;

@Controller
public class BookController {
	BookDTO bookDTO = new BookDTO();
	
	@Autowired
	MemberService memberService;
	@Autowired
	BookService bookService;
	
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
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("id", id);
		modelAndView.addObject("display", "../book/stepForm1.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/book/step1.do")
	public Map<String,Object> step1(HttpServletRequest request) throws Exception{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		System.out.println("여기~");
		
		
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
					
					
					//확인용 test --> 나중에 지우기
					System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
					System.out.println(flightInfoDTO.getFlightName1());
					System.out.println(flightInfoDTO.getDepTime1());
					System.out.println(flightInfoDTO.getArrTime1());
				}
		
				bookDTO.setDep1(dayGo);
				System.out.println(bookDTO.getDep1()+"<<<<<<<<<<<<<<<<<<<<<<<");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("memId");
		MemberDTO memberDTO = memberService.getMember(id);
		
		Map<String,Object> returnData = new HashMap<>();
		returnData.put("dayGo", dayGo);
		returnData.put("dayCome", dayCome);
		returnData.put("bookDTO", bookDTO);
		returnData.put("arrName", arrName);
		returnData.put("depName", depName);
		returnData.put("list", list);
		returnData.put("id", id);
		returnData.put("flightInfoDTO",dto);
		returnData.put("list2", list2);
		returnData.put("memberDTO", memberDTO);
		System.out.println("map>>"+returnData);
		return returnData;
		
		
	}
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/book/getPrice.do")
	public Map<String,Object> getPrice(HttpServletRequest request) throws Exception{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String flightName = request.getParameter("flightName");
		String goToComeCheck = request.getParameter("goToComeCheck");
		String test = request.getParameter("test");
		String[] splitTest = test.split("/");
		String test1 = splitTest[0];
		String test2 = splitTest[1];
		
		//dayGo
		FlightInfoDTO getPrice = null;	
		
		//dayCome
		FlightInfoDTO getPrice2 = null;	
		
		

		if(test2.equals("go")){
			getPrice =	bookService.passengerCharge(test1);
		} 
		if(goToComeCheck.equals("come")) {
			getPrice2 =	bookService.passengerCharge(flightName);
		}
		
		
		Map<String,Object> returnData = new HashMap<>();
		returnData.put("list",getPrice);
		returnData.put("list2",getPrice2);
		return returnData;
	}
	
	
	@RequestMapping(value="/book/stepForm2.do")
	public ModelAndView stepForm2(HttpServletRequest request ) {
		BookDTO bookDTO = new BookDTO();
		String depName = request.getParameter("hdep");
		String arrName = request.getParameter("harr");
		String dayGoAndDateGo1 = request.getParameter("dayGoAndDateGo1");//구간1Go 사이드바 날짜 요일
		String dayGoAndDateCome1 = request.getParameter("dayGoAndDateCome1");
		String dayGoAndDateGo2 = request.getParameter("dayGoAndDateGo2");//구간2
		String dayGoAndDateCome2 = request.getParameter("dayGoAndDateCome2");
		
		
		
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
		bookDTO.setAge("성인");//성인구분
		bookDTO.setNop(1);//구매티켓수(나중에 count Sql문 작성)
		bookDTO.setAirportName1(depName); //출발지
		bookDTO.setAirportName2(arrName);//도착지
		
		String dateGo1 ="";  
		String dateGo2= ""; 
		String dateGo3 = "";
		
	
		
		
		
		System.out.println("날짜 합치기"+dateGo1+dateGo2+" , "+dateGo1+dateGo3);
		
		
		//bookDTO dep1 dep2 ar1 ar2 별로 값 넣기 
		if(!dayGoAndDateGo1.trim().equals("")) {
			dateGo1 = dayGoAndDateGo1.substring(0,13); //날짜
			dateGo2 = dayGoAndDateGo1.substring(13, 18); //가는시간
			dateGo3 = dayGoAndDateGo1.substring(19, 24); //도착시간
			
			String Go= dateGo1 + dateGo2;
			String Go2= dateGo1 + dateGo3;
			
			bookDTO.setDep1(Go); 
			bookDTO.setAr1(Go2); 
		}else if(!dayGoAndDateGo2.trim().equals("")) {
			dateGo1 = dayGoAndDateGo2.substring(0,13); 
			dateGo2 = dayGoAndDateGo2.substring(13, 18);
			dateGo3 = dayGoAndDateGo2.substring(19, 24);
			
			String Go= dateGo1 + dateGo2;
			String Go2= dateGo1 + dateGo3;
			
			bookDTO.setDep1(Go); 
			bookDTO.setAr1(Go2); 
		}
		if(!dayGoAndDateCome1.trim().equals("")) {
			dateGo1 = dayGoAndDateCome1.substring(0,13); 
			dateGo2 = dayGoAndDateCome1.substring(13, 18);
			dateGo3 = dayGoAndDateCome1.substring(19, 24);
			
			String Go= dateGo1 + dateGo2;
			String Go2= dateGo1 + dateGo3;
			
			
			bookDTO.setDep2(Go); 
			bookDTO.setAr2(Go2); 
		}else if(!dayGoAndDateCome2.trim().equals("")) {
			dateGo1 = dayGoAndDateCome2.substring(0,13); 
			dateGo2 = dayGoAndDateCome2.substring(13, 18);
			dateGo3 = dayGoAndDateCome2.substring(19, 24);
			
			String Go= dateGo1 + dateGo2;
			String Go2= dateGo1 + dateGo3;
			
			bookDTO.setDep2(Go); 
			bookDTO.setAr2(Go2); 
		}
		
		
		
		
		System.out.println(bookDTO.toString());
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("memId");
		MemberDTO memberDTO = memberService.getMember(id);
		/*
		System.out.println("------>"+bookDTO.getFlightName1());
		bookDTO = bookService.getBookOne(id);
		System.out.println("------>"+bookDTO.getAirportName1());*/
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("depName", depName);
		modelAndView.addObject("arrName", arrName);
		
		modelAndView.addObject("dayGoAndDateGo1", dayGoAndDateGo1);
		modelAndView.addObject("dayGoAndDateCome1", dayGoAndDateCome1);
		modelAndView.addObject("dayGoAndDateGo2", dayGoAndDateGo2);
		modelAndView.addObject("dayGoAndDateCome2", dayGoAndDateCome2);
		
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

		
	@RequestMapping(value="/book/step04.do",method=RequestMethod.POST)
	public ModelAndView step04(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String id ="";
		if((String) session.getAttribute("memId")!=null) {
			id = (String) session.getAttribute("memId");
		}else {
			id = "notLogin";
		}
		
		MemberDTO memberDTO = memberService.getMember(id);
		modelAndView.addObject("memberDTO", memberDTO);
		
		
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
		ModelAndView modelAndView = new ModelAndView();
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String id ="";
		if((String) session.getAttribute("memId")!=null) {
			id = (String) session.getAttribute("memId");
		}else {
			id = "notLogin";
		}
		
		MemberDTO memberDTO = memberService.getMember(id);
		modelAndView.addObject("memberDTO", memberDTO);
		String dep = bookDTO.getAirportName1();
		String arr = bookDTO.getAirportName2();
		String dayGo = bookDTO.getDep1();
		String dayCome = bookDTO.getAr1();
		String dayGo2 = bookDTO.getDep2();
		String dayCome2 = bookDTO.getAr2();
		String adult = bookDTO.getAge();
		int seatPrice1 = 0;
		try {
			seatPrice1 = Integer.parseInt(request.getParameter("seatPrice1"));
		} catch (NumberFormatException e) {
			seatPrice1 = 0;
		}
		
		String seatName1;
		try {
			seatName1 = request.getParameter("seatName1");
		} catch (Exception e) {
			seatName1 = null;
		} 
		
		String flightName2 = bookDTO.getFlightName2();
		String memName = (String)session.getAttribute("memName");
		
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
		modelAndView.addObject("dayGo2", dayGo2);
		modelAndView.addObject("dayCome2", dayCome2);
		modelAndView.addObject("adult", adult);
		modelAndView.addObject("seatName1", seatName1);
		modelAndView.addObject("seatPrice1", seatPrice1);
		modelAndView.addObject("memName", memName);
		
		modelAndView.setViewName("../book/selectSeat2.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/book/selectSeat.do",method=RequestMethod.GET)
	public ModelAndView selectSeat(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String id ="";
		if((String) session.getAttribute("memId")!=null) {
			id = (String) session.getAttribute("memId");
		}else {
			id = "notLogin";
		}
		
		MemberDTO memberDTO = memberService.getMember(id);
		modelAndView.addObject("memberDTO", memberDTO);
		
		String dep = bookDTO.getAirportName1();
		String arr = bookDTO.getAirportName2();
		String dayGo = bookDTO.getDep1();
		String dayCome = bookDTO.getAr1();
		String dayGo2 = bookDTO.getDep2();
		String dayCome2 = bookDTO.getAr2();
		String adult = bookDTO.getAge();
		String memName = (String)session.getAttribute("memName");
		String flightName1 = bookDTO.getFlightName1();
		
		System.out.println(dep);
		System.out.println(arr);
		System.out.println(dayGo);
		System.out.println(dayCome);
		System.out.println(adult);
		System.out.println(memName);
		
		modelAndView.addObject("dep", dep);
		modelAndView.addObject("arr", arr);
		modelAndView.addObject("dayGo", dayGo);
		modelAndView.addObject("dayCome", dayCome);
		modelAndView.addObject("dayGo2", dayGo2);
		modelAndView.addObject("dayCome2", dayCome2);
		modelAndView.addObject("adult", adult);
		modelAndView.addObject("memName", memName);
		
		modelAndView.setViewName("../book/selectSeat.jsp");
		return modelAndView;
	}
	
	/**
	    * bookDTOBookDTO  정보 담은거 예
	    * [seq=0, id=test, koreanName=테스트, englishName=test, birthday=2018-09-18, passportNum=m1234, nation=한국, code=null, 
	    * flightName1=IN1111, flightName2=IN0011, airportName1=인천(ICN), airportName2=다낭(DAD),
	    *  dep1=2018-11-11(일)13:40, ar1=2018-11-11(일)18:20, 
	    *  dep2=2018-11-13(화)15:40, ar2=2018-11-13(화)18:20, 
	    *  age=성인, 
	    *  totalPrice=380000, 
	    *  nop=1, luggage=0, seatName1=null, seatName2=null, seatPrice1=0, seatPrice2=0, seat=null, eatery=null, bookTime=null]

	    * */
	@RequestMapping(value="/book/step03.do",method=RequestMethod.POST)
	public ModelAndView bookStep03(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		/** 사이드바 사이드바 이름,아이디부분*/
        HttpSession session = request.getSession();
        String name = (String)session.getAttribute("memName"); 
        String id = (String)session.getAttribute("memId");

        /**사이드바 출발지,도착지 이름*/
        String depName= bookDTO.getAirportName1(); 
        String arrName= bookDTO.getAirportName2();
        /**사이드바 날짜+ 출발시간~도착시간 */
        //스텝2에서 hidden으로 넘겨주는 값
          String dayGoAndDateGo1 = request.getParameter("dayGoAndDateGo1"); //2018-11-11(일)13:40~18:20 이렇게 통으로 담겨있음
          String dayGoAndDateGo2 = request.getParameter("dayGoAndDateGo2");
          String dayGoAndDateCome1 = request.getParameter("dayGoAndDateCome1");//2018-11-13(화)15:40~18:20 이렇게 통으로 담겨있음
          String dayGoAndDateCome2 = request.getParameter("dayGoAndDateCome2");
          String flightName1 = request.getParameter("flightName1");
          String flightName2 = request.getParameter("flightName2");
          
          /** 스텝2에서 합쳐저서 보낸 금액*/
          String totalDepPrice = request.getParameter("totalDepPrice"); // 비행기운임요금
          String totalDepFuelPrice = request.getParameter("totalDepFuelPrice"); //유류할증료
          String totalDepAirportPrice = request.getParameter("totalDepAirportPrice"); //공항시설이용료
          String finalPrice = request.getParameter("finalPrice"); //총금액 --> 여기서 나머지 금액 더하시면 될꺼같아요
          
          System.out.println("bookDTO"+bookDTO); //확인용
          
          //전진씨 코드
          /*System.out.println("arrName"+arrName);*/
          /* String dep = request.getParameter("start");
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
           bookDTO.setDep1(dayGo);
           bookDTO.setAr1(dayCome);
           bookDTO.setAge(adult);
           
           modelAndView.addObject("dep", dep);
           modelAndView.addObject("arr", arr);
           modelAndView.addObject("dayGo", dayGo);
           modelAndView.addObject("dayCome", dayCome);
           modelAndView.addObject("adult", adult);
           modelAndView.addObject("kid", kid);
           modelAndView.addObject("baby", baby);*/
        
          bookDTO.setAirportName1(depName);
          bookDTO.setAirportName2(arrName);
          bookDTO.setDep1(dayGoAndDateGo1);
          bookDTO.setDep2(dayGoAndDateGo2);
          bookDTO.setAr1(dayGoAndDateCome1);
          bookDTO.setAr2(dayGoAndDateCome2);
          bookDTO.setFlightName1(flightName1);
          bookDTO.setFlightName2(flightName2);
        
          modelAndView.addObject("depName", depName);
          modelAndView.addObject("arrName", arrName);
          modelAndView.addObject("dayGoAndDateGo1", dayGoAndDateGo1);
          modelAndView.addObject("dayGoAndDateGo2", dayGoAndDateGo2);
          modelAndView.addObject("dayGoAndDateCome1", dayGoAndDateCome1);
          modelAndView.addObject("dayGoAndDateCome2", dayGoAndDateCome2);
          modelAndView.addObject("totalDepPrice", totalDepPrice);
          modelAndView.addObject("totalDepFuelPrice", totalDepFuelPrice);
          modelAndView.addObject("totalDepAirportPrice", totalDepAirportPrice);
          modelAndView.addObject("finalPrice", finalPrice);
        
          modelAndView.addObject("memId", id);
          modelAndView.addObject("memName", name);
          modelAndView.addObject("display", "../book/step03.jsp");
          modelAndView.setViewName("../main/main.jsp");
          return modelAndView;      
	}

	
	@RequestMapping(value="/book/goAvail.do",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView bookFillForm(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String id ="";
		if((String) session.getAttribute("memId")!=null) {
			id = (String) session.getAttribute("memId");
		}else {
			id = "notLogin";
		}
		
				
		MemberDTO memberDTO = memberService.getMember(id);
		modelAndView.addObject("memberDTO", memberDTO);
		
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

