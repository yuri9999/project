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
#eventView{
	margin: auto;
	width: 1200px;
}

#eventView #eventNavi{
	font-weight: normal;
	color: #353535;
}
#eventView h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
#eventViewTab{
	width: 1000px;
	height: 1000px;
}
#eventViewSub{
	border: 1px solid #ccc;
}
.eventViewSub1{
	width: 800px;
	border-bottom: 1px solid #ccc;
}
.eventViewSub2{
	width: 90px;
	height: 60px;
	border-bottom: 1px solid #ccc;
}
#eventViewSub img{
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
<div id="eventView">
<h3 id="eventNavi">JAJUAIR &gt; 이벤트/새소식 &gt; ${eventDTO.subject }<img alt="" src="../img/navimg.png"></h3><br>
<h1>이벤트</h1>
<table id="eventViewTab">
	<tr id="eventViewSub">
		<td class="eventViewSub1" align="left">
			${eventDTO.subject }
		</td>
		<td class="eventViewSub2" align="center">
			${eventDTO.hit }
		</td>
		<td class="eventViewSub2" align="center">
			<p>${eventDTO.logtime }</p>
		</td>
	</tr>
	<tr>
		<td colspan="3">
			<img src="../storage/${eventDTO.image }">
		</td>
		
	</tr>
	<tr>
		<td class="eventViewSub2" colspan="3">
			${eventDTO.content }
		</td>
	</tr>
	<tr>
		
	</tr>
	<tr>
		<td>
			<c:if test="${sessionScope.memId=='admin' }">
				<input type="button" value="이벤트 수정" onclick="location.href='eventModifyForm.do?seq=${eventDTO.seq}'" class="mybutton">
				<input type="button" value="이벤트 삭제" onclick="location.href='eventDelete.do?seq=${eventDTO.seq}'" class="mybutton">
			</c:if>
				<input type="button" value="이전으로" onclick="history.back(-1)" class="mybutton">
		</td>
	</tr>
</table>
</div>
</body>
</html>