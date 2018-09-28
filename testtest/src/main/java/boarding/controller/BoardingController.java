package boarding.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import boarding.bean.BoardingDTO;

@Controller
public class BoardingController {
	@Autowired
	private BoardingService boardingService;
	
	@RequestMapping(value="/boarding/boarding.do")
	public ModelAndView boarding(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		String req = request.getParameter("req");
		String datepicker = request.getParameter("datepicker");
		String datepicker2 = request.getParameter("datepicker2");
		
		int pg = 0;
		try {
			pg = Integer.parseInt(request.getParameter("pg"));
		} catch (NumberFormatException e) {
			pg = 1;
		}
		int endNum = pg * 5;
		int startNum = endNum - 4;
		
		ArrayList<BoardingDTO> list = null;
		int totalA = 0;
		
		if(req == null) {
			list = boardingService.getBoardingList(startNum, endNum);
			totalA = boardingService.getTotalA();
		}else if(req.equals("1m")) {
			list = boardingService.getBoardingList1m(startNum, endNum);
			totalA = boardingService.getTotalA1m();
		}else if(req.equals("3m")) {
			list = boardingService.getBoardingList3m(startNum, endNum);
			totalA = boardingService.getTotalA3m();
		}else if(req.equals("6m")) {
			list = boardingService.getBoardingList6m(startNum, endNum);
			totalA = boardingService.getTotalA6m();
		}else if(req.equals("m")) {
			list = boardingService.getBoardingListM(startNum, endNum, datepicker, datepicker2);
			totalA = boardingService.getTotalAm(datepicker, datepicker2);
		}
		
		int totalP = (totalA + 4) / 5;
		
		int startPage = (pg - 1) / 3 * 3 + 1;
		int endPage = startPage + 2;
		if(endPage > totalP) endPage = totalP;
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
	 	modelAndView.addObject("startPage", startPage);
	 	modelAndView.addObject("endPage", endPage);
	 	modelAndView.addObject("totalP", totalP);
	 	modelAndView.addObject("pg", pg);
	 	modelAndView.addObject("req", req);
	 	modelAndView.addObject("datepicker", datepicker);
	 	modelAndView.addObject("datepicker2", datepicker2);
		modelAndView.addObject("display","../boarding/boarding.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}

}
