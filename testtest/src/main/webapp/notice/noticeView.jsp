<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#noticeView{
	width: 1200px;
	height: 800px;
	margin: auto;
}
#noticeView #noticeViewNavi{
	font-weight: normal;
	color: #353535;
}
#noticeView h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}

#noticeViewTab{
	width: 900px;
	height: 750px;
}
.noticeViewSub1{
	font-size: 23px;
	width: 700px;
	height: 80px;
	border-bottom: 1px solid #353535;
}
.noticeViewSub2{
	font-size: 14px;
	border-bottom: 1px solid #353535;
}
.noticeViewCon{
	height: 510px;
	border-bottom: 1px solid #353535;
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
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$( document ).ready( function() {
    var jbExcerpt = $( 'p' ).text().substring( 0, 10 );
    $( 'p' ).html( '<p>' + jbExcerpt + '</p>' );
  } );
</script>
</head>
<body>
<div id="noticeView">
<h3 id="noticeViewNavi">JAJUAIR &gt; 이벤트/새소식 &gt; ${noticeDTO.subject }</h3><br>
<h1>새소식</h1>
<table id="noticeViewTab">
	<tr>
		<td class="noticeViewSub1">
			${noticeDTO.subject }
		</td>
		<td class="noticeViewSub2">
			<p>${noticeDTO.logtime }</p>
		</td>
		<td class="noticeViewSub2">
			${noticeDTO.hit }
		</td>
	</tr>
	<tr>
		<td colspan="3" class="noticeViewCon">
			${noticeDTO.content }
		</td>
	</tr>
	<tr>
		<td colspan="3">
			<c:if test="${sessionScope.memId=='admin' }">
				<input type="button" value="이벤트 수정" onclick="location.href='noticeModifyForm.do?seq=${noticeDTO.seq}'" class="mybutton">
				<input type="button" value="이벤트 삭제" onclick="location.href='noticeDelete.do?seq=${noticeDTO.seq}'" class="mybutton">
			</c:if>
				<input type="button" value="이전으로" onclick="history.back()" class="mybutton">
		</td>
	</tr>
</table>
</div>
</body>
</html>