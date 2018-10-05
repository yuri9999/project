<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#eventHome{
	width: 1200px;
	height: 800px;
	margin: auto;
}
#eventHome #eventHomeNavi{
	font-weight: normal;
	color: #353535;
}
#eventHome h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
#eventHome h3{
	margin-top: 30px;
}
.accent{
	color: red;
}
#eventHmainT .eventHmainTd{
	height: 250px;
	width: 400px;
	border: 1px solid #ccc;
	border-spacing: 0;
}
#eventHome #back{
	background-color: #4B1152;
	height: 250px;
}
#eventHome #back a{
	color: white;
}
#eventHome h3{
	font-size: 20px;
	color: black;
}
#eventHome h3 a{
	text-decoration: none;
}
#eventHome .aa{
	text-decoration: none;
	color: black;
}

#eventHome .aa{
	font-size: 13px;
}
.ST td{
	width: 200px;
}
</style>
</head>
<body>
<div id="eventHome">
	<h3 id="eventHomeNavi">JAJUAIR &gt; 이벤트/새소식<img alt="" src="../img/navimg.png"></h3><br>
	<h1>이벤트/새소식</h1>
	<p>자주항공의 이벤트와 새소식 안내입니다.</p>
	<table id="eventHmainT">
		<tr>
			<td class="eventHmainTd" id="back">
				<h3><a href="../event/eventListC.do?pg=1">이벤트</a></h3><br>
				<img alt="예약안내" src="../img/eventHome1.png"><br>
				<table class="ST">
					<tr>
						<td><a class="aa" href="../event/eventListC.do?pg=1">진행중인 이벤트</a></td>
					</tr>
				</table>
			</td>
			<td class="eventHmainTd">
				<h3><a href="../notice/noticeList.do?pg=1">새소식</a></h3><br>
				<img alt="공항서비스" src="../img/eventHome2.png"><br>
			</td>
			<td class="eventHmainTd">
				<h3><a href="../qna/qnaMain.do?pg=1">자주 묻는 질문</a></h3><br>
				<img alt="기내서비스" src="../img/eventHome3.png"><br>
			</td>
		</tr>
	</table>
</div>
</body>
</html>