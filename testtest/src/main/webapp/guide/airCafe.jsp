<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#airCafe{
	width: 1200px;
	height: 900px;
	margin: auto;
}
#airCafe #airCafeNavi{
	font-weight: normal;
	color: #353535;
}
#airCafe h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
.aircafeIntro{
	margin-top: 40px;
}
.aircafeIntro img{
	margin-right: 20px;
	float: left;
}
.airCafecont{
	margin-top: 40px;
}
.airCafecont ul{
	margin-top:20px;
	margin-left: 50px;
}
.airCafecont ul li{
	list-style: square;
	font-size: 16px;
}
#accent{
	color: red;
}
</style>
</head>
<body>
<div id="airCafe">
<h3 id="airCafeNavi">JAJUAIR &gt; 서비스 안내 &gt; 기내서비스 &gt; Air Cafe<img alt="" src="../img/navimg.png"></h3><br>
<h1>Air Cafe</h1>
<div class="aircafeIntro">
	<img alt="" src="../img/aircafe.png">
	<p><br>자주항공에서는 기내에서 간편하게 드실 수 있는 먹을거리와 음료 등을 판매하는 Air Cafe 서비스를 운여하고있습니다.<br>
		더불어 자주항공 로고상품과 여행 편의를 도는 상품도 판매하고 있으니, Air Cafe와 함께 즐거운 하늘 여행 되세요.
	</p>
</div>
<div class="airCafecont">
	<h3><img alt="" src="../img/title1.jpg">이용안내</h3>
	<ul>
		<li>인천, 김포 및 지방 일부 노선에서 운영되고 있습니다.</li>
		<li>식사류는 일부 단거리 노선에서 판매되지 않습니다.</li>
		<li>일부 상품은 괌, 사이판 노선에서만 지공되며, 괌, 사이판 노선은 검역관계로 일부 품목이 판매되지 않습니다.</li>
		<li>상품은 조기 품절될 수 있으며, 이미지는 제공되는 제품과 다를 수 있습니다.</li>
		<li>개봉하신 제품은 반품이 불가능 합니다.</li>
		<li>제주항공에서는 에어카페 판매상품 이외의 식사를 위한 온수제공 및 오븐사용이 불가하오니, 이점 양해해주시기 바랍니다.<br>
			(단, 이유식과 분유 등은 제외)
		</li>
	</ul>
</div>
<div class="airCafecont">
	<h3><img alt="" src="../img/title1.jpg">결제안내</h3>
	<ul>
		<li>현금결제(￦,＄,￥)및 신용카드로 결제 가능합니다. (직불카드, 체크카드, 기프트카드, 하이브리드카드 제외)</li>
		<li>현금결제는 단일 화폐로만 결제 가능하며 엔화는 100엔 이상의 동전만 사용 가능합니다.</li>
		<li id="accent">국내선 에어카페의 경우, 원화 및 신용카드만 결제가능합니다.</li>
	</ul>
</div>
<div class="airCafecont">
	<h3><img alt="" src="../img/title1.jpg">식품 섭취 전 주의사항</h3>
	<ul>
		<li>특정 식품에 대한 알레르기 또는 유사 증상이 있는 승객께서는 탑승 전 반드시 상기(하기) 메뉴를 확인하여 주시기 바랍니다.</li>
		<li>땅콩 알레르기 승객을 위한 안내 자주항공 일부 노선에서는 땅콩 또는 땅콩 성분이 함유된 제품을 제공 하고 있으며,<br>
			다른 승객의 땅콩 소지 및 취식을 금지할 수 없기 때문에 땅콩의 영향을 받지 않는 기내 환경을 보장할 수 없습니다.<br>
			이에 땅콩 알레르기 또는 유사 증상이 의심되는 승객께서는 의사와 여행계획을 상의하실 것을 권해드립니다.
		</li>	
	</ul>
</div>
</div>
</body>
</html>