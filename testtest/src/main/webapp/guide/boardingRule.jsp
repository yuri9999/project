<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#boardingRule{
	width: 1200px;
	height: 1100px;
	margin: auto;
}
.boardingRuleimg{
	margin-top: 20px;
	float: left;
}
#boardingRule #boardingRuleNavi{
	font-weight: normal;
	color: #353535;
}
#boardingRule h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
.accent{
	color: red;
}
#boardingRule #boardingProcess table{
	width: 1200px;
}
#boardingRule #boardingProcess table .imgTd{
	width: 1200px;
	height: 50px;
	padding-left: 100px;
}
#boardingRule #boardingProcess table .imgTd img{
	width: 1000px;
}
#boardingRule #boardingProcess table .processTd{
	width: 235px;
	text-align: center;
	font-weight: bold;
}
#boardingRule #boardingProcess table .processTd .processNum{
	color: #4B1152;
}
#boardingRule .bodingProcessDT{
	margin-top: 10px;
	font-weight: bold;
}
#boardingRule ul{
	margin-left: 40px;
	margin-top: 20px;
}
#boardingRule ul li{
	list-style: square;
	font-size: 13px;
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
</style>
</head>
<body>
<div id="boardingRule">
	<h3 id="boardingRuleNavi">JAJUAIR &gt; 서비스 안내 &gt; 공항서비스 &gt; 탑승수속 절차<img alt="" src="../img/navimg.png"></h3><br>
	<h1>항공권 예매</h1>
	<img alt="" src="../img/boardingRule.png" class="boardingRuleimg"><p><br><br>자주항공을 이용하시는 고객님의 공항 도착에서부터 항공기 탑승까지 절차를 안내해 드립니다.</p><br><br>
	
	<div id="boardingProcess">
		<h3><img alt="" src="../img/title1.jpg">탑승수속 절차</h3>
		<table>
			<tr>
				<td colspan="5" class="imgTd">
					<img src="../img/boardingProcess.png">
				</td>
			</tr>
			<tr>
				<td class="processTd"><p class="processNum">01</p>공항도착</td>
				<td class="processTd"><p class="processNum">02</p>탑승수속</td>
				<td class="processTd"><p class="processNum">03</p>세관, 검역,<br>병무신고</td>
				<td class="processTd"><p class="processNum">04</p>보안검색, 출국심사</td>
				<td class="processTd"><p class="processNum">05</p>항공기 탑승</td>
			</tr>
		</table>
		<p class="bodingProcessDT">&gt; 공항도착</p>
		<ul>
			<li>국내선 : 항공기 출발 40분전 공항도착</li>
			<li>국제선 : 항공기 출발 2시간 전 공항도착(인천공항 : 2시간 30분전)</li>
		</ul>
		<p class="bodingProcessDT">&gt; 탑승수속</p>
		<ul>
			<li>국내선 : 항공기 출발 20분전 탑승수속 마감</li>
			<li>국제선 : 항공기 출발 1시간 전 탑승수속 마감</li>
		</ul>
		<p class="bodingProcessDT">&gt; 세관, 병무, 검역신고</p>
		<ul>
			<li>세관신고 : 여행에서 돌아올 때 다시 가져올 귀중품이나 고가품들은 출국전 세관 출국 신고대에서 세관 신고를 하셔야 하며, 미화 1만불을 초과하는 여행 경비를 소지하고 나가실 경우에도 신고를 하셔야 합니다.</li>
			<li>병무신고: 병역 의무자가 국외를 여행하고자 할 때는 병무청에 국외여행허가를 받고 출국 당일 법무부 출입국에서 출국심사 시 국외여행허가 증명서를 제출하여야 합니다.</li>
			<li>검역신고 : 도착지 국가에 따라 검역증명서를확이하는 경우가 있으므로 반드시 확인하시기 바랍니다.</li>
		</ul>
		<a href="https://www.airport.kr/ap_cnt/ko/dep/process/deppro.do" class="mybutton" target="_blank">세관/병무/검역 신고안내</a>
		<p class="bodingProcessDT">&gt; 보안검색, 출국심사</p>
		<ul>
			<li>
				보안검색<br>
				여행자와 항공기의 안전을 위해 여행객 및 휴대품을 대상으로 보안검색을 실시합니다.<br>
				기내반입 금지물품을 아래 링크에서 사전에 확인해 주세요.
			</li>
		</ul>
			<a href="https://www.airport.kr/ap_lp/ko/dep/process/pubsecu/pubsecu.do" class="mybutton" target="_blank">보안검색안내</a>
		<ul>
			<li>
				출국심사<br>
				1)여행객은 유요한 여권을 소지하고 도착국가 또는 경유하는 국가의 유요한 입국사증 소지 여부를 확인하여야 합니다.<br>
				2)출국심사 후 면세지역에서는 현금출굼(외환관리법에 의거 현금출금기 설치 불가)이 불가하오니 출국심사 전에 현금출금등 여행에 필요하신 준비를 마치시기 바랍니다.<br>
				무인 자동 출국 심사 : 무인 자동 출입국 심사 서비스에 사전 등록을 마친 고객은 좀 더 편리하고 신속하게 출국심사를 받을 수 있습니다. 
			</li>
		</ul>
		<a href="https://www.airport.kr/ap_cnt/ko/dep/depche/depche.do" class="mybutton" target="_blank">출국심사안내</a>
		<p class="bodingProcessDT">&gt; 항공기 탑승</p>
		<ul>
			<li>국제선 항공편은 출발시간 30분 전 탑승시작,15분 전 탑승마감 예정이오니 정시 출발에 협조를 부탁드립니다.</li>
			<li>국내선 항공편은 출발시간 20분 전 탑승시작, 5분 전 탑승마감 예정이오니 정시 출발에 협조를 부탁드립니다.</li>
		</ul>
		<a href="http://www.airport.co.kr/" class="mybutton" target="_blank">탑승안내(김포)</a>
		<a href="https://www.airport.kr/ap/ko/dep/depPasSchList.do" class="mybutton" target="_blank">탑승안내(인천)</a>
	</div>
</div>
</body>
</html>