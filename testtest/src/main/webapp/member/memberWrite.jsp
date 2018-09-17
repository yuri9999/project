<%@page import="member.dao.MemberDAO"%>
<%@page import="member.bean.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<%-- 
이름 : <%=name %><br>
아이디 : <%=id %><br>
비밀번호 : <%=pwd %><br>
성별 : <%=gender %><br>
이메일 : <%=email %><br>
핸드폰 : <%=tel %><br>
주소 : <%=addr %>
--%>
<c:if test="${su==0 }">
	<p>회원가입 실패</p>		

</c:if>
<c:if test="${su>0 }">
	<p>회원가입 성공</p>
</c:if>
<a href="../main/index.jsp">메인화면</a>
</body>
</html>













