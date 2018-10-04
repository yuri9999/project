<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#luggageGuideB1").click(function() {
		$("#luggageCont1").css("display","block");
		$("#luggageCont2").css("display","none");
		$("#luggageCont3").css("display","none");
		
		$("#luggageGuideB2").css("border-left","none");
		$("#luggageGuideB2").css("border-right","none");
		$("#luggageGuideB2").css("border-top","none");
		$("#luggageGuideB2").css("background-color","white");
		
		$("#luggageGuideB3").css("border-left","none");
		$("#luggageGuideB3").css("border-right","none");
		$("#luggageGuideB3").css("border-top","none");
		$("#luggageGuideB3").css("background-color","white");
		
		$("#luggageGuideB1").css("background-color","#EAEAEA");
		$("#luggageGuideB1").css("border-left","3px solid #4B1152");
		$("#luggageGuideB1").css("border-right","3px solid #4B1152");
		$("#luggageGuideB1").css("border-top","3px solid #4B1152");
		
		$("#luggage").css("height","3000px");
	});
	
	$("#luggageGuideB2").click(function() {
		$("#luggageCont2").css("display","block");
		$("#luggageCont1").css("display","none");
		$("#luggageCont3").css("display","none");
		
		$("#luggageGuideB1").css("border-left","none");
		$("#luggageGuideB1").css("border-right","none");
		$("#luggageGuideB1").css("border-top","none");
		$("#luggageGuideB1").css("background-color","white");
		
		$("#luggageGuideB3").css("border-left","none");
		$("#luggageGuideB3").css("border-right","none");
		$("#luggageGuideB3").css("border-top","none");
		$("#luggageGuideB3").css("background-color","white");
		
		$("#luggageGuideB2").css("background-color","#EAEAEA");
		$("#luggageGuideB2").css("border-left","3px solid #4B1152");
		$("#luggageGuideB2").css("border-right","3px solid #4B1152");
		$("#luggageGuideB2").css("border-top","3px solid #4B1152");
		
		$("#luggage").css("height","1900px");
	});
	
	$("#luggageGuideB3").click(function() {
		$("#luggageCont3").css("display","block");
		$("#luggageCont2").css("display","none");
		$("#luggageCont1").css("display","none");
		
		$("#luggageGuideB2").css("border-left","none");
		$("#luggageGuideB2").css("border-right","none");
		$("#luggageGuideB2").css("border-top","none");
		$("#luggageGuideB2").css("background-color","white");
		
		$("#luggageGuideB1").css("border-left","none");
		$("#luggageGuideB1").css("border-right","none");
		$("#luggageGuideB1").css("border-top","none");
		$("#luggageGuideB1").css("background-color","white");
		
		$("#luggageGuideB3").css("background-color","#EAEAEA");
		$("#luggageGuideB3").css("border-left","3px solid #4B1152");
		$("#luggageGuideB3").css("border-right","3px solid #4B1152");
		$("#luggageGuideB3").css("border-top","3px solid #4B1152");
		
		$("#luggage").css("height","1000px");
	});
});
$(document).ready(function() {
	$('#popupB1').click(function() {
		$('#popup1').css({
			"position":"fixed",
			"top":0,
			"left":0
		}).show();
	});

	$('#popupB2').click(function() {
		$('#popup2').css({
			"position":"fixed",
			"top":0,
			"left":0
		}).show();
	});
	
	$('.close').click(function() {
		$('#popup1').hide();
		$('#popup2').hide();
	});
});
</script>
<style type="text/css">
#luggage{
	width: 1200px;
	height: 3000px;
	margin: auto;
}
#luggage #luggagetNavi{
	font-weight: normal;
	color: #353535;
}
#luggage h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
.accent{
	color: red;
}
#luggage h3{
	margin-top: 30px;
}
#luggageGuideB1{
	text-decoration: none;
	width: 150px;
	height: 50px;
	border: none;
	border-left: 2px solid #4B1152;
	border-right: 2px solid #4B1152;
	border-top: 2px solid #4B1152;
	background-color: #EAEAEA;
}
#luggageGuideB2{
	text-decoration: none;
	width: 150px;
	height: 50px;
	border: none;
	background-color: white;
}
#luggageGuideB3{
	text-decoration: none;
	width: 150px;
	height: 50px;
	border: none;
	background-color: white;
}
#luggageCont2{
	display: none;
}
#luggageCont3{
	display: none;
}
.luggageBackground{
	background-color: #EAEAEA;
	text-align: left;
	padding-left: 30px;
}
.lugTitleS{
	font-weight: bold;
	font-size: 15px;
	margin-top: 15px;
}
.lugCont{
	font-size: 15px;
	margin-left: 15px;
}
#luggage ul li{
	list-style: square;
	font-size: 13px;
	margin-left: 20px;
	text-align: left;
}
#luggage table{
	width: 1200px;
	text-align: center;
	font-size: 13px;
	border-spacing: 0;
}
.lugTB{
	background-color: #EAEAEA;
	border: 1px solid #ccc;
}
.lugTB:first-child {
	border-left: none;
}
.lugTB:last-child {
	border-right: none;
}
.lugTNB{
	border: 1px solid #ccc;
}
.lugTNB:first-child {
	border-left: none;
}
.lugTNB:last-child {
	border-right: none;
}

#lugT2_3{
	width: 1200px;
	height: 500px;
}
#lugT2_3 td{
	width: 600px;
}
#lugT2_3 img{
	padding-left: 100px;
}
.mybutton{
	margin-top: 5px;
	margin-left: 40px;
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
#popup1 {
	display: none;
	width: 100%;
	height: 100%;
	padding: 10px;
}
#popup1 div {
	padding-left:25px;
	position: absolute;
	top:100px;
	left:450px;
	width: 800px;
	height: 700px;
	opacity: 1.0;
	background-color:white;
	border: solid 2px #d0d0d0;
	z-index: 10;
}
#popup1 .bg{
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 0.6;
	z-index: -1;
	position: fixed;
	top: 0;
	left: 0;
}
#popup1 table{
	width: 750px;
}
#popup2 {
	display: none;
	width: 100%;
	height: 100%;
	padding: 10px;
}
#popup2 div {
	position: absolute;
	top:250px;
	left:700px;
	width: 450px;
	height: 450px;
	opacity: 1.0;
	background-color:white;
	border: solid 2px #d0d0d0;
	z-index: 10;
}
#popup2 .bg{
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 0.6;
	z-index: -1;
	position: fixed;
	top: 0;
	left: 0;
}
#popup1 h3{
	width: 650px;
}
.close{
	cursor: pointer;
	position: absolute;
	right: 30px;
}
</style>
</head>
<body>
<div id="luggage">
	<h3 id="luggageNavi">JAJUAIR &gt; 서비스 안내 &gt; 공항서비스 &gt; 수하물<img alt="" src="../img/navimg.png"></h3><br>
	<h1>수하물</h1>
	<img alt="" src="../img/luggageT.png" class="luggagetopimg">
	<div id="luggageDiv">
		<button id="luggageGuideB1" >수하물 안내</button>
		<button id="luggageGuideB2" >항공기 반입금지 물품 안내</button>
		<button id="luggageGuideB3" >수하물 분실 및 배상</button>
	</div>
	
	<div id="luggageCont1">
		<h3><img alt="" src="../img/title1.jpg">기내반입 수하물 안내</h3>
		<p class="lugTitleS">기내 휴대 가능 수하물</p>
		<table>
			<tr>
				<td rowspan="2">
					<img alt="" src="../img/luggage1.png">				
				</td>
				<td class="luggageBackground">가방(소형), 외투 등 의류, 모포/덮개, 소형 디지털 기기, 정략의 도서, 유아용품(유모차 별도), 기타 보조기구(별도 운송)</td>
			</tr>
			<tr>
				<td>
					<ul>
						<li>기내 선반이나 좌석 및에 수용가능한 <span class="accent">3면의 총합이 115cm(3면의 최대 허용 길이 : 가로 55cm, 세로 40cm, 높이 20cm)이하이고,<br>무게가 10kg 이하</span>인 1개의 휴대품에 한하여 여객이 전적으로 보관하고 책임진다는 조건하에 무료로 운송될 수 있습니다.</li>
					</ul>
				</td>
			</tr>
		</table>
		<p class="lugTitleS">기내 휴대 불가능 수하물</p>
		<p class="lugCont">무기화될 수 있는 물건 : 화기, 무기류 모조품, 폭발물, 단도 등 날이 선 물건, 자전거 체인, 곤봉 등 평상시 지니지 않는 공격적인 물건</p>
		
		<p class="lugTitleS">탑승 게이트 위탁 수하물 처리 수수료</p>
		<p class="lugCont">기내 휴대 가능 수하물 1개 이외의 수하물은 반드시 위탁 처리하여야 하며, 탑승 게이트에서 위탁 시 아래의 수수료가 추가 부과됩니다.(무게/개수 초과 요금 별도 부과)</p>
		<table>
			<tr>
				<td class="luggageBackground">
					요금<br><br>
					첫 번째 수하물 : 20,000 원 / 20 USD / 2,000 JPY / 100 CNY / 150 HKD / 600 THB / 600 TWD / 70 MYR / 150MOP / 20EUR<br>
					두 번째 수하물 : 100,000 원 / 100 USD / 10,000 JPY / 1,000 CNY / 750 HKD / 3,000 THB / 3,000 TWD / 350 MYR / 750MOP / 100EUR<br>
					세 번째 수하물부터(개당) : 200,000 원 / 200 USD / 20,000 JPY / 2,000 CNY / 1,500 HKD / 6,000 THB / 6,000 TWD / 700 MYR / 1,500MOP / 200EUR<br>
					<span class="accent">예시) 총 4개의 게이트 위탁 수하물 이용 시 총 수하물 요금 : 수수료 520,000원(20,000원+100,000원+200,000원+200,000원) + 초과 수하물 요금</span>
				</td>
			</tr>
		</table>
		<ul>
			<li>국제선에 한하여 적용됩니다. (국내선 제외)</li>
			<li>승객 편의를 위한 휠체어 및 유모차는 부과 대상에서 제외 됩니다.</li>
			<li>면세품은 기내로 휴대하는 물품에 포함시킬 수 있을 경우 반입 가능합니다. </li>
			<li>수하물 파손 및 안전 사고 방지를 위하여 탑승 게이트에서 위탁하는 수하물 한 개의 무게는 추가 금액 지불 시<br>
				최대 23kg 까지 가능하며, 초과 시에는 분리하여 포장해 주셔야 합니다.</li>
		</ul>
		
		<p class="lugTitleS">우선 수하물 서비스(도어사이드 서비스)</p>
		<p class="lugCont">우선 수하물 서비스는 목적지 공항에서 빠른 수하물 수취를 제공합니다.<br>
						우선 수하물 서비스를 이용하시면 최초 수하물 기준 20번 째 내로 수하물을 수취하실 수 있습니다.</p>
		<table>
			<tr>
				<td class="lugTB">구분</td>
				<td class="lugTB">요금</td>
			</tr>
			<tr>
				<td class="lugTB">국내선</td>
				<td class="lugTNB">3,000원(1개당)</td>
			</tr>
			<tr>
				<td class="lugTB">국제선</td>
				<td class="lugTNB">5,000 KRW / 5 USD / 500 JPY / 25 CNY / 40 HKD /<br>150 THB / 150 TWD / 20 MYR / 40MOP / 5EUR (PC)</td>
			</tr>
		</table>
		<ul>
			<li>각 항편 당 최대 20개 내로 제한됩니다.</li>
			<li>구매는 출발 당일 공항 현장에서만 가능합니다.</li>
			<li>구매 후 환불은 불가합니다. (항공기 지연 포함)</li>
			<li>휠체어, 유모차, 의료보조기구, 스포츠용품 등 특수 수하물이 우선 될 수 있습니다.</li>
		</ul>
		
		<h3><img alt="" src="../img/title1.jpg">무료 위탁 수하물 안내</h3>
		<ul>
			<li>위탁 수하물이란 고객이 출발지 공항에서 항공사에 탁송 의뢰하여 목적지 공항에서 수취하는 수하물을 말합니다.</li>
			<li>안전한 수하물 위탁을 위해 가방(짐)은 항공사에서 안내하는 지정된 크기와 무게를 지켜서 준비하여 주시기 바랍니다.</li>
			<li>위탁 수하물 1개의 크기가 203cm(가로 X 세로 X 높이의 합)를 초과할 경우 위탁 수하물로서의 운송이 거절될 수 있습니다.</li>
			<li>위탁 수하물 1개의 무게는 추가 금액 지불 시 최대 32kg 까지 가능하며, 초과 시에는 분리하여 포장해 주셔야 합니다.</li>
		</ul>
		<a class="mybutton" id="popupB1">지난 규정 보기</a>
		
		<p class="lugTitleS">무료 수하물</p>
		<table>
			<tr>
				<td class="lugTB">항공권 운임</td>
				<td class="lugTB">Fly Bag+</td>
				<td class="lugTB">Fly Bag</td>
				<td class="lugTB">Fly</td>
				<td class="lugTB">Infant (유아)</td>
			</tr>
			<tr>
				<td class="lugTB">국내선</td>
				<td class="lugTNB">20kg</td>
				<td class="lugTNB">15kg</td>
				<td class="lugTNB">수하물 없음</td>
				<td class="lugTNB">수하물 없음</td>
			</tr>
		</table>
		<ul>
			<li>수하물 크기 : 가로/세로/높이 3면의 합 203cm 이내</li>
		</ul>
		<table>
			<tr>
				<td class="lugTB">항공권 운임</td>
				<td class="lugTB">정규운임 (성인, 소아)</td>
				<td class="lugTB">할인운임 (성인, 소아)</td>
				<td class="lugTB">특가운임 (성인, 소아, 유아)</td>
				<td class="lugTB">Infant (유아)</td>
			</tr>
			<tr>
				<td class="lugTB">국제선 허용량<br>(미주 노선 제외)</td>
				<td class="lugTNB">무게 : 20kg 이내<br>크기 : 3면의 합 203cm 이내<br>허용개수 : 1개</td>
				<td class="lugTNB">무게 : 15kg 이내<br>크기 : 3면의 합 203cm 이내<br>허용개수 : 1개</td>
				<td class="lugTNB">수하물 없음</td>
				<td class="lugTNB">무게 : 10kg 이내<br>크기 : 3면의 합 203cm 이내<br>허용개수 : 1개<br>*특가운임 제외</td>
			</tr>
			<tr>
				<td class="lugTB">미주 노선 허용량</td>
				<td colspan="3" class="lugTNB">무게 : 23kg 이내<br>크기 : 2개 짐을 합한 3면의 합(가로/세로/높이  273cm 이하)<br>허용개수 : 2개</td>
				<td class="lugTNB">무게 : 10kg 이내<br>크기 : 3면의 합 203cm 이내<br>허용개수 : 1개</td>
			</tr>
		</table>
		<ul>
			<li>휴대용 유모차, 보행기, Car seat, Carrying bassinet 등은 추가 허용합니다.</li>
			<li>휠체어 (전동 휠체어 포함)는 추가 허용합니다.</li>
		</ul>
		
		<h3><img alt="" src="../img/title1.jpg">초과 수하물</h3>
		<ul>
			<li>무료 수하물 허용량을 초과할 경우 아래와 같은 요금으로 초과 수하물 요금이 부과됩니다.</li>
			<li>국내선<br>&nbsp;&nbsp;- 무게 초과 요금: 2,000 원/kg</li>
			<li>국제선<br>&nbsp;&nbsp;- 미주 노선(괌/사이판)<br>무게 초과 요금 (24kg~32kg)* : 50 USD / 50,000 KRW ( * 초과된 무게가 아닌 개당 총 무게 기준 요금)<br>개수 초과 요금 : 50,000 KRW/piece, 50 USD/piece</li>
			<li>미주 외 국제선 노선</li>
		</ul>
		<table>
			<tr>
				<td class="lugTB">구분</td>
				<td class="lugTB">ZONE 1 ↔ ZONE 2</td>
				<td class="lugTB">ZONE 1 ↔ ZONE 3</td>
				<td class="lugTB">ZONE 1 ↔ ZONE 4</td>
			</tr>
			<tr>
				<td class="lugTB">1PC(최대15KG)</td>
				<td class="lugTNB">40,000 KRW / 40 USD</td>
				<td class="lugTNB">60,000 KRW / 60 USD</td>
				<td class="lugTNB">80,000 KRW / 80 USD</td>
			</tr>
			<tr>
				<td class="lugTB">무게초과16~23KG *</td>
				<td class="lugTNB">30,000 KRW / 30 USD</td>
				<td class="lugTNB">50,000 KRW / 50 USD	</td>
				<td class="lugTNB">70,000 KRW / 70 USD</td>
			</tr>
			<tr>
				<td class="lugTB">무게초과24~32KG *</td>
				<td class="lugTNB">40,000 KRW / 40 USD</td>
				<td class="lugTNB">60,000 KRW / 60 USD</td>
				<td class="lugTNB">80,000 KRW / 80 USD</td>
			</tr>
		</table>
		<ul>
			<li><span class="accent">*</span> 초과된 무게가 아닌 개당 총 무게 기준 요금</li>
			<li>초과 수하물 예시 : 한국-일본 구간에서 23kg 짜리 수하물을 추가로 부칠 경우 개수 초과 요금 40,000원 + 무게 초과 요금 16~23kg 30,000원 = 총 초과 수하물 운임 70,000원</li>
			<li>해외 출발에서는 현지 화폐로만 결제가 가능합니다.</li>
			<li>ZONE 1 : 한국</li>
			<li>ZONE 2 : 일본/중국 산동성 지역</li>
			<li>ZONE 3 : 홍콩/마카오/대만/중국(산동성 외)/러시아</li>
			<li>ZONE 4 : 동남아</li>
			<li><span class="accent">사전 수하물을 구매하면 추가 할인을 받을 수 있습니다.</span></li>
		</ul>
		
		<p class="lugTitleS">무료 수하물</p>
		<ul>
			<li>폭발물, 압축가스, 인화성 물질, 부식성 물질, 자극성 물질, 자기성 물질, 방사성 물질, 기타 항공기 및 개인 또는 타인의 재산에 위험을 초래할 수 있는 물질은 수하물로 운송할 수 없습니다.</li>
			<li>성냥과 라이터는 고객 본인이 직접 보관하여야 합니다.<br>&nbsp;&nbsp;* 상기 일정은 사전 예고 없이 변경 될 수 있습니다.</li>
		</ul>
		
		<h3><img alt="" src="../img/title1.jpg">연결구간 수하물 안내</h3>
		<a class="accent">수하물 상세 요금표</a>
		<table>
			<tr>
				<td class="lugTB">환승시간</td>
				<td class="lugTB">노선 구분</td>
				<td class="lugTB">무료 수하물 허용량</td>
				<td class="lugTB">초과 수하물 요금</td>
				<td class="lugTB">연결 수속</td>
			</tr>
			<tr>
				<td rowspan="3" class="lugTB">24시간 이내 환승</td>
				<td class="lugTNB">국제선-국제선<br>(대양주 미포함)</td>
				<td class="lugTNB">정규운임 : 1개(20kg 이내)<br>할인운임 : 1개(15kg 이내)<br>특가운임 : 없음</td>
				<td class="lugTNB">수하물 상세 요금표 참조</td>
				<td class="lugTNB">가능</td>
			</tr>
			<tr>
				<td class="lugTNB">국제선-국제선<br>(대양주 포함)</td>
				<td class="lugTNB">1개 (23kg이내)</td>
				<td class="lugTNB">50 USD (무게 초과, 개수 초과)</td>
				<td class="lugTNB">가능</td>
			</tr>
			<tr>
				<td class="lugTNB">국제선-국내선</td>
				<td class="lugTNB">각 구간 규정에 따름</td>
				<td class="lugTNB">각 구간 규정에 따름</td>
				<td class="lugTNB">불가</td>
			</tr>
			<tr>
				<td class="lugTB">24시간 초과 환승</td>
				<td class="lugTNB">모든 노선</td>
				<td class="lugTNB">각 구간 규정에 따름</td>
				<td class="lugTNB">각 구간 규정에 따름</td>
				<td class="lugTNB">불가</td>
			</tr>
		</table>
		<ul>
			<li><span class="accent">50 USD = 50,000 KRW / 5,000 JPY / 250 CNY / 375 HKD / 1,500 THB / 1,500 TWD / 170 MYR / 375 MOP / 50EUR</span></li>
		</ul>
		
		<h3><img alt="" src="../img/title1.jpg">특수 수하물 안내</h3>
		<ul>
			<li>특수 수하물 접수를 위한 크기와 무게 제한은 아래와 같습니다.<br>&nbsp;- 크기 : <span class="accent">수하물 삼면의 합 (가로X세로X높이의 합)이 277cm이하 / 무게 : 32kg 이하</span></li>
			<li>특수 수하물은 모양과 크기가 일반 수하물과 달라 운송 도중 내용물이 휘거나 파손될 가능성이 높으니 전용케이스 또는 Box에 견고히 포장되어 있어야만 접수가 가능합니다.</li>
			<li>하드케이스(전용 포장용기)에 넣지 않은 특수 수하물은 파손 시 보상이 불가하오니 유의하여 주시기 바랍니다.</li>
			<li><span class="accent">특수 수하물은 항공기 탑재허용범위를 초과하는 경우 운송이 거절될 수 있습니다.</span></li>
		</ul>
		
		<p class="lugTitleS">스포츠 용품</p>
		<p class="lugCont">스포츠 용품의 경우 위탁 수하물 무료 허용량과 상관없이 별도의 운임이 부과 됩니다.</p>
		<table>
			<tr>
				<td class="luggageBackground">스포츠용품 요금 (개수 당, 출발지 현지통화 기준) : 10,000 원 / 10 USD / 1,000 JPY / 50 CNY / 100 HKD / 300 THB / 300 TWD / 35 MYR / 100 MOP / 10 EUR</td>
			</tr>
		</table>
		<ul>
			<li>적용품목 : 자전거, Surfboard, Windsurfing, 스키, 스노보드</li>
			<li>스포츠 용품은 일반 수하물 요금징수와 별도로 위탁 수하물 무료 허용량을 초과할 경우, 초과수하물 요금을 납부하여야 합니다.</li>
			<li>예시 : 국내선 이용 승객이 10kg 일반 수하물 1개와 7kg 자전거(특수수하물) 1개를 위탁한 경우<br>특수수하물 요금 : 10,000원<br>무게초과 : 4,000원 (국내선 무료 위탁 수하물 허용량 2kg 초과)<br>총 운임 : 14,000원 (특수 수하물 요금 10,000원 + 무게초과 요금 4,000원)</li>
		</ul>
		
		<p class="lugTitleS">골프</p>
		<ul>
			<li>골프백은 아래의 유예 규정에 따릅니다. (미주 외 국제 노선만 해당)</li>
			<li>[골프백 1개 + 일반가방 1개] 무게의 합이 15kg 이하 : 1개의 위탁수하물로 간주</li>
			<li>[골프백 1개 + 일반가방 1개] 무게의 합이 15kg 초과 23kg 이하 : 1개의 위탁수하물로 간주되나 무게초과 요금(16kg ~ 23kg) 부과</li>
			<li>[골프백 1개 + 일반가방 1개] 무게의 합이 23kg 초과 : 2개의 위탁수하물로 간주</li>
		</ul>
		
		<p class="lugTitleS">악기</p>
		<ul>
			<li>악기(기타,바이올린,관악기 등)를 위탁수하물로 부치시는 경우 운송 중 발생할 수 있는 파손에 대비하여 하드케이스 및 내부 충전재로 세심히 포장을 해주셔야만 접수가 가능합니다</li>
			<li>공항 탑승수속 카운터에서 악기를 수하물로 보내실때, 악기운송을 항공사에 위임한다는 서약서를 작성해 주셔야 합니다.</li>
			<li>대형악기의 기내반입을 원하시는 분은 반드시 사전에 예약 및 별도의 항공권을 구입하시기 바랍니다.</li>
			<li>문의 : 제주항공 고객센터 (1599-1500)</li>
		</ul>
		<a class="mybutton" id="popupB2">악기 운송 서약서</a>
	</div>
	
	<div id="luggageCont2">
		<h3><img alt="" src="../img/title1.jpg">항공기 반입금지 물품 안내</h3>
		<p class="lugCont">「항공 안전 및 보안에 관한 법률」제44조에 따라 금지 물품을 항공기로 반입하는 경우, 2년 이상 5년 이하의 징역에 처해지게 되오니 유의해 주시기 바랍니다.<br>동 기준은 대한민국 공항에서 적용되는 기준이며, 목적지가 외국일 경우에는 해당국의 추가 금지 물품이 있는지 항공사 또는 여행사로 확인하시기 바랍니다.</p>
		
		<p class="lugTitleS">폭발성, 인화성, 유독성 물질     기내반입<img alt="X" src="../img/luggageX.png"> 위탁수하물 <img alt="X" src="../img/luggageX.png"></p>
		<table id="lugT2_1">
			<tr>
				<td class="lugTB">폭발물류</td>
				<td class="lugTB">방사성, 전염성, 독성 물질</td>
				<td class="lugTB">인화성 물질</td>
				<td class="lugTB">기타 위험 물질</td>
			</tr>
			<tr>
				<td class="lugTNB"><img alt="" src="../img/luggage2.png"></td>
				<td class="lugTNB"><img alt="" src="../img/luggage3.png"></td>
				<td class="lugTNB"><img alt="" src="../img/luggage4.png"></td>
				<td class="lugTNB"><img alt="" src="../img/luggage5.png"></td>
			</tr>
			<tr>
				<td class="lugTNB">수류탄, 다이너마이트, 화약류, 연막탄, 조명탄, 폭죽, 지뢰, 뇌관, 신관, 도화선, 발파캡 등 폭발 장치</td>
				<td class="lugTNB">염소, 표백제, 산화제, 수은, 하수구 청소재제, 독극물, 의료용, 상업용 방사성 동위원소, 전염성, 생물학적 위험 물질 등</td>
				<td class="lugTNB">성냥, 라이터, 부탄가스 등 인화성 가스, 휘발유, 페인트 등 인화성 액체, 70% 이상의 알코올성 음료 등<br><br><span class="accent">단, 소형 안전성냥 및 휴대용 라이터는 각 1개에 한해 객실 반입 가능</span></td>
				<td class="lugTNB">소화기, 드라이아이스, 최루가스 등<br><br><span class="acccent">드라이아이스는 1인당 2.5kg에 한해 이산화탄소 배출이 용이하도록 안전하게 포장된 경우 항공사 승인 하에 반입 가능</span></td>
			</tr>
		</table>
		<ul>
			<li><span class="accent">※ 배터리 분리가 되지 않는 일체형 헤어고데기/무선고데기(Hair Curler)는 일본에서는 기내 및 위탁수하물로 운송이 불가합니다</span></li>
		</ul>
		
		<p class="lugTitleS">무기로 사용될 수 있는 물품     기내반입<img alt="X" src="../img/luggageX.png"> 위탁수하물 <img alt="O" src="../img/luggageO.png"></p>
		<table class="lugT2_2">
			<tr>
				<td class="lugTB">창, 도검류</td>
				<td class="lugTB">스포츠용품류</td>
				<td class="lugTB">총기류</td>
				<td class="lugTB">무술호신용품</td>
				<td class="lugTB">공구류</td>
			</tr>
			<tr>
				<td class="lugTNB"><img alt="" src="../img/luggage6.png"></td>
				<td class="lugTNB"><img alt="" src="../img/luggage7.png"></td>
				<td class="lugTNB"><img alt="" src="../img/luggage8.png"></td>
				<td class="lugTNB"><img alt="" src="../img/luggage9.png"></td>
				<td class="lugTNB"><img alt="" src="../img/luggage10.png"></td>
			</tr>
			<tr>
				<td class="lugTNB">과도, 커터 칼, 접이식 칼, 면도칼, 작살, 표창, 다트 등<br><br><span class="accent">안전면도날, 일반 휴대용 면도기, 전기면도기 등은 객실 반입 가능</span></td>
				<td class="lugTNB">야구 배트, 하키 스틱, 골프채, 당구 큐, 빙상용 스케이트, 아령, 볼링공, 활, 화살, 양궁 등<br><br><span class="accent">테니스 라켓 등 라켓류, 인라인스케이트, 스케이트보드, 등산용 스틱, 야구공 등 공기가 주입되지 않은 공류는 객실 반입 가능</span></td>
				<td class="lugTNB">모든 총기 및 총기 부품, 총알, 전자충격기, 장난감 총 등<br><br><span class="accent">총기류는 항공사에 소지 허가서 등을 확인 시키고 총알과 분리 후 위탁 가능</span></td>
				<td class="lugTNB">쌍절곤, 공격용 격투 무기, 경찰봉, 수갑, 호신용 스프레이 등<br><br><span class="acccent">호신용 스프레이는 1인당 1개(100㎖ 이하)만 위탁가능</span></td>
				<td class="lugTNB">도끼, 망치, 못 총, 톱, 송곳, 드릴/ 날길이 6㎝를 초과하는 가위, 스크루드라이버, 드릴 심류/ 총 길이 10㎝를 초과하는 렌치, 스패너, 펜치류/ 가축몰이 봉 등</td>
			</tr>
		</table>
		
		<p class="lugTitleS">일반생활용품 및 의료용품     기내반입<img alt="O" src="../img/luggageO.png"> 위탁수하물 <img alt="O" src="../img/luggageO.png"></p>
		<table class="lugT2_2">
			<tr>
				<td class="lugTB">생활도구류</td>
				<td class="lugTB">액체류 위생/용품</td>
				<td class="lugTB">의료장비 및 보행 보조도구</td>
				<td class="lugTB">구조용품</td>
				<td class="lugTB">건전지 및 개인용 휴대 전자장비</td>
			</tr>
			<tr>
				<td class="lugTNB"><img alt="" src="../img/luggage11.png"></td>
				<td class="lugTNB"><img alt="" src="../img/luggage12.png"></td>
				<td class="lugTNB"><img alt="" src="../img/luggage13.png"></td>
				<td class="lugTNB"><img alt="" src="../img/luggage14.png"></td>
				<td class="lugTNB"><img alt="" src="../img/luggage15.png"></td>
			</tr>
			<tr>
				<td class="lugTNB">수저, 포크, 손톱깎이, 긴 우산, 감자칼, 병따개, 와인따개, 족집게, 손톱 정리 가위, 바늘류, 제도용 컴파스 등</td>
				<td class="lugTNB">의약품류, 화장품, 염색약, 퍼머약, 목욕용품, 치약, 콘택트렌즈 용품, 소염제, 의료용 소독 알코올, 내복약, 외용연고 등<br><br><span class="accent">테니스 라켓 등 라켓류, 인라인스케이트, 스케이트보드, 등산용 스틱, 야구공 등 공기가 주입되지 않은 공류는 객실 반입 가능</span></td>
				<td class="lugTNB">주삿바늘, 체온계, 자동제세동기 등 휴대용 전자 의료장비, 인공심박기 등 인체 이식 장치, 지팡이, 목발, 휠체어, 유모차 등<br><br><span class="accent">수은체온계는 보호 케이스에 안전하게 보관된 경우 객실 반입 가능하며 전동휠체어는 배터리 위험성 등으로 위탁만 가능(건식 가능, 습식 불가)<br>일반휠체어의 경우 기내반입 사이즈에 한해 반입 가능</span></td>
				<td class="lugTNB">소형 산소통(5kg 이하), 구명조끼에 포함된 실린더 1쌍 (여분 실린더 1쌍도 가능), 눈사태용 구조 배낭 (1인당 1개)<br><br><span class="acccent">단, 안전기준에 맞게 포장되고, 해당 항공사 승인 필요</span></td>
				<td class="lugTNB">휴대용 건전지, 시계, 계산기, 카메라, 캠코더, 휴대폰, 노트북, MP3 등</td>
			</tr>
		</table>
		
		<table id="lugT2_3">
			<tr>
				<td align="left" valign="top"> 
					<p class="lugTitleS">국제선 객실내 액체류 반입 기준</p>
					<p class="lugCont">국제선 항공기를 이용하려는 승객은 아래와 같이 액체, 분무, 겔류 용품의 객실 내 반입이 엄격히 금지되므로 소지하신 물품이 허용 기준에 적합한지 미리 확인하시기 바랍니다.</p>
					<img alt="" src="../img/luggage16.png">
					<p class="lugCont">- 물, 음료, 식품, 화장품 등 액체, 분무(스프레이), 겔류(젤 또는 크림)로 된 물품은 100㎖ 이하의 개별용기에 담아, 1인당 1ℓ 투명 비닐 지퍼백 1개에 한해 반입이 가능<br>
									- 유아식 및 의약품 등은 항공 여정에 필요한 용량에 한하여 반입 허용, 단, 의약품 등은 처방전 등 증빙서류를 검색요원에게 제시
					</p>
				</td>
				<td>
					<p class="lugTitleS">위탁수하물 운송제한</p>
					<img alt="??" src="../img/luggage17.png">
				</td>
			</tr>
		</table>
		<table class="lugTL">
			<tr>
				<td>
					<ul>
						<li>
							<span class="accent">면세품 구입물품의 경우</span><br>
							공항 면세점 구입물품 또는 시내 면세점에서 구입 후 공항 면세점에서 전달받은 주류, 화장품 등의 액체류는 아래 조건을 모두 준수하는 경우 반입 가능<br>
							&nbsp;- 면세점에서 제공하는 투명 봉인 봉투 또는 국제표준 방식으로 제조된 훼손 탐지 가능 봉투(STEB : Security Tamper Evident Bag)로 포장<br>
							&nbsp;- 면세품 구입당시 교부받은 영수증이 훼손탐지기능봉투 안에 동봉 또는 부착된 경우에 한하여 용량에 관계없이 반입가능<br>
							&nbsp;- 기내에서 판매하는 액체류 면세품 중 비행여정의 단계(환승/통과포함)에서 보안검색 대상이 될 수 있는 액체류는 훼손탐지가능봉투로 포장<br>
							&nbsp;- 최종 목적지행 항공기 탑승 전까지 미개봉 상태 유지<br>
							<span class="accent">* 해외공항 환승/통과시, 보안규정이 상이하여 휴대한 액체류 물품에 대하여 포기/압수 절차를 따라야 할 경우가 발생할 수 있으니 항공기 기내 물품을 구매하는 환승/통과 승객의 경우에는 사전에 객실승무원에게 알려 주시기 바랍니다.</span>
						</li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="luggageCont3">
		<h3><img alt="" src="../img/title1.jpg">수하물 분실 및 배상</h3>
		<p class="lugTitleS">수하물 분실</p>
		<ul>
			<li>기내에서 발견된 물품은 도착지 공항에서 습득되는 경우가 많으며, 도착지 공항을 기준으로 찾는 것이 좋습니다.</li>
			<li>제주항공 규정에 따라 30일 이내에 습득된 유실물의 주인이 나타나지 않을 경우 해당 유실물은 폐기되오니 참고 바랍니다.</li>
			<li>제주항공 기내에 두고 내리신 물품 이외에 공항 시설 혹은 공항 이동 중에 분실한 물품은 출/도착지 유실물 관련 기관에 문의하시기 바랍니다.</li>
			<li>각 공항 유실물 관련 문의<br>
				- 인천공항 : 032-741-3110, 김포공항 02-2660-4097, 부산공항 : 051-974-3776, 제주공항 : 064-797-2521~2, 청주공항 : 043-210-6328, 대구공항: 053-980-5250</li>
		</ul>
		
		<p class="lugTitleS">수하물 분실 시 배상</p>
		<ul>
			<li>항공사 책임의 경우 배상액 규정</li>
			<li>소지품의 가격이 수하물 배상 한도액을 초과할 경우<br>
				- 수하물 또는 기타 소지품의 가격이 <span class="accent">수하물 배상한도액을 초과할 경우 사전에 그 가격을 신고</span>하여 매 초과 10,000원 또는 단수 액 당 55원(부가가치세 포함)의 종가 요금을<br>
				- 지불하시면 수하물 사고 시 신고된 금액 한도 내에서 배상 받으실 수 있습니다.<br>
				- 신고 가격이 1,000,000원이 넘는 물품은 제주항공과 사전협의가 없는 한 운송이 거절될 수 있습니다.</li>
		</ul>
		<table class="lugTL">
		<tr>
			<td>
				<ul>
					<li>
						<span class="accent">아래와 같은 물품에 한해서는 배상이 불가함을 알려드립니다.</span><br>
						1. 고객에 의한 사고 또는 과실로 손해가 발행한 경우.<br>
						2. 일반 수하물 허용량을 초과하여 발생한 수하물 파손(수하물 파손으로 인한 내용품 파손 및 분실포함)<br>
						3. 보안검색 과정에서 발생한 X-Ray 통과로 인한 필름의 손상<br>
						4. 수하물 고유의 결함 등에 기인한 파손, 손상과 정상적인 수하물 처리과정에서 발생하는 경미한 긁힘, 흠집, 눌림, 일반적인 마모 등<br>
						5. 노트북 컴퓨터, 핸드폰, MP3, 카메라, 캠코더, 전자사전 등 고객의 개인 전자제품 또는 데이터<br>
						6. 깨지기 쉬운 물품이나 부패하기 쉬운 물품, 건강과 관련된 의약품<br>
						7. 화폐, 보석, 유가증권, 골동품, 미술품, 견본, 인지류, 서류, 원고, 기타 고가품 및 의약품, 열쇠 등의 분실 위험 물품 등은 허용된 크기와 중량에 한하여 기내 반입은 가능하나 위탁 수하물로 분류되어 운송 도중 사고가 발생할 경우 발생되는 모든 손해에 대해서는 항공사는 책임을 지지 않습니다.
					</li>
				</ul>
			</td>
		</tr>
	</table>
	</div>
</div>

<div id="popup1">
	<div>
		<h3>지난 수하물 규정 안내<span class="close">X</span></h3><hr>
		<p class="lugTitleS">무료 수하물</p>
		<table>
			<tr>
				<td colspan="2" class="lugTB">구분</td>
				<td class="lugTB">무료 수하물</td>
			</tr>
			<tr>
				<td colspan="2" class="lugTB">국내선</td>
				<td class="lugTNB">15kg</td>
			</tr>
			<tr>
				<td rowspan="2" class="lugTB">국내선</td>
				<td class="lugTB">대양주 외 지역</td>
				<td class="lugTNB">15kg</td>
			</tr>
			<tr>
				<td class="lugTB">대양주(괌, 사이판)</td>
				<td class="lugTNB"><span class="accent">2개</span>, 각 23kg 이하 (2개 짐을 합한 3면의 합(가로/세로/높이)이 273cm 이하)</td>
			</tr>
			<tr>
				<td class="lugTB" colspan="2">유아</td>
				<td class="lugTNB">10kg (<span class="accent">국제선만 해당</span>, 국내선은 무료 허용량 없음)</td>
			</tr>
		</table>
		<ul>
			<li>휴대용 유모차, 보행기, Car seat, Carrying bassinet 등은 추가 허용합니다.</li>
			<li>휠체어 (전동 휠체어 포함)는 추가 허용합니다.</li>
		</ul>
		<p class="lugTitleS">초과 수하물</p>
		<p class="lugCont">수하물 무료 허용량을 초과할 경우 아래와 같은 요금으로 초과 수하물 요금이 부과됩니다.</p>
		<table>
			<tr>
				<td class="lugTB">지역</td>
				<td class="lugTB">도시</td>
				<td class="lugTB">한국출발</td>
				<td class="lugTB">해외출발</td>
			</tr>
			<tr>
				<td class="lugTB">국내</td>
				<td class="lugTNB">서울, 부산, 청주, 대구, 제주</td>
				<td class="lugTNB">2,000 원</td>
				<td class="lugTNB">-</td>
			</tr>
			<tr>
				<td class="lugTB">일본</td>
				<td class="lugTNB">도쿄, 후쿠오카, 오사카, 나고야, 오키나와</td>
				<td class="lugTNB">6,000 원</td>
				<td class="lugTNB">1,900 JPY</td>
			</tr>
			<tr>
				<td class="lugTB">중국</td>
				<td class="lugTNB">중국 산동성 제외 모든 지역</td>
				<td class="lugTNB">8,000 원</td>
				<td class="lugTNB">70 CNY</td>
			</tr>
			<tr>
				<td class="lugTB">대만</td>
				<td class="lugTNB">타이베이</td>
				<td class="lugTNB">8,000 원</td>
				<td class="lugTNB">350 TWD</td>
			</tr>
			<tr>
				<td class="lugTB">필리핀</td>
				<td class="lugTNB">마닐라, 세부</td>
				<td class="lugTNB">10,000 원</td>
				<td class="lugTNB">10 USD</td>
			</tr>
			<tr>
				<td class="lugTB">태국</td>
				<td class="lugTNB">방콕, 치앙마이</td>
				<td class="lugTNB">12,000 원</td>
				<td class="lugTNB">650 THB</td>
			</tr>
			<tr>
				<td class="lugTB">베트남</td>
				<td class="lugTNB">하노이, 다낭</td>
				<td class="lugTNB">12,000 원</td>
				<td class="lugTNB">20 USD</td>
			</tr>
		</table>
	</div>
	<div class="bg"></div>
</div>

<div id="popup2">
	<div>
		<h2>제주항공 서식 모음 <span class="close">X</span></h2>
		<p><span>&gt;</span>환불위임장</p>
		<p><span>&gt;</span>비동반 소아 여행신청서</p>
		<p><span>&gt;</span>비동반 소아 여행 보호자 동의 확인서</p>
		<p><span>&gt;</span>비동반 소아 여행 보호바 동의 확인서(필리핀)</p>
		<p><span>&gt;</span>비동반 소아 여행 보호바 동의 확인서(사이판)</p>
		<p><span>&gt;</span>비동반 소아 여행 보호바 동의 확인서(베트남)</p>
		<p><span>&gt;</span>애완동물 운송 서약서</p>
		<p><span>&gt;</span>악기 운송 서약서</p>
	</div>
	<div class="bg"></div>
</div>
</body>
</html>