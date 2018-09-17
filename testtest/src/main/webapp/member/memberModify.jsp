<%@page import="member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.bean.MemberDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<script type="text/javascript">
window.onload = function() {
	if(${su > 0 }){
		alert("회원정보 수정 완료.");
		location.href="../main/main.jsp";
	}else{
		alert("회원정보 수정 실패.");
		history.back(-1);		
	}
}	
</script>
</head>
<body>

</body>
</html>










