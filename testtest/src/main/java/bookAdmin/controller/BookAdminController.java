package bookAdmin.controller;

import java.io.UnsupportedEncodingException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bookAdmin.bean.FlightInfoDTO;

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
		String arrDate1 = request.getParameter("arrDate1");
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
		flightInfoDTO.setArrDate1(arrDate1);
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
