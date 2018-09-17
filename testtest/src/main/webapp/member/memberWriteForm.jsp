<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="../script/memberScript.js" ></script>
</head>
<body>
<form action="memberWrite.do" name="writeForm" method="post">
	<div align="center">
	<table border="1">
		<tr>
			<td width:="70px" align="center">아이디</td>
			<td>
			<input type="text" name="id">
			<input type="button" value="중복 체크" onclick="checkId()">
			</td>
		</tr>
		<tr>
			<td width:="70px" align="center">비밀번호</td>
			<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td width:="70px" align="center">재확인</td>
			<td><input type="password" name="repwd"></td>
		</tr>
		<tr>
			<td width:="70px" align="center">한글 이름</td>
			<td><input type="text" name="koreanName" placeholder="한글 이름"></td>
		</tr>
		<tr>
			<td width:="70px" align="center">영문 이름</td>
			<td><input type="text" name="englishName" placeholder="영문 이름"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td>
				<input type="text" name="birthday" placeholder="생년월일 8자리">
			</td>
		</tr>
		<tr>
			<td width:="70px" align="center">성별</td>
			<td>
			<input type="radio" name="gender" value="0" checked>남
			<input type="radio" name="gender" value="1">여
			</td>
		</tr>
		<tr>
			<td>여권번호</td>
			<td>
				<input type="text" name="passporNum" placeholder="여권번호">
			</td>
		</tr>
		<tr>
			<td>국적</td>
			<td>
				<input type="text" name="nation" placeholder="국적">
			</td>
		</tr>
		<tr>
			<td>거주 국가</td>
			<td>
				<input type="text" name="country" placeholder="거주 국가">
			</td>
		</tr>
		<tr>
			<td width:="70px"align="center">이메일</td>
			<td>
			<input type="text" name="email1">@
			<select name="email2">
				<option value="naver.com">naver.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="gmail.com">gmail.com</option>
			</select>
			</td>
		</tr>
		<tr>
			<td align="center">핸드폰</td>
			<td>
			<select name="tel2" style="width: 70px;">
				<option value="82">82대한민국</option>
				<option value="81">81일본</option>
				<option value="86">86중국</option>
				<option value="852">852홍콩</option>
				<option value="84">84베트남</option>
				<option value="66">66태국</option>
				<option value="886">886대만</option>
				<option value="60">60말레이시아</option>
				<option value="65">65싱가포르</option>
			</select>
			<select name="tel2" style="width: 70px;">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="019">019</option>
			</select>
			<input type="text" name="tel3">
			<input type="text" name="tel4">
			</td>
		</tr>
		<tr align="center">
			<td colspan="2">
			<input type="submit" value="회원가입">
			<input type="reset" value="다시 작성">
			</td>
		</tr>
	</table>
	<a href="../main/main.jsp">메인화면</a>
	</div>
</form>
</body>
</html>