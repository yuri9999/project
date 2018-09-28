<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		width: 940px;
		height: 100%;
	}
</style>
</head>
<body>
	<table class="table">
		<tr align="center">
          <td>탑승일</td>
          <td>항공권 번호</td>
          <td>탑승자명</td>
          <td>구간</td>
          <td>결제금액</td>
          <td>적립포인트</td>
        </tr>
        <c:if test="${list == null }">
			<tr align="center">
				<td colspan="6">조회내역이 없습니다.</td>
			</tr>
		</c:if>
		<c:if test="${list != null }">
			<c:forEach var="boardingDTO" items="${list }">
				<tr align="center">
					<td>${boardingDTO.boardingDate }</td>
					<td>${boardingDTO.airnumber }</td>
					<td>${boardingDTO.name }</td>
					<td>${boardingDTO.dep } - ${boardingDTO.arr }</td>
					<td>${boardingDTO.price }</td>
					<td>${boardingDTO.point }</td>
				</tr>
			</c:forEach>
			<c:if test="${req == null }">
				<tr>
					<td colspan="6" align="center">
						<c:if test="${startPage > 3 }">
							[<a href="boarding.do?pg=${startPage - 1 }">이전</a>]
						</c:if>
						<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
						 	<c:if test="${pg == i }">
						 		[<a href="boarding.do?pg=${i }">${i }</a>]
						 	</c:if>
						 	<c:if test="${pg != i }">
						 		[<a href="boarding.do?pg=${i }">${i }</a>]
						 	</c:if>
					 	</c:forEach>
					 	<c:if test="${endPage < totalP }">
							[<a href="boarding.do?pg=${endPage + 1 }">다음</a>]
						</c:if>
					</td>
				</tr>
			</c:if>
			<c:if test="${req != null && req != 'm' }">
				<tr>
					<td colspan="6" align="center">
						<c:if test="${startPage > 3 }">
							[<a href="boarding.do?pg=${startPage - 1 }&req=${req}">이전</a>]
						</c:if>
						<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
						 	<c:if test="${pg == i }">
						 		[<a href="boarding.do?pg=${i }&req=${req}">${i }</a>]
						 	</c:if>
						 	<c:if test="${pg != i }">
						 		[<a href="boarding.do?pg=${i }&req=${req}">${i }</a>]
						 	</c:if>
					 	</c:forEach>
					 	<c:if test="${endPage < totalP }">
							[<a href="boarding.do?pg=${endPage + 1 }&req=${req}">다음</a>]
						</c:if>
					</td>
				</tr>
			</c:if>
			<c:if test="${req == 'm' }">
				<tr>
					<td colspan="6" align="center">
						<c:if test="${startPage > 3 }">
							[<a href="boarding.do?pg=${startPage - 1 }&req=${req}&datepicker=${datepicker}&datepicker2=${datepicker2}">이전</a>]
						</c:if>
						<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
						 	<c:if test="${pg == i }">
						 		[<a href="boarding.do?pg=${i }&req=${req}&datepicker=${datepicker}&datepicker2=${datepicker2}">${i }</a>]
						 	</c:if>
						 	<c:if test="${pg != i }">
						 		[<a href="boarding.do?pg=${i }&req=${req}&datepicker=${datepicker}&datepicker2=${datepicker2}">${i }</a>]
						 	</c:if>
					 	</c:forEach>
					 	<c:if test="${endPage < totalP }">
							[<a href="boarding.do?pg=${endPage + 1 }&req=${req}&datepicker=${datepicker}&datepicker2=${datepicker2}">다음</a>]
						</c:if>
					</td>
				</tr>
			</c:if>
		</c:if>
	</table>
</body>
</html>