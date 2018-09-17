<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.mybutton{
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
<table>
	<tr>
		<td>
			<img src="../storage/${eventDTO.image }">
		</td>
	</tr>
	<tr>
		<td>
			${eventDTO.subject }
		</td>
	</tr>
	<tr>
		<td>
			${eventDTO.content }
		</td>
	</tr>
	<tr>
		<td>
			${eventDTO.logtime }
		</td>
	</tr>
	<tr>
		<td>
			<input type="button" value="이벤트 수정" onclick="location.href='eventModifyForm.do?seq=${eventDTO.seq}'" class="mybutton">
			<input type="button" value="이벤트 삭제" onclick="location.href='eventDelete.do?seq=${eventDTO.seq}'" class="mybutton">
			<input type="button" value="이전으로" onclick="history.back()" class="mybutton">
		</td>
	</tr>
</table>
</body>
</html>