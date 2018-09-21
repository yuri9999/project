<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
#qnaView{
	margin: auto;
	width: 1200px;
}

#qnaView #qnaNavi{
	font-weight: normal;
	color: #353535;
}
#qnaView h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
#qnaViewTab{
	width: 1000px;
	height: 1000px;
}
#qnaViewSub{
	border: 1px solid #ccc;
}
.qnaViewSub1{
	width: 800px;
	border-bottom: 1px solid #ccc;
}
.qnaViewSub2{
	width: 90px;
	height: 60px;
	border-bottom: 1px solid #ccc;
}
#qnaViewSub img{
	width: 900px;
	height: 700px;
}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$( document ).ready( function() {
    var jbExcerpt = $( 'p' ).text().substring( 0, 10 );
    $( 'p' ).html( '<p>' + jbExcerpt + '</p>' );
  } );
</script>
</head>
<body>
<div id="qnaView">
<h3 id="qnaNavi">JAJUAIR &gt; 고객센터 &gt; <c:if test="${qnaDTO.koreanName=='admin' }">자주찾는 질문</c:if>
<c:if test="${qnaDTO.koreanName!='admin' }">1:1문의사항</c:if> &gt; ${qnaDTO.subject }</h3><br>
<h1>이벤트</h1>
<table id="qnaViewTab">
	<tr id="qnaViewSub">
		<td class="qnaViewSub1" align="left">
			${qnaDTO.subject }
		</td>
	</tr>
	<c:if test="${qnaDTO.code1!=null }">
		<c:if test="${qnaDTO.code1=='1' }">
			<tr>
				<td>QnA &gt; ${qnaDTO.code2 }</td>
			</tr>
		</c:if>
		<c:if test="${qnaDTO.code1=='2' }">
			<tr>
				<td>항공권영문정정</td>
			</tr>
			<tr>
				<td>예약번호 : ${qnaDTO.reservNum }</td>
				<td>탑승자명 : ${qnaDTO.boardName }</td>
			</tr>
			<tr>
				<td>변경할 영문 이름 : ${qnaDTO.englishName }</td>
			</tr>
		</c:if>
		<c:if test="${qnaDTO.code1=='3' }">
			<tr>
				<td>수하물파손</td>
			</tr>
			<tr>
				<td>탑승일 : ${qnaDTO.boardDate }</td>
			</tr>
			<tr>
				<td>출발지 : ${qnaDTO.airportName1 }</td>
				<td>도착지 : ${qnaDTO.airportName2 }</td>
			</tr>
		</c:if>
		<c:if test="${qnaDTO.code1=='4' }">
			<tr>
				<td>유실물</td>
			</tr>
			<tr>
				<td>물품명 : ${qnaDTO.goodsName }</td>
				<td>색상 : ${qnaDTO.goodsColor }</td>
			</tr>
			<tr>
				<td>탑승일 : ${qnaDTO.boardDate }</td>
			</tr>
		</c:if>
	</c:if>
	<tr>
		<td class="qnaViewSub2">
			<h3>문의사항</h3><br>
			${qnaDTO.content }
		</td>
	</tr>
	<tr>
		
		<td>
			<h3>관리자 답변</h3><br>
			${qnaDTO.answer }
		</td>
	</tr>
	<tr>
		<td>
			<c:if test="${sessionScope.memName==qnaDTO.koreanName }">
				<input type="button" value="문의 수정" onclick="location.href='qnaModifyForm.do?seq=${qnaDTO.seq}'" class="mybutton">
				<input type="button" value="문의 삭제" onclick="location.href='qnaDelete.do?seq=${qnaDTO.seq}'" class="mybutton">
			</c:if>
			<c:if test="${sessionScope.memId=='admin' }">
				<input type="button" value="문의답변" onclick="location.href='qnaAnswerForm.do?seq=${qnaDTO.seq}'" class="mybutton">
			</c:if>
				<input type="button" value="이전으로" onclick="history.back()" class="mybutton">
		</td>
	</tr>
</table>
</div>
</body>
</html>