<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진행중인 이벤트</title>
<style type="text/css">
#eventListC img{
	width: 250px;
	height: 80px;
}
</style>
</head>
<body>
<table id="eventListC" border="1">
	<c:forEach var="eventDTO" items="${requestScope.list }">
		<tr>
			<td class="tablecontent">${eventDTO.seq }</td>
			<td class="tablecontent"><a href="../event/eventView.do?seq=${eventDTO.seq }"><img src="../storage/${eventDTO.image }"></a></td>
			<td class="tablecontent">${eventDTO.subject }</td>
			<td>${eventDTO.id }</td>
			<td>${eventDTO.logtime }</td>	
			<td>${eventDTO.hit }</td>	
		</tr>
	</c:forEach>
	<tr>
		<td colspan="6">
			<c:if test="${startPage > 3 }">
				[<a class="page" href="eventListC.do?pg=${startPage-1 }">이전</a>]
			</c:if>
			<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
				<c:if test="${pg==i }">
					[<a class="current" href="eventListC.do?pg=${i }">${i }</a>]
				</c:if>
				<c:if test="${pg!=i }">
					[<a class="page" href="eventListC.do?pg=${i }">${i }</a>]
				</c:if>
			</c:forEach>
			<c:if test="${endPage < totalP }">
				[<a class="page" href="eventListC.do?pg=${endPage+1 }">다음</a>]
			</c:if>
		</td>
	</tr>
	<tr>
		<td colspan="6">
			<input type="button" value="이벤트 게시" onclick="location.href='../event/eventWriteForm.do'">
		</td>
	</tr>
</table>
</body>
</html>