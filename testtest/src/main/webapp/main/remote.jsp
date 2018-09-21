<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#remote{
	position: fixed;
	top: 400px;
	right: 30px;
	background-color: white;
}
#remote table{
	border: 1px solid #ccc;
	width: 200px;
	height: 300px;
}
#remote table .Tcontroller{
	height: 50px;
 	text-align: center;
 	border: 1px solid #ccc;
 	background-color: #4B1152;
}
#remote table .Bcontroller{
	height: 50px;
 	text-decoration: none;
 	text-align: center;
 	border: 1px solid #ccc;
 	background-color: #4B1152;
}
#remote table .info{
	text-align: center;
	font-size: 15px;
	line-height: 2.5em;
	text-align: left;
}
#remote table .info p{
	margin-left: 10px;
}
#remote table .info p span{
	margin-left: 10px;
	font-weight: bold;
	color: #4B1152;
}
#remote table .remoteTbutton{
	text-decoration: none;
	color: white;
}
#remote table .remoteBbutton{
	text-decoration: none;
	color: white;
}
</style>
</head>
<body>
<div id="remote">
	<table>
		<tr>
			<td colspan="2" class="Tcontroller"><a href="#" class="remoteTbutton">Top</a></td>
		</tr>
		<tr>
			<td colspan="2" class="info">
				<c:if test="${sessionScope.memId!=null }">
					<p><span>${sessionScope.memName }</span>님 환영합니다.</p>
					<p>누적포인트 : <span>${memberDTO.accumulatePoint } P</span></p>
					<p>사용포인트 : <span>${memberDTO.usedPoint } P</span></p>
					<p>보유포인트 : <span>${memberDTO.totalPoint } P</span></p>
				</c:if>
				<c:if test="${sessionScope.memId==null }">
					<p>로그인을 해주세요</p>
				</c:if>
			</td>
		</tr>
		<tr>
			<td class="Bcontroller" width="95"><a href="javascript:history.back(-1)" class="remoteBbutton">이전</a></td>
			<td class="Bcontroller" width="95"><a href="javascript:history.go(1)" class="remoteBbutton">앞으로</a></td>
		</tr>
	</table>
</div>
</body>
</html>