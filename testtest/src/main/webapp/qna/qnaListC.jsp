<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table class="collapsible">
			<c:forEach var="qnaDTO" items="${requestScope.listC }">
				<tr>
					<c:if test="${sessionScope.memId!='admin' }">
						<c:if test="${qnaDTO.koreanName==sessionScope.memName }">
							<td class="title" align="left"><a>${qnaDTO.subject }</a></td>
							<td>${sessionScope.memName }</td>
							<td><a href="../qna/qnaView.do?seq=${qnaDTO.seq }">자세히</a></td>
						</c:if>
					</c:if>
					<c:if test="${sessionScope.memId=='admin'}">
						<c:if test="${qnaDTO.koreanName!='admin' }">
							<td class="title" align="left"><a>${qnaDTO.subject }</a></td>
							<td>${qnaDTO.koreanName }</td>
							<td><a href="../qna/qnaAnswerForm.do?seq=${qnaDTO.seq }">답변하기</a> / <a href="../qna/qnaView.do?seq=${qnaDTO.seq }">자세히</a></td>
						</c:if>
					</c:if>
				</tr>
				<tr class="target">
					<td>
						${qnaDTO.content }<br>
						<p>--------------------------------------------------------</p>
						${qnaDTO.answer }
					</td>
				</tr>
			</c:forEach>
	</table>
</body>
</html>