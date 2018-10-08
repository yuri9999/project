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
.content {
	margin: 60px 0 0 0;
}
.cars {
	list-style: none;
}
.cars:after{
	display: block;
  	clear: both;
  	content: '';
}
.cars li {
	float : left;
	width: 320px;
	padding: 0 20px 0 20px;
	margin: 30px 0 20px 0;
}
.koreaArea,.global,.jeju,.njoy {
	width: 320px;
	border: 1px solid black;
}
.koreaArea_img, .global_img, .jeju_img, .njoy_img {
	width: 320px;
	height: 150px;
}
.koreaArea_con, .global_con, .jeju_con, .njoy_con {
	padding: 10px 0 0 10px;
	height : 180px;
	border-bottom: 1px solid black;
}
.koreaArea_link, .global_link, .jeju_link, .njoy_link {
	text-align: center;
	padding-top : 10px;
	height: 33px;
}
.koreaArea_link a, .global_link a, .jeju_link a, .njoy_link a {
	text-decoration: none;
	color: black;
}
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".koreaArea").hover(function(){
			$(this).css("border","1px solid red");
			$(".koreaArea_con").css("border-bottom","1px solid red");
			$(".koreaArea_link a").css("color","red");
		},function(){
			$(this).css("border","1px solid black");
			$(".koreaArea_con").css("border-bottom","1px solid black");
			$(".koreaArea_link a").css("color","black");
		});
		$(".global").hover(function(){
			$(this).css("border","1px solid red");
			$(".global_con").css("border-bottom","1px solid red");
			$(".global_link a").css("color","red");
		},function(){
			$(this).css("border","1px solid black");
			$(".global_con").css("border-bottom","1px solid black");
			$(".global_link a").css("color","black");
		});
		$(".jeju").hover(function(){
			$(this).css("border","1px solid red");
			$(".jeju_con").css("border-bottom","1px solid red");
			$(".jeju_link a").css("color","red");
		},function(){
			$(this).css("border","1px solid black");
			$(".jeju_con").css("border-bottom","1px solid black");
			$(".jeju_link a").css("color","black");
		});
		$(".njoy").hover(function(){
			$(this).css("border","1px solid red");
			$(".njoy_con").css("border-bottom","1px solid red");
			$(".njoy_link a").css("color","red");
		},function(){
			$(this).css("border","1px solid black");
			$(".njoy_con").css("border-bottom","1px solid black");
			$(".njoy_link a").css("color","black");
		});
	});
</script>
</head>
<body>
<div id="airCafe">
	<h3 id="airCafeNavi">HOME &gt; 여행상품  &gt; 렌터카예약<img alt="" src="../img/navimg.png" target="_blank"></h3><br>
	<h1>렌터카예약</h1>
	<div class="content">
		<ul class="cars">
			<li>
				<div class="koreaArea">
					<div class="koreaArea_img">
						<img alt="" src="../img/koreaarea.jpg">
					</div>
					<div class="koreaArea_con">
						<h3>한국지역 (딜카)</h3>
						<p>제주항공 회원 대상 특별 혜택!<br>
						신규 회원 24시간, 기존 회원 20,000원<br>
						무료 쿠폰 지급</p>
					</div>
					<div class="koreaArea_link">
						<a href="https://m.deliverycar.co.kr/pcsn/v2/intgLanding.do?cupnId=cpn000000004540&evnt=jejuair_rentcar&utm_source=jejuair&utm_medium=%EC%9E%85%EC%A0%90" target="_blank">신규고객 쿠폰받기</a>
					</div>
				</div>
			</li>
			<li>
				<div class="global">
					<div class="global_img">
						<img alt="" src="../img/global.jpg">
					</div>
					<div class="global_con">
						<h3>렌탈카스 (글로벌)</h3>
						<p>제주도, 괌, 사이판, 일본, 태국 등<br>
						전세계 어디든 렌터카 예약 가능<br>
						기간별 최대 15% 할인으로 최저가 예약하세요!</p>
					</div>
					<div class="global_link">
						<a href="http://www.rentalcars.com/?affiliateCode=jejuair&preflang=ko&adplat=hometab" target="_blank">실시간 예약</a>
					</div>
				</div>
			</li>
			<li>
				<div class="jeju">
					<div class="jeju_img">
						<img alt="" src="../img/jeju.jpg">
					</div>
					<div class="jeju_con">
						<h3>제주렌트카 (제주지역)</h3>
						<p>바로 받고, 바로 반납하는<br>
						PREMIUM ONE-STOP RENT-A-CAR SERVICE<br>
						제주항공 회원 - 전 차종 최대 83% 우대할인</p>
					</div>
					<div class="jeju_link">
						<a href="http://newinbus.jejurentcar.co.kr/sub/realtime/index.php?sgubun=02" target="_blank">실시간 예약</a>
					</div>
				</div>
			</li>
		</ul>
	</div><!-- content -->
</div><!-- airCafe -->	
</body>
</html>