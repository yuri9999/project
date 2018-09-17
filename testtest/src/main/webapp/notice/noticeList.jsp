<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>

</head>
<body>
<table id="noticeList" border="1">
	<c:forEach var="noticeDTO" items="${requestScope.list }">
		<tr>
			<td class="tablecontent">${noticeDTO.seq }</td>
			<td class="tablecontent"><a href="../notice/noticeView.do?seq=${noticeDTO.seq }">${noticeDTO.subject }</a></td>
			<td>${noticeDTO.id }</td>
			<td>${noticeDTO.logtime }</td>	
			<td>${noticeDTO.hit }</td>	
		</tr>
	</c:forEach>
	<tr>
		<td colspan="6">
			<c:if test="${startPage > 3 }">
				[<a class="page" href="noticeList.do?pg=${startPage-1 }">이전</a>]
			</c:if>
			<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
				<c:if test="${pg==i }">
					[<a class="current" href="noticeList.do?pg=${i }">${i }</a>]
				</c:if>
				<c:if test="${pg!=i }">
					[<a class="page" href="noticeList.do?pg=${i }">${i }</a>]
				</c:if>
			</c:forEach>
			<c:if test="${endPage < totalP }">
				[<a class="page" href="noticeList.do?pg=${endPage+1 }">다음</a>]
			</c:if>
		</td>
	</tr>
	<tr>
		<td colspan="6">
			<input type="button" value="이벤트 게시" onclick="location.href='../notice/noticeWriteForm.do'">
		</td>
	</tr>
</table>
</body>
</html>