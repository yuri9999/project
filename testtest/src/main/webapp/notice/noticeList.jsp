<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style type="text/css">
#noticeList{
	width: 1200px;
	height: 800px;
	margin: auto;
}
#noticeList #noticeNavi{
	font-weight: normal;
	color: #353535;
}
#noticeList h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}

#noticeList .noticeSub1{
	width: 100px;
	height: 40px;
	border-bottom: 1px solid #ccc;
}
#noticeList .noticeSub2{
	width: 700px;
	height: 40px;
	border-bottom: 1px solid #ccc;
}
#noticeList .noticeSub2 a{
	text-decoration: none;
	color: #353535;
}


#noticePaging{
	text-align: center;
	height: 60px;
}
#noticePaging .page{
	border: 1px solid #ccc;
	width: 35px;
	height: 35px;
	list-style: none;
	display: inline-block;
}
#noticePaging .page a{
	vertical-align: inherit;
	text-decoration: none;
	font-weight:bold;
	color: #4B1152;
	padding-top: 3px;
}
#noticePaging .currentPage{
	border: 1px solid #ccc;
	width: 35px;
	height: 35px;
	list-style: none;
	display: inline-block;
	background-color: #4B1152;
}
#noticePaging .currentPage a{
	vertical-align: inherit;
	text-decoration: none;
	font-weight:bold;
	color: white;
	padding-top: 3px;
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
</head>
<body>
<div id="noticeList">
<h3 id="noticeNavi">JAJUAIR &gt; 이벤트/새소식 &gt; 새소식(목록)</h3><br>
<h1>새소식</h1>
<table id="noticeListTab">
	<tr>
			<td class="noticeSub1" align="center">번호</td>
			<td class="noticeSub2" align="center">글제목</td>
			<td class="noticeSub1" align="center">등록일</td>	
	</tr>
	<c:forEach var="noticeDTO" items="${requestScope.list }">
		<tr>
			<td class="noticeSub1" align="center">${noticeDTO.seq }</td>
			<td class="noticeSub2" align="left"><a href="../notice/noticeView.do?seq=${noticeDTO.seq }">${noticeDTO.subject }</a></td>
			<td class="noticeSub1" align="center">${noticeDTO.logtime }</td>	
		</tr>
	</c:forEach>
	<tr id="noticePaging">
		<td colspan="6">
		<ul>
			<c:if test="${startPage > 3 }">
				<li class="page"><a href="noticeList.do?pg=${startPage-1 }">&lt;</a></li>
			</c:if>
			<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
				<c:if test="${pg==i }">
					<li class="currentPage"><a href="noticeList.do?pg=${i }">${i }</a></li>
				</c:if>
				<c:if test="${pg!=i }">
					<li class="page"><a href="noticeList.do?pg=${i }">${i }</a></li>
				</c:if>
			</c:forEach>
			<c:if test="${endPage < totalP }">
				<li class="page"><a href="noticeList.do?pg=${endPage+1 }">&gt;</a></li>
			</c:if>
		</ul>
		</td>
	</tr>
	<c:if test="${sessionScope.memId=='admin' }">
		<tr>
			<td colspan="6">
				<input type="button" value="새소식 게시" onclick="location.href='../notice/noticeWriteForm.do'" class="mybutton">
			</td>
		</tr>
	</c:if>
</table>
</div>
</body>
</html>