<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#guideHome{
	width: 1200px;
	height: 800px;
	margin: auto;
}
#guideHome #guideHomeNavi{
	font-weight: normal;
	color: #353535;
}
#guideHome h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
#guideHome h3{
	margin-top: 30px;
}
.accent{
	color: red;
}
#guideHmainT .guideHmainTd{
	height: 250px;
	width: 400px;
	border: 1px solid #ccc;
	border-spacing: 0;
}
#guideHome #back{
	background-color: #4B1152;
	height: 250px;
}
#guideHome #back a{
	color: white;
}
#guideHome h3{
	font-size: 20px;
}
#guideHome h3 a{
	text-decoration: none;
}
#guideHome .aa{
	text-decoration: none;
	color: black;
}

#guideHome .aa{
	font-size: 13px;
}
.ST td{
	width: 200px;
}
</style>
</head>
<body>
<div id="guideHome">
	<h3 id="guideHomeNavi">JAJUAIR &gt; 서비스 안내<img alt="" src="../img/navimg.png"></h3><br>
	<h1>서비스 안내</h1>
	<p>제주항공이 제공하는 다양한 서비스와 혜택을 확인하세요</p>
	
	<table id="guideHmainT">
		<tr>
			<td class="guideHmainTd" id="back">
				<h3><a href="../guide/airReservation.do">예약안내</a></h3><br>
				<img alt="예약안내" src="../img/guideHome1.png"><br>
				<table class="ST">
					<tr>
						<td><a class="aa" href="../guide/airReservation.do">항공권 예매</a></td>
					</tr>
					<tr>
						<td><a class="aa" href="../guide/airRefund.do">항공권 환불</a></td>
					</tr>
				</table>
			</td>
			<td class="guideHmainTd">
				<h3><a href="../guide/boardingRule.do">공항서비스</a></h3><br>
				<img alt="공항서비스" src="../img/guideHome2.png"><br>
				<table class="ST">
					<tr>
						<td><a class="aa" href="../guide/boardingRule.do">탑승 수속 절차</a></td>
						<td><a class="aa" href="../guide/luggage.do">수하물</a></td>
					</tr>
					<tr>
						<td><a class="aa" href="../guide/onlineTicket.do">온라인 탑승권</a></td>
						<td><a class="aa" href="../guide/counter.do">자주항공 카운터</a></td>
					</tr>
					<tr>
						<td><a class="aa" href="../guide/cityAirport.do">도심공항 이용안내</a></td>
						<td><a class="aa" href="../guide/help.do">도움이 필요한 승객</a></td>
					</tr>
				</table>
			</td>
			<td class="guideHmainTd">
				<h3><a href="../guide/innerService.do">기내서비스</a></h3><br>
				<img alt="기내서비스" src="../img/guideHome3.png"><br>
				<table class="ST">
					<tr>
						<td><a class="aa" href="../guide/innerService.do">기내서비스</a></td>
					</tr>
					<tr>
						<td><a class="aa" href="../guide/airCafe.do">Air Cafe</a></td>
					</tr>
					<tr>
						<td><a class="aa" href="../guide/dutyFree.do">기내 면세점 판매</a></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>
</body>
</html>