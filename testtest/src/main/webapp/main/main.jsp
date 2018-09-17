<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주항공에 오신것을 환영합니다.</title>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
#top{
	margin: 0;
	padding: 0;
	position: relative;
	top: 0;
	height: 100px;
	z-index: 1;
}
#mainContent{
	position: absolute;
	left:0;
	width: 100%;
	height: 2450px;
	margin-top: 100px;
	margin: auto;
}
#remote{
	position: fixed;
	top: 400px;
	right: 30px;
}
#remote table{
	border: 1px solid #ccc;
	width: 200px;
	height: 300px;
}
#remote table .controller{
	height: 50px;
 	text-decoration: none;
 	text-align: center;
 	border: 1px solid #ccc;
}
#remote table .info{
	text-align: center;
}
#bottom{
	margin-left:700;
	position: absolute;
	top: 2700px;
	width: 100%;
}
</style>
</head>
<body>
<div id="top">
	<jsp:include page="top.jsp" />
</div>

<div id="mainContent">
	<c:if test="${display==null }">
		<jsp:include page="body.jsp" />
	</c:if>
	<c:if test="${display!=null }">
		<jsp:include page="${display }" />
	</c:if>
</div>
<div id="remote">
	<table>
		<tr>
			<td colspan="2" class="controller"><a href="#">Top</a></td>
		</tr>
		<tr>
			<td colspan="2" class="info">
				이런 저런 정보
			</td>
		</tr>
		<tr>
			<td class="controller" width="95">이전</td>
			<td class="controller" width="95">앞으로</td>
		</tr>
	</table>
</div>

<div id="bottom">
	<jsp:include page="bottom.jsp" />
</div>
</body>
</html>