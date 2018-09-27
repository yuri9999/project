<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript">
	window.onload = function(){
		if(${sessionScope.memId==null}){
			alert("로그인을 먼저 해주세요")
			history.back(-1);
		}
	}
</script>
</head>
<body>
</body>
</html>