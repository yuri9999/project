<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript" src= "../script/memberScript.js">
</script>
</head>
<body>
<div align="center">
	<form action="login.do" method="post" name="loginForm">
		<table border="1">
			<tr>
				<td width="70px" align="center">아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td width="70px" align="center">비밀번호</td>
				<td><input type="password" name="pwd" style="width: 100%"></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="button" value="로그인" onclick="checkLogin()">
					<input type="button" value="회원가입" onclick="location.href='writeForm.do'">
				</td>
			</tr>
		</table>
	</form>
	<a href="../main/index.jsp">메인화면</a>
</div>
</body>
</html>