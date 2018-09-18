<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>종료된 이벤트</title>
<style type="text/css">
#eventList{
	width: 1200px;
	height: 1200px;
	margin: auto;
}
#eventList #eventNavi{
	font-weight: normal;
	color: #353535;
}
#eventList h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
#eventListE{
	margin-top: 40px;
}
#eventListE .eventContent{
	padding: 20px;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
}
#eventListE img{
	width: 300px;
	height: 100px;
	border: 1px solid #ccc;
}
</style>
</head>
<body>
<div id="eventList">
<h3 id="eventNavi">JAJUAIR &gt; 이벤트/새소식 &gt; 종료된 이벤트(목록)</h3><br>
<h1>종료된 이벤트</h1>
<table id="eventListE">
	<c:forEach var="eventDTO" items="${requestScope.list }">
		<tr>
			<td class="eventContent" align="center">
				<a href="../event/eventView.do?seq=${eventDTO.seq }"><img src="../storage/${eventDTO.image }"></a>
			</td>
			<td class="eventContent" align="left">${eventDTO.subject }</td>
			<td class="eventContent" align="left">${eventDTO.logtime }</td>
		</tr>
	</c:forEach>
</table>
</div>
</body>
</html>