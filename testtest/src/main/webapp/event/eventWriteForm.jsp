<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 게시물 작성</title>
<style type="text/css">]
*{
	margin: 0;
	padding: 0;
}
#eventTable{
	margin-top: 80px;
	margin-left: 600px;
	padding: 0;
	width: 600px;
	border-top: 1px solid #ccc;
	border-right:  1px solid #ccc;
	border-bottom: 2px solid #4B1152;
	border-left: 2px solid #4B1152;
}
#eventTable .tableLeft{
	width: 130px;
	height: 30px;
	text-align: center;
	border-bottom: 1px solid #ccc;
	padding: 3px;
}
#eventTable .tableRight{
	width: 465px;
	border-bottom: 1px solid #ccc;
	padding: 3px;
}


.mybutton{
	background-color: #4B1152;
	border: 1px solid #124d77;
	display: inline-block;
	color: white;
	font-family: arial;
	font-size: 15px;
	font-weight: nomal;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #154682;
}

.mybutton:hover {
	background-color: #4A0BA3;
}

.mybutton:active {
	position: relative;
	top: 1px;
}
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$("form[name='eventWriteForm']").submit(function() {
		if(!confirm("정말 저장하시겠습니까?")) {
			return false;
		}
	});
	
	$("input[type='reset']").click(function() {
		if(!confirm("정말 입력을 취소하시겠습니까?")) {
			return false;
		}
	});
});
</script>
</head>
<body>
<h2>이벤트 게시물 작성</h2>
<form action="../event/eventWrite.do" name="eventWriteForm" enctype="multipart/form-data" method="post">
	<table id="eventTable">
		<tr>
			<td class="tableLeft">작성자</td>
			<td>
				<input type="text" name="id" value="이벤트 담당자" class="tableRight">
			</td>
		</tr>
		<tr>
			<td class="tableLeft">제목</td>
			<td>
				<input type="text" name="subject" class="tableRight">
			</td>
		</tr>
		<tr>
			<td class="tableLeft">내용</td>
			<td>
				<textarea rows="25" cols="55" name="content" class="tableRight" style="resize: none;"></textarea>
			</td>
		</tr>
		<tr>
			<td class="tableLeft">파일첨부</td>
			<td>
				<input type="file" name="imagefile">
			</td>
		</tr>
		<tr>
			<td colspan="2" id="input">
				<input type="submit" value="게시물 작성" class="mybutton">
				<input type="reset" value="다시 작성" class="mybutton">
				<input type="button" value="목록으로" class="mybutton" onclick="location.href='eventListC.do?pg=1'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>