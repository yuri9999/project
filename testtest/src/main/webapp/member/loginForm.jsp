<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript" src= "../script/memberScript.js"></script>
<style type="text/css">
#loginForm{
	width: 1200px;
	height: 800px;
	padding:0;
	margin-top: 150px;
	margin-left: 350px;
}
#loginForm form table{
	width: 650px;
	height: 250px;
	border: 1px solid #ccc;
}
.loginFormLeft{
	width: 250px;
	height: 80px;
	padding-left: 27px;
}
.loginFormLeft input{
	width: 220px;
	height: 40px;
}
.loginFormRight{
	margin:0;
	padding:0;
	width: 350px;
	border-left: 1px solid #ccc;
}
.loginFormRight img{
	width: 340px;
	height: 250px;
	margin-top: 6px;
	margin-left: 10px;
	padding: 0;
}
.mybutton{
	width: 130px;
	background-color: #4B1152;
	border: 1px solid #124d77;
	display: inline-block;
	color: white;
	font-family: arial;
	font-size: 15px;
	font-weight: nomal;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #154682;
}

.mybutton:hover {
	background-color: #4A0BA3;
}

.mybutton:active {
	position: relative;
	top: 1px;
}
</style>
</head>
<body>
<div align="center" id="loginForm">
	<form action="login.do" method="post" name="loginForm">
		<table>
			<tr>
				<td class="loginFormLeft"><input type="text" name="id" placeholder="아이디"></td>
				<td rowspan="3" class="loginFormRight"><img alt="로고" src="../img/biglogo.jpg"> </td>
			</tr>
			<tr>
				<td class="loginFormLeft"><input type="password" name="pwd" placeholder="비밀번호"></td>
			</tr>
			<tr align="center">
				<td>
					<input type="button" value="로그인" onclick="checkLogin()" class="mybutton">
					<input type="button" value="회원가입" onclick="location.href='memberWriteForm.do'" class="mybutton">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>