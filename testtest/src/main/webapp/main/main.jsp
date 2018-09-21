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
	height:100%;
	margin-top: 100px;
	margin: auto;
}
#bottom{
	margin-left:700;
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
		<jsp:include page="body.do" />
	</c:if>
	<c:if test="${display!=null }">
		<jsp:include page="${display }" />
	</c:if>
	<div id="bottom">
		<jsp:include page="bottom.jsp" />
	</div>
</div>

<jsp:include page="remote.do" />


</body>
</html>