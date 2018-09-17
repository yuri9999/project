package member.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/member/loginForm.do")
	public ModelAndView loginForm(HttpServletRequest request, MemberDAO memberDAO) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../member/loginForm.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/member/login.do")public ModelAndView login(HttpServletRequest request, MemberDAO memberDAO) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		MemberDTO memberDTO = new MemberDTO();
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name =  memberService.login(id, pwd);
		HttpSession session = request.getSession();
		ModelAndView modelAndView = new ModelAndView();

		if(name!=null) {
			session.setAttribute("memId", id);
			session.setAttribute("memName", name);	
		}
		modelAndView.addObject("display", "../member/login.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/member/loginOK.do")
	public ModelAndView loginOK(HttpServletRequest request, MemberDAO memberDAO) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String name = (String)session.getAttribute("memName");
		String id = (String)session.getAttribute("memId");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("name", name);
		modelAndView.addObject("display", "../member/loginOK.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/member/loginFail.do")
	public ModelAndView loginFail(HttpServletRequest request, MemberDAO memberDAO) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../member/loginFail.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/member/logout.do")
	public ModelAndView logout(HttpServletRequest request, MemberDAO memberDAO) {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("memName");
		session.removeAttribute("memId");
		session.invalidate();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../member/logout.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/member/memberWriteForm.do")
	public ModelAndView memberWriteForm(HttpServletRequest request, MemberDAO memberDAO) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../member/memberWriteForm.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/member/memberWrite.do")
	public ModelAndView memberWrite(HttpServletRequest request, MemberDAO memberDAO) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String koreanName = request.getParameter("koreanName");
		String englishName = request.getParameter("englishName");
		String birthday = request.getParameter("birthday");
		String passportNum = request.getParameter("passportNum");
		String nation = request.getParameter("nation");
		String country = request.getParameter("country");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String tel4 = request.getParameter("tel4");
		
		// 데이터 전송하기
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId(id);
		memberDTO.setPwd(pwd);
		memberDTO.setKoreanName(koreanName);
		memberDTO.setEnglishName(englishName);
		memberDTO.setBirthday(birthday);
		memberDTO.setPassportNum(passportNum);
		memberDTO.setNation(nation);
		memberDTO.setCountry(country);
		memberDTO.setEmail1(email1);
		memberDTO.setEmail2(email2);
		memberDTO.setTel1(tel1);
		memberDTO.setTel2(tel2);
		memberDTO.setTel3(tel3);
		memberDTO.setTel4(tel4);
		
		// DB
		//MemberDAO memberDAO = new MemberDAO();
		int su = memberService.write(memberDTO);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("su", su);
		modelAndView.addObject("display", "../member/memberWrite.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	
	@RequestMapping(value="/member/memberModifyForm.do")
	public ModelAndView memberModifyForm(HttpServletRequest request, MemberDAO memberDAO) {
		String id = request.getParameter("id");
		//MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = memberService.getMember(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("memberDTO", memberDTO);
		modelAndView.addObject("display", "../member/memberModifyForm.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/member/memberModify.do")
	public ModelAndView memberModify(HttpServletRequest request, MemberDAO memberDAO) {
		//데이터 읽어오기
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		String koreanName = request.getParameter("koreanName");
		String englishName = request.getParameter("EnglishName");
		String birthday = request.getParameter("birthday");
		String passportNum = request.getParameter("passportNum");
		String nation = request.getParameter("nation");
		String country = request.getParameter("country");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String tel4 = request.getParameter("tel4");
		
		// 데이터 전송하기
		MemberDTO memberDTO = new MemberDTO();

		memberDTO.setKoreanName(koreanName);
		memberDTO.setEnglishName(englishName);
		memberDTO.setBirthday(birthday);
		memberDTO.setPassportNum(passportNum);
		memberDTO.setNation(nation);
		memberDTO.setCountry(country);
		memberDTO.setEmail1(email1);
		memberDTO.setEmail2(email2);
		memberDTO.setTel1(tel1);
		memberDTO.setTel2(tel2);
		memberDTO.setTel3(tel3);
		memberDTO.setTel4(tel4);
		
		//DB
		//MemberDAO memberDAO = new MemberDAO();
		int su = memberService.modify(memberDTO);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("su",su);
		modelAndView.addObject("display", "../member/memberModify.jsp");
		modelAndView.setViewName("../main/main.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/member/checkId.do")
	public ModelAndView isExistId(HttpServletRequest request, MemberDAO memberDAO) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String id = request.getParameter("id");
		//MemberDAO memberDAO = new MemberDAO();
		boolean exsist = memberService.isExistId(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("exsist", exsist);
		modelAndView.addObject("id", id);
		modelAndView.setViewName("../member/checkId.jsp");
		return modelAndView;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
