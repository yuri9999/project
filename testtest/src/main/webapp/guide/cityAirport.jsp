<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#cityAirport{
	width: 1200px;
	height: 1900px;
	margin: auto;
}
.cityAirportimg{
	margin-top: 20px;
}
.cityAirportimg img{
	float: left;
}
#cityAirport #cityAirportNavi{
	font-weight: normal;
	color: #353535;
}
#cityAirport h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
.accent{
	color: red;
}
#cityAirport table{
	border-left: none;
	border-right: none;
	border-spacing: 0;
	
}
.cityTB{
	background-color: #EAEAEA;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
	text-align: center;
	padding: 3px;
}
.cityTB:last-child{
	border-right: none;
}
.cityTNB{
	padding: 3px;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
	border-left: 1px solid #ccc;
	text-align: center;
}
.cityTNB:first-child {
	border-left: none;
}
#cityAirport .note {
	margin-top: 20px;
	font-weight: bold;
	font-size: 15px;
}
#cityAirport a{
	color: black;
}
#cityAirport a:hover{
	color: blue;
}
#cityAirport a:active{
	color: black;
}
#cityAirport ul li{
	list-style: square;
	font-size: 13px;
	margin-left: 50PX;
}
#cityMap1{
	margin-top: 40px;
}
#cityMap2{
	margin-top: 40px;
}
.cityImgT{
	width: 1200px;
}
.cityImgT img{
	margin-left: 150px;
}
</style>
</head>
<body>
<div id="cityAirport">
	<h3 id="cityAirportNavi">JAJUAIR &gt; 서비스 안내 &gt; 공항서비스 &gt; 도심공항 이용안내<img alt="" src="../img/navimg.png"></h3><br>
	<h1>도심공항 이용안내</h1>
	<p class="cityAirportimg"><img alt="" src="../img/cityAirport.png"><br>자주항공의 당일 탑승 승객 중 예약이 확약된 승객은 서울역·삼성역·광명역 도심공항에서 탑승수속 서비스를 이용하실 수 있습니다.<br>공항 도착 후 <span>전용게이트</span>로 빠른 탑승이 가능합니다.</p>
	<div id="cityMap1">
		<h3><img alt="" src="../img/title1.jpg">서울역·삼성역·광명역 도심공항 터미널 이용안내</h3>
		<table>
			<tr>
				<td colspan="4" class="cityImgT">
					<img alt="" src="../img/cityMap1.jpg">
				</td>
			</tr>
			<tr>
				<td class="cityTB">구분</td>
				<td class="cityTB">삼성동 도심공항</td>
				<td class="cityTB">서울역 도심공항</td>
				<td class="cityTB">광명역 도심공항</td>
			</tr>
			<tr>
				<td class="cityTB">위치</td>
				<td class="cityTNB">서울시 강남구 테헤란로 87길 22,<br>한국도심공항</td>
				<td class="cityTNB">서울역 도심공항 터미널 지하 2층</td>
				<td class="cityTNB">경기도 광명시 광명역로21 지하1층<br>도심공항터미널</td>
			</tr>
			<tr>
				<td class="cityTB">이용대상</td>
				<td class="cityTNB">인천출발 국제선 당일 탑승 승객 중<br>예약이 확약된 승객</td>
				<td class="cityTNB">인천출발 국제선 당일 탑승 승객 중<br>예약이 확약된 승객<br><span>*공항철도 직통열차 이용 필수</span></td>
				<td class="cityTNB">인천출발 국제선 당일 탑승 승객 중<br>예약이 확약된 승객</td>
			</tr>
			<tr>
				<td class="cityTB">탑승수속 가능시간</td>
				<td class="cityTNB">05:10 ~ 18:30</td>
				<td class="cityTNB">05:20 ~ 19:0</td>
				<td class="cityTNB">06:30 ~ 19:00</td>
			</tr>
			<tr>
				<td class="cityTB">카운터 마감</td>
				<td class="cityTNB">인천공항 발 항공기 출발 3시간 20분 전</td>
				<td class="cityTNB">인천공항 발 항공기 출발 3시간 전</td>
				<td class="cityTNB">인천공항 발 항공기 출발 3시간 전</td>
			</tr>
			<tr>
				<td class="cityTB">법무부 출국심사 시간</td>
				<td class="cityTNB">05:30 ~ 18:30</td>
				<td class="cityTNB">07:00 ~ 19:00</td>
				<td class="cityTNB">07:00 ~ 19:00</td>
			</tr>
			<tr>
				<td class="cityTB">공항까지 소요시간</td>
				<td class="cityTNB">60 ~ 100분 (배차간격 15 ~ 20분)</td>
				<td class="cityTNB">43분 (배차간격 30 ~ 40분)</td>
				<td class="cityTNB">70분 (배차간격 20 ~ 30분)</td>
			</tr>
			<tr>
				<td class="cityTB">홈페이지</td>
				<td class="cityTNB"><a href="http://www.calt.co.kr" target="_blank">http://www.calt.co.kr</a></td>
				<td class="cityTNB"><a href="http://www.arex.or.kr/main.do" target="_blank">http://www.arex.or.kr/main.do</a></td>
				<td class="cityTNB"><a href="http://www.letskorail.com" target="_blank">http://www.letskorail.com</a></td>
			</tr>
		</table>
		<p class="note">유의사항</p>
		<ul>
			<li>탑승권 예약 및 발권, 여정 변경이 불가합니다.</li>
			<li>도움이필요한 승객(휠체어 서비스 이용 승객, 혼자 여행하는 어린이 승객), 개인 신분할인 대상자, 항공권과 여권상의 이름이 다른 승객은 탑승수속이 불가하오니 공항 카운터를 이용하여 주시기<br>바랍니다.</li>
			<li>부가서비스 및 초과수하물 요금은 도심공항 수속 후, 인천공항에서 지불하실수 있습니다.</li>
			<li>골프백을 제외한 대형 악기 수하물 / 삼면의 합이 205Cm를 초과하는 수하물은 수속이 불가합니다.</li>
			<li>서울역 도심공항 터미널은 서울역·인천공항 직통열차표 구매 승객만 수속 가능합니다.</li>
			<li>도로 교통상황에 따라 예상보다 공항 도착 시간이 많이 소요될 수 있으니, 도심공항 운영기준 시간보다 여유 있게 수속하시길 바랍니다.</li>
		</ul>
	</div>
	<div id="cityMap2">
		<h3><img alt="" src="../img/title1.jpg">서울역·삼성역·광명역 도심공항 터미널 이용안내</h3>
		<table>
			<tr>
				<td colspan="4" class="cityImgT">
					<img alt="" src="../img/cityMap2.jpg">
				</td>
			</tr>
			<tr>
				<td class="cityTB">구분</td>
				<td class="cityTB">홍콩역</td>
				<td class="cityTB">구룡역</td>
			</tr>
			<tr>
				<td class="cityTB">탑승수속 가능시간</td>
				<td class="cityTNB">05:30 부터</td>
				<td class="cityTNB">서울역 도심공항 터미널 지하 2층</td>
			</tr>
			<tr>
				<td class="cityTB">이용대상</td>
				<td class="cityTNB">인천출발 국제선 당일 탑승 승객 중<br>예약이 확약된 승객</td>
				<td class="cityTNB">인천출발 국제선 당일 탑승 승객 중<br>예약이 확약된 승객<br><span>*공항철도 직통열차 이용 필수</span></td>
			</tr>
			<tr>
				<td class="cityTB">탑승수속 가능시간</td>
				<td class="cityTNB">05:10 ~ 18:30</td>
				<td class="cityTNB">05:20 ~ 19:0</td>
			</tr>
		</table>
		<p class="note">유의사항</p>
		<ul>
			<li>홍콩 도심공항은 공항 고속 열차(Airline Express Line) 탑승권 구매 시 수속 가능합니다.</li>
		</ul>
	</div>
</div>
</body>
</html>