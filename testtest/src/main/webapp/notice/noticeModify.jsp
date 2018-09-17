<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
<script type="text/javascript">
window.onload = function() {
	if(${result > 0 }){
		alert("공지사항 수정 완료.");
		location.href="noticeList.do?pg=1";
	}else{
		alert("공지사항 수정 실패.");
		location.href="noticeModifyFrom.do";		
	}
}	
</script>
</head>
<body>

</body>
</html>