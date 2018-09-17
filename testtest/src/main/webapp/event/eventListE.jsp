<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>종료된 이벤트</title>
<style type="text/css">
#eventListE img{
	width: 250px;
	height: 80px;
}
</style>
</head>
<body>
<table id="eventListE" border="1">
	<c:forEach var="eventDTO" items="${requestScope.list }">
		<tr>
			<td class="tablecontent">${eventDTO.seq }</td>
			<td class="tablecontent"><a href="../event/eventView.do?seq=${eventDTO.seq }"><img src="../storage/${eventDTO.image }"></a></td>
			<td class="tablecontent">${eventDTO.subject }</td>
			<td class="tablecontent">${eventDTO.id }</td>
			<td class="tablecontent">${eventDTO.logtime }</td>	
			<td class="tablecontent">${eventDTO.hit }</td>	
		</tr>
	</c:forEach>
</table>
</body>
</html>