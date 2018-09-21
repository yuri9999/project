<%@page import="member.dao.MemberDAO"%>
<%@page import="member.bean.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	window.onload = function(){
		if(${su>0}){
			alert("회원가입이 성공적으로 완료되었습니다.")
			location.href="../member/loginForm.do"
		}else{
			alert("회원가입 실패.")
			history.back(-1);
		}
	}
</script>
</head>
<body>
</body>
</html>













