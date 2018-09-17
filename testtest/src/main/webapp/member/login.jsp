<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="member.bean.MemberDTO"%>
<%@page import="member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript">
	window.onload = function(){
		if(${sessionScope.memId!=null}){
			alert("로그인 성공")
			location.href="../main/main.jsp"
		}else{
			alert("로그인 실패.")
			history.back(-1);
		}
	}
</script>
</head>
<body>
</body>
</html>
















