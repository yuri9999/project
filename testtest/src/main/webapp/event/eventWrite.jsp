<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function() {
	if(${result > 0 }){
		alert("이벤트 게시 완료.");
		location.href="eventListC.do?pg=1";
	}else{
		alert("이벤트 게시 실패.");
		location.href="eventWriteFrom.do";		
	}
}	
</script>
</head>
<body>

</body>
</html>