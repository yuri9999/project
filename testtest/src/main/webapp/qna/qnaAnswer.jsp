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
		alert("답변 작성 완료.");
		location.href="qnaMain.do?pg=1";
	}else{
		alert("답변 작성 실패.");
		location.href="qnaAnswerForm.do";		
	}
}	
</script>
</head>
<body>

</body>
</html>