<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#item{
	width: 1200px;
	height: 900px;
	margin: auto;
}
#item #itemNavi{
	font-weight: normal;
	color: #353535;
}
#item h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
#item .itemIntro{
	margin-top: 70px;
}
#item .itemIntro img{
	float: left;
	margin-right: 20px;
}
#item .itemIntro p{
	font-size: 13px;
}
#item .itemCont{
	margin-top: 70px;
}
#item .itemCont table{
	margin-top:20px;
	border-spacing: 0;
	width: 1200px;
}
#item .itemCont .itemTabletitle{
	background-color: #EAEAEA;
}
#item .itemCont table td{
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
	text-align: center;
}
#item .itemCont table .bor{
	border-right: 1px solid #ccc;
}
.accent{
	width: 1200px;
	color: red;
	font-size: 13px;
	text-align: right;
}
</style>
</head>
<body>
<div id="item">
<h3 id="itemNavi">JAJUAIR &gt; 서비스 안내 &gt; 부가서비스 &gt; 유료 아이템<img alt="" src="../img/navimg.png"></h3><br>
<h1>유료 아이템</h1>
<div class="itemIntro">
	<img alt="" src="../img/item.png">
	<p><br>포장용 비닐 : 맡기시는 짐, 유모차 등을 포장할 수 있는 비닐 제공<br>
		애완동물 박스(국내선) : 기내에 애완동물과 함께 탑승하실 경우, 애완동물용 1회용 박스 제공
	</p>
</div>
<div class="itemCont">
	<h3><img alt="" src="../img/title1.jpg">포장용품 가격</h3>
	<table>
		<tr class="itemTabletitle">
			<td class="bor">구분</td>
			<td colspan="10">가격</td>
		</tr>
		<tr>
			<td class="bor">포장용 비닐(소)<br>750mm x 1,050mm</td>
			<td class="bor">2,000 원</td>
			<td class="bor">2 USD</td>
			<td class="bor">200 JPY</td>
			<td class="bor">10 CNY</td>
			<td class="bor">15 HKD</td>
			<td class="bor">60 THB</td>
			<td class="bor">60 TWD</td>
			<td class="bor">7 MYR</td>
			<td class="bor">15 MOP</td>
			<td>2 EUR</td>
		</tr>
		<tr>
			<td class="bor">포장용 비닐(대)<br>1,000mm x 1,510mm</td>
			<td class="bor">3,000 원</td>
			<td class="bor">3 USD</td>
			<td class="bor">300 JPY</td>
			<td class="bor">20 CNY</td>
			<td class="bor">25 HKD</td>
			<td class="bor">100 THB</td>
			<td class="bor">100 TWD</td>
			<td class="bor">10 MYR</td>
			<td class="bor">25 MOP</td>
			<td>3 EUR</td>
		</tr>
		<tr>
			<td>애완동물박스</td>
			<td>5,000 원</td>
			<td colspan="9">국제선은 해당없음</td>
		</tr>
	</table>
	<span class="accent">* 모든 포장용품은 구매 후 환불이 불가합니다.<br></span>
	<span class="accent">* 모든 포장용품은 각 공항 카운터에서 문의하시기 바랍니다.</span>
</div>
</div>
</body>
</html>