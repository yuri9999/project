<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<script type="text/javascript">
	window.onload = function(){
		if(${result > 0}){
			alert("회원탈퇴 성공")
			location.href="../member/logout.do"
		}else{
			alert("회원탈퇴 실패.")
			history.back(-1);
		}
	}
</script>
</head>
<body>

</body>
</html>