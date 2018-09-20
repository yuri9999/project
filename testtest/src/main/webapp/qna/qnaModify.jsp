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
		alert("문의사항 수정 완료.");
		location.href="qnaMain.do?pg=1";
	}else{
		alert("문의사항 수정 실패.");
		location.href="qnaModifyForm.do";		
	}
}	
</script>
</head>
<body>

</body>
</html>