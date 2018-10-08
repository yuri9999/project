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
	height: 900px;
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
	color: white;
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
	height: 120px;
}
.mt20 {
	margin-top: 20px;
}
.insurance {
	width: 300px;
	height: 150px;
	padding: 0 10px;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	cursor: pointer;
}
.insurance a {
	text-decoration: none;
	color: red;
}
.insurance th {
	text-align: center;
	font-weight: bold;
	font-size: 27px;	
}
.insurance td a {
	color: black;
}
.insurance span {
	font-size: 13px;
	color: gray;
}

</style>
</head>
<body>
<div id="guideHome">
	<h3 id="guideHomeNavi">JAJUAIR &gt; 여행상품<img alt="" src="../img/navimg.png"></h3><br>
	<h1>여행상품</h1>
	<p class="mt20">자주항공이 추천하는 다양한 여행상품을 소개합니다.</p>
	
	<table id="guideHmainT" class="mt20">
		<tr>
			<td class="guideHmainTd" id="back">
				<h3>국내 여행상품</h3><br>
				<img alt="예약안내" src="../img/jejutrip01.png"><br>
				<table class="ST">
					<tr>
						<td>제주도 여행</td>
					</tr>
				</table>
			</td>
			<td class="guideHmainTd">
				<h3><a href="../product/rooms.do">공항서비스</a></h3><br>
				<img alt="호텔" src="../img/rooms01.png"><br>
				<table class="ST">
					<tr>
						<td><a class="aa" href="../product/rooms.do">호텔</a></td>
					</tr>
				</table>
			</td>
			<td class="guideHmainTd">
				<h3><a href="../product/rentalCar.do">렌터카</a></h3><br>
				<img alt="렌트카" src="../img/rental01.png"><br>
				<table class="ST">
					<tr>
						<td><a class="aa" href="../product/rentalCar.do">렌터카</a></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<h3 class="mt20"><img src="../img/title1.jpg">제휴 상품</h3>
	
	<table class="insurance mt20">
		<tr>
			<th width="100px"><a href="../product/insurance.do">여행자 보험</a></th>
			<td><a href="../product/insurance.do">국내여행보험,<br>
				해외여행보험<br>
				<span>안전한 국내/ 해외 출장과 여행을 책임집니다.</span></a>
			</td>
		</tr>
	</table>
</div>
</body>
</html>