<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	if(${result > 0}){
		alert("등록 성공")
		location.href="../bookAdmin/bookAdminForm.do" 
	}else{
		alert("등록 실패.")
		history.back(-1);
	}
}
</script>
</head>
<body>



</body>
</html>