<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진행중인 이벤트</title>
<style type="text/css">
#eventList{
	width: 1200px;
	height: 1000px;
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
#eventListC{
	margin-top: 40px;
}
#eventListC .eventContent{
	padding: 20px;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
}
#eventListC img{
	width: 300px;
	height: 100px;
	border: 1px solid #ccc;
}
#eventPaging{
	text-align: center;
	height: 60px;
}
#eventPaging .page{
	border: 1px solid #ccc;
	width: 35px;
	height: 35px;
	list-style: none;
	display: inline-block;
}
#eventPaging .page a{
	vertical-align: inherit;
	text-decoration: none;
	font-weight:bold;
	color: #4B1152;
	padding-top: 3px;
}
#eventPaging .currentPage{
	border: 1px solid #ccc;
	width: 35px;
	height: 35px;
	list-style: none;
	display: inline-block;
	background-color: #4B1152;
}
#eventPaging .currentPage a{
	vertical-align: inherit;
	text-decoration: none;
	font-weight:bold;
	color: white;
	padding-top: 3px;
}

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
<div id="eventList">
<h3 id="eventNavi">JAJUAIR &gt; 이벤트/새소식 &gt; 진행중인 이벤트(목록)<img alt="" src="../img/navimg.png"></h3><br>
<h1>진행중인 이벤트</h1>
<table id="eventListC">
	<c:forEach var="eventDTO" items="${requestScope.list }">
		<tr>
			<td class="eventContent" align="center">
				<a href="../event/eventView.do?seq=${eventDTO.seq }"><img src="../storage/${eventDTO.image }"></a>
			</td>
			<td class="eventContent" align="left">${eventDTO.subject }</td>
			<td class="eventContent" align="left">${eventDTO.logtime }</td>
		</tr>
	</c:forEach>
	<tr id="eventPaging">
		<td colspan="6">
		<ul>
			<c:if test="${startPage > 3 }">
				<li class="page"><a href="eventListC.do?pg=${startPage-1 }">&lt;</a></li>
			</c:if>
			<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
				<c:if test="${pg==i }">
					<li class="currentPage"><a href="eventListC.do?pg=${i }">${i }</a></li>
				</c:if>
				<c:if test="${pg!=i }">
					<li class="page"><a href="eventListC.do?pg=${i }">${i }</a></li>
				</c:if>
			</c:forEach>
			<c:if test="${endPage < totalP }">
				<li class="page"><a href="eventListC.do?pg=${endPage+1 }">&gt;</a></li>
			</c:if>
		</ul>
		</td>
	</tr>
	<c:if test="${sessionScope.memId=='admin' }">
	<tr>
		<td colspan="6">
			<input type="button" value="이벤트 게시" onclick="location.href='../event/eventWriteForm.do'" class="mybutton">
		</td>
	</tr>
	</c:if>
</table>
</div>
</body>
</html>