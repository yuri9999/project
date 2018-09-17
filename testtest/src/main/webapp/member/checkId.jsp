<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>중복 체크</title>
<script type="text/javascript">
	function checkIDClose(){
		opener.writeForm.id.value='${id }';
		window.close();
		opener.writeForm.pwd.focus();
	}
</script>
</head>
<body>
<form action="checkId.do" method="post">
	<c:if test="${exsist}">
			<p>${id }는 사용중 입니다.</p>
		<p align="center">아이디
		<input type="text" name="id" width="70px">
		<input type="submit" value="중복 체크"></p>
	</c:if>
	<c:if test="${!exsist}">
			<p>${id }는 사용 가능합니다.</p>
		<input type="button" value="사용" onclick="checkIDClose()">
	</c:if>
</form>
</body>
</html>