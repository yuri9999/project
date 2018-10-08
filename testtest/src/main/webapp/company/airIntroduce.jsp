<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#airIntroduce{
	width: 1200px;
	height: 3120px;
	margin: auto;
}
#airIntroduce #airIntroduceNavi{
	font-weight: normal;
	color: #353535;
}
#airIntroduce h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
.content {
	margin: 50px 0 0 0px;
	width: 930px;
	height: 3000px;
}
.content p { 
	font-size: 15px;
	
}
.content span {
	color: red;
	font-size: 35px;
}
.content table {
	border: 0 none;
	border-spacing: 0;
	border-left: none;
	border-right: none;
	font-size: 14px;
}
.content table td {
	border-bottom: 1px solid black;
}
#td1, #td2 {
	border-top: 1px solid black;
}

.content .td1 {
	background-color: #F5F5F5;
	width: 240px;
	height: 21px;
	padding: 5px;
}
.content .td2 {
	width : 550px;
	border-left: 1px solid black;
	padding: 5px;
}
.enroll {
	width: 800px;
	border: 0 none;
	border-spacing: 0;
	text-align: center;
}
.enroll th {
	border: 1px solid black;
	border-left: none;
	border-right: none;
	width : 233px;
	height: 40px;
	margin-left : 80px;
	padding: 7px;
}
.enroll td {
	border-bottom: 1px solid #E2E2E2; 
	height: 40px;
	padding: 7px;
}
.mt20 {
	margin-top: 20px;
}
.mt10 {
	margin-top: 10px;
}
</style>
</head>
<body>
<div id="airIntroduce">
	<h3 id="airIntroduceNavi">JAJUAIR &gt; 회사소개  &gt; 취항 노선<img alt="" src="../img/navimg.png"></h3><br>
	<h1>항공기 소개</h1>
	<div class="content mt20">
		<h3><img src="../img/title1.jpg">제주항공이 사용하는 B737-800은 전세계적으로
			 <span>‘안전성’</span>과 <span>‘효율성’</span>이
			증명된 기종으로 해외에서도 가장 인기 있는 항공기입니다.</h3>
		<img alt="" src="../img/company_02.jpg" class="mt20">
		
		<h3 class="mt20"><img src="../img/title1.jpg">항공기 제원</h3>
		<table class="mt20">
			<tr>
				<td class="td1" id="td1">제조사</td>
				<td class="td2" id="td2">보잉사</td>
			</tr>
			<tr>
				<td class="td1">좌석 수</td>
				<td class="td2">186석 또는 189석</td>
			</tr>
			<tr>
				<td class="td1">평균 좌석 간격</td>
				<td class="td2">32 인치</td>
			</tr>
			<tr>
				<td class="td1">날개 폭</td>
				<td class="td2">35.79m</td>
			</tr>
			<tr>
				<td class="td1">전체 길이</td>
				<td class="td2">39.50m</td>
			</tr>
			<tr>
				<td class="td1">꼬리날개 높이</td>
				<td class="td2">12.50m</td>
			</tr>
			<tr>
				<td class="td1">최대 이륙 중량</td>
				<td class="td2">79,015kg</td>
			</tr>
			<tr>
				<td class="td1">항속거리</td>
				<td class="td2">5,130km</td>
			</tr>
			<tr>
				<td class="td1">평균 순항 속도</td>
				<td class="td2">850km/h</td>
			</tr>
			<tr>
				<td class="td1">엔진</td>
				<td class="td2">CFM56-7B26 X 2</td>
			</tr>
		</table>
		<h3 class="mt20"><img src="../img/title1.jpg">항공기 좌석배치도</h3>
		<table class="mt20">
			<tr>
				<td class="td1" id="td1">좌석간격</td>
				<td class="td2" id="td2">29~31인치</td>
			</tr>
			<tr>
				<td class="td1">좌석넓이</td>
				<td class="td2">19~20인치</td>
			</tr>
		</table>
		<P class="mt10">* 항공기별 좌석 배치 및 간격은 조금씩 상이할 수도 있습니다.</P>
		<img alt="좌석" src="../img/air_seat.jpg">
		
		<h3 class="mt20"><img src="../img/title1.jpg">항공기 등록정보</h3>
		<table class="enroll mt20">
			<tr>
				<th id="dd">등록번호</th>
				<th id="dd1">기종 모델</th>
				<th>제조년월</th>
			</tr>
			<tr>
				<td>HL7779</td>
				<td>B737-800</td>
				<td>1999-02</td>
			</tr>
			<tr>
				<td>HL7780</td>
				<td>B737-800</td>
				<td>2000-01</td>
			</tr>
			<tr>
				<td>HL8206</td>
				<td>B737-800</td>
				<td>2001-03</td>
			</tr>
			<tr>
				<td>HL8234</td>
				<td>B737-800</td>
				<td>2002-11</td>
			</tr>
			<tr>
				<td>HL8239</td>
				<td>B737-800</td>
				<td>2001-06</td>
			</tr>
			<tr>
				<td>HL8260</td>
				<td>B737-800</td>
				<td>2002-03</td>
			</tr>
			<tr>
				<td>HL8261</td>
				<td>B737-800</td>
				<td>2002-07</td>
			</tr>
			<tr>
				<td>HL8263</td>
				<td>B737-800</td>
				<td>2003-05</td>
			</tr>
			<tr>
				<td>HL8287</td>
				<td>B737-800</td>
				<td>2004-01</td>
			</tr>
			<tr>
				<td>HL8295</td>
				<td>B737-800</td>
				<td>2006-02</td>
			</tr>
			<tr>
				<td>HL8296</td>
				<td>B737-800</td>
				<td>2006-02</td>
			</tr>
			<tr>
				<td>HL8297</td>
				<td>B737-800</td>
				<td>2004-05</td>
			</tr>
			<tr>
				<td>HL8019</td>
				<td>B737-800</td>
				<td>2006-06</td>
			</tr>
			<tr>
				<td>HL8020</td>
				<td>B737-800</td>
				<td>2006-08</td>
			</tr>
			<tr>
				<td>HL8031</td>
				<td>B737-800</td>
				<td>2010-10</td>
			</tr>
			<tr>
				<td>HL8033</td>
				<td>B737-800</td>
				<td>2006-12</td>
			</tr>
			<tr>
				<td>HL8034</td>
				<td>B737-800</td>
				<td>2011-10</td>
			</tr>
			<tr>
				<td>HL8049</td>
				<td>B737-800</td>
				<td>2008-04</td>
			</tr>
			<tr>
				<td>HL8050</td>
				<td>B737-800</td>
				<td>2008-04</td>
			</tr>
			<tr>
				<td>HL8051</td>
				<td>B737-800</td>
				<td>2008-04</td>
			</tr>
			<tr>
				<td>HL8061</td>
				<td>B737-800</td>
				<td>2008-12</td>
			</tr>
			<tr>
				<td>HL8062</td>
				<td>B737-800</td>
				<td>2008-12</td>
			</tr>
			<tr>
				<td>HL8063</td>
				<td>B737-800</td>
				<td>2009-08</td>
			</tr>
			<tr>
				<td>HL8064</td>
				<td>B737-800</td>
				<td>2009-05</td>
			</tr>
		</table>
		<br>
	</div><!-- content -->
</div><!-- airIntroduce -->
</body>
</html>