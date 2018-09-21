package qna.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import notice.dao.NoticeDAO;
import qna.bean.QnaDTO;
import qna.dao.QnaDAO;

@Controller
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@RequestMapping(value="/qna/qnaMain.do")
	public ModelAndView qnaMain(HttpServletRequest request, QnaDAO qnaDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int pg = Integer.parseInt(request.getParameter("pg"));
		HttpSession session = request.getSession();
		String koreanName = "";
		if((String) session.getAttribute("memName")!=null) {
			koreanName = (String) session.getAttribute("memName");
		}else {
			koreanName = "notLogin";
		}
		
		int endNum = pg*35;
		int startNum = endNum-34;
		
		List<Object> list = qnaService.qnaList(startNum, endNum);
		int totalA = qnaService.getTotalA("admin");
		int totalC = qnaService.getTotalC(koreanName);
		
		int endNumC = pg*3;
		int startNumC = endNumC-2;
		int totalP = (totalA+34)/35;
		int totalPC = (totalC+2)/3;
		
		List<Object> listC = qnaService.qnaList(startNum, endNum);
		
		int startPage = (pg-1)/3*3 + 1;
		int endPage = startPage + 2;
		if(totalP < endPage) {endPage = totalP;}
		if(totalPC < endPage) {endPage = totalPC;}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.addObject("list", list);
		modelAndView.addObject("totalPC",totalPC);
		modelAndView.addObject("listC", listC);
		modelAndView.addObject("display", "../qna/qnaMain.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/qna/qnaWriteForm.do")
	public ModelAndView qnaWriteForm(HttpServletRequest request, QnaDAO qnaDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../qna/qnaWriteForm.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/qna/qnaWrite.do")
	public ModelAndView qnaWrite(HttpServletRequest request, QnaDAO qnaDAO) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		
		QnaDTO qnaDTO = new QnaDTO();
		
		ModelAndView modelAndView = new ModelAndView();
		
		String koreanName = request.getParameter("koreanName");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String code1 = request.getParameter("code1");
		String code2 = request.getParameter("code2");
		String reservNum = request.getParameter("reservNum");
		String boardName = request.getParameter("boardName");
		String englishName = request.getParameter("englishName");
		String boardDate = request.getParameter("boardDate");
		String airportName1 = request.getParameter("airportName1");
		String airportName2 = request.getParameter("airportName2");
		String goodsName = request.getParameter("goodsName");
		String goodsColor = request.getParameter("goodsColor");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		String answer = request.getParameter("answer");
		
		qnaDTO.setKoreanName(koreanName);
		qnaDTO.setTel1(tel1);
		qnaDTO.setTel2(tel2);
		qnaDTO.setTel3(tel3);
		qnaDTO.setEmail1(email1);
		qnaDTO.setEmail2(email2);
		qnaDTO.setCode1(code1);
		qnaDTO.setCode2(code2);
		qnaDTO.setReservNum(reservNum);
		qnaDTO.setBoardName(boardName);
		qnaDTO.setEnglishName(englishName);
		qnaDTO.setBoardDate(boardDate);
		qnaDTO.setAirportName1(airportName1);
		qnaDTO.setAirportName2(airportName2);
		qnaDTO.setGoodsName(goodsName);
		qnaDTO.setGoodsColor(goodsColor);
		qnaDTO.setSubject(subject);
		qnaDTO.setContent(content);
		qnaDTO.setAnswer(answer);
		
		
		int result = qnaService.qnaWrite(qnaDTO);
		
		modelAndView.addObject("result", result);
		modelAndView.addObject("display","../qna/qnaWrite.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;		
	}
	
	@RequestMapping(value="/qna/qnaView.do")
	public ModelAndView qnaView(HttpServletRequest request, QnaDAO qnaDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");

		int seq = Integer.parseInt(request.getParameter("seq"));
		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO = qnaService.qnaView(seq);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("qnaDTO",qnaDTO);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("display", "../qna/qnaView.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/qna/qnaModifyForm.do")
	public ModelAndView qnaModifyForm(HttpServletRequest request, QnaDAO qnaDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int seq = Integer.parseInt(request.getParameter("seq"));
		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO = qnaService.qnaModifyForm(seq);		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("qnaDTO",qnaDTO);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("display", "../qna/qnaModifyForm.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/qna/qnaModify.do")
	public ModelAndView qnaModify(HttpServletRequest request, QnaDAO qnaDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		QnaDTO qnaDTO = new QnaDTO();
		int seq = Integer.parseInt(request.getParameter("seq"));
		String koreanName = request.getParameter("koreanName");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String code1 = request.getParameter("code1");
		String code2 = request.getParameter("code2");
		String reservNum = request.getParameter("reservNum");
		String boardName = request.getParameter("boardName");
		String englishName = request.getParameter("englishName");
		String boardDate = request.getParameter("boardDate");
		String airportName1 = request.getParameter("airportName1");
		String airportName2 = request.getParameter("airportName2");
		String goodsName = request.getParameter("goodsName");
		String goodsColor = request.getParameter("goodsColor");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		String answer = request.getParameter("answer");
		
		qnaDTO.setSeq(seq);
		qnaDTO.setKoreanName(koreanName);
		qnaDTO.setTel1(tel1);
		qnaDTO.setTel2(tel2);
		qnaDTO.setTel3(tel3);
		qnaDTO.setEmail1(email1);
		qnaDTO.setEmail2(email2);
		qnaDTO.setCode1(code1);
		qnaDTO.setCode2(code2);
		qnaDTO.setReservNum(reservNum);
		qnaDTO.setBoardName(boardName);
		qnaDTO.setEnglishName(englishName);
		qnaDTO.setBoardDate(boardDate);
		qnaDTO.setAirportName1(airportName1);
		qnaDTO.setAirportName2(airportName2);
		qnaDTO.setGoodsName(goodsName);
		qnaDTO.setGoodsColor(goodsColor);
		qnaDTO.setSubject(subject);
		qnaDTO.setContent(content);
		qnaDTO.setAnswer(answer);
		int result = 0;
		result = qnaService.qnaModify(qnaDTO);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("display", "../qna/qnaModify.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/qna/qnaAnswerForm.do")
	public ModelAndView qnaAnswerForm(HttpServletRequest request, QnaDAO qnaDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int seq = Integer.parseInt(request.getParameter("seq"));
		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO = qnaService.qnaAnswerForm(seq);		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("qnaDTO",qnaDTO);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("display", "../qna/qnaAnswerForm.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/qna/qnaAnswer.do")
	public ModelAndView qnaAnswer(HttpServletRequest request, QnaDAO qnaDAO) throws Exception {
		request.setCharacterEncoding("UTF-8");
		QnaDTO qnaDTO = new QnaDTO();
		int seq = Integer.parseInt(request.getParameter("seq"));
		String koreanName = request.getParameter("koreanName");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		String answer = request.getParameter("answer");
		
		qnaDTO.setSeq(seq);
		qnaDTO.setKoreanName(koreanName);
		qnaDTO.setTel1(tel1);
		qnaDTO.setTel2(tel2);
		qnaDTO.setTel3(tel3);
		qnaDTO.setEmail1(email1);
		qnaDTO.setEmail2(email2);
		qnaDTO.setSubject(subject);
		qnaDTO.setContent(content);
		qnaDTO.setAnswer(answer);
		int result = 0;
		result = qnaService.qnaAnswer(qnaDTO);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("display", "../qna/qnaAnswer.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/qna/qnaDelete.do")
	public ModelAndView qnaDelete(HttpServletRequest request, QnaDAO qnaDAO) {
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		int result = 0;
		result = qnaService.qnaDelete(seq);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("display", "../qna/qnaDelete.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
}
