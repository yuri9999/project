<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의사항 삭제</title>
<script type="text/javascript">
window.onload = function() {
	if(${result > 0 }){
		alert("문의사항 삭제 완료.");
		location.href="qnaMain.do?pg=1";
	}else{
		alert("문의사항 삭제 실패.");
		location.href="qnaModifyFrom.do";		
	}
}	
</script>
</head>
<body>

</body>
</html>