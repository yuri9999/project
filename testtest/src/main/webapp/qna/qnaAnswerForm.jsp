<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	margin: auto;
	padding: 0;
}
.qnaAnswer{
	width: 1200px;
	height: 1250px;
	margin: auto;
}
.qnaAnswer #qnaAnswerNavi{
	font-weight: normal;
	color: #353535;
}
.qnaAnswer h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
#qnaTab{
	margin-left: 140px;
	width: 1000px;
}
#qnaTab td{
	width: 1000px;
	height: 70px;
	border-bottom: 1px solid #ccc;
}
#qnaTab label{
	font-size: 20px;
	margin-right: 20px;
	vertical-align: middle;
}
#qnaTab select{
	width: 200px;
	height: 30px;
}
#qnaTab input{
	width: 200px;
	height: 30px;
}
#qnaTab textarea{
	margin-left: 120px;
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
$(function () {
  $('.code1').show();
  $('.content-panel').hide();
  $('.d1').show();

  $('#code1').on("change",function () {
    $('.content-panel').hide();
    $('.d'+$(this).val()).show();
  });
});
$(function() {
	$("form[name='qnaAnswerForm']").submit(function() {
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
<form action="../qna/qnaAnswer.do?seq=${qnaDTO.seq }" name="qnaAnswerForm" method="post">
<div class="qnaAnswer">
	<h3 id="qnaAnswerNavi">JAJUAIR &gt; 고객센터<img alt="" src="../img/navimg.png"></h3><br>
	<h1>고객센터</h1>
	<p>${sessionScope.memName }님의 문의사항을 남겨주세요.</p>
	<table id="qnaTab">
		<tr>
			<td>
				<h2>고객정보</h2>	
			</td>
		</tr>
		<tr>
			<td>
				<label>이름 *</label>
				<input type="text" name="koreanName" value="${sessionScope.memName }">
			</td>
		</tr>
		<tr>
			<td>
				<label>전화번호 *</label>
				<select name="tel1">
					<option value="010">010</option>
					<option value="010">011</option>
					<option value="010">019</option>
				</select>
				<input type="text" name="tel2" value="${qnaDTO.tel2 }">-<input type="text" name="tel3" value="${qnaDTO.tel3 }">
			</td>
		</tr>
		<tr>
			<td>
				<label>이메일 *</label>
				<input type="text" name="email1" value="${qnaDTO.email1 }">@
				<c:if test="${qnaDTO.email2=='naver.com' }">
					<select name="email2">
						<option value="naver.com" selected="selected">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="gmail.com">gmail.com</option>
					</select>
				</c:if>
				<c:if test="${qnaDTO.email2=='naver.com' }">
					<select name="email2">
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net" selected="selected">hanmail.net</option>
						<option value="gmail.com">gmail.com</option>
					</select>
				</c:if>
				<c:if test="${qnaDTO.email2=='naver.com' }">
					<select name="email2">
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="gmail.com" selected="selected">gmail.com</option>
					</select>
				</c:if>
			</td>
		</tr>
		<tr>
			<td>
				<h2>문의정보</h2>	
			</td>
		</tr>
		<tr>
			<td>
				<label>문의제목 *</label>
				<input type="text" name="subject" value="${qnaDTO.subject }">
			</td>
		</tr>
		<tr class="qnaContent">
			<td>
				<label>문의내용 *</label>
				<textarea rows="5" cols="50" name="content">${qnaDTO.content }</textarea>
			</td>
		</tr>
		<tr>
			<td>
				<label>문의답변 *</label>
				<textarea rows="5" cols="50" name="answer"></textarea>
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="답변작성" class="mybutton">
				<input type="reset" value="다시작성" class="mybutton">
			</td>
		</tr>
	</table>
	</div>
</form>
</body>
</html>