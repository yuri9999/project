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
	height: 1100px;
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
	margin: 60px 0 0 0px;
}
.rooms {
	list-style: none;
}
.rooms:after{
	display: block;
  	clear: both;
  	content: '';
}
.rooms li {
	float : left;
	width: 320px;
	padding: 0 20px 0 20px;
	margin: 30px 0 20px 0;
}
.agoda,.eggbnb,.booking,.njoy {
	width: 320px;
	border: 1px solid black;
}
.agoda_img, .eggbnb_img, .booking_img, .njoy_img {
	width: 320px;
	height: 150px;
}
.agoda_con, .eggbnb_con, .booking_con, .njoy_con {
	padding: 10px 0 0 10px;
	height : 180px;
	border-bottom: 1px solid black;
	border-top:none; 
}
.agoda_link, .eggbnb_link, .booking_link, .njoy_link {
	text-align: center;
	padding-top : 10px;
	height: 33px;
}
.agoda_link a, .eggbnb_link a, .booking_link a, .njoy_link a {
	text-decoration: none;
	color: black;
}
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".agoda").hover(function(){
			$(this).css("border","1px solid red");
			$(".agoda_con").css("border-bottom","1px solid red");
			$(".agoda_link a").css("color","red");
		},function(){
			$(this).css("border","1px solid black");
			$(".agoda_con").css("border-bottom","1px solid black");
			$(".agoda_link a").css("color","black");
		});
		$(".eggbnb").hover(function(){
			$(this).css("border","1px solid red");
			$(".eggbnb_con").css("border-bottom","1px solid red");
			$(".eggbnb_link a").css("color","red");
		},function(){
			$(this).css("border","1px solid black");
			$(".eggbnb_con").css("border-bottom","1px solid black");
			$(".eggbnb_link a").css("color","black");
		});
		$(".booking").hover(function(){
			$(this).css("border","1px solid red");
			$(".booking_con").css("border-bottom","1px solid red");
			$(".booking_link a").css("color","red");
		},function(){
			$(this).css("border","1px solid black");
			$(".booking_con").css("border-bottom","1px solid black");
			$(".booking_link a").css("color","black");
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
	<h3 id="airCafeNavi">HOME &gt; 여행상품 &gt; 숙소 &gt; 호텔<img alt="" src="../img/navimg.png"></h3><br>
	<h1>호텔예약</h1>
	<div class="content">
		<ul class="rooms">
			<li>
				<div class="agoda">
					<div class="agoda_img">
						<img alt="" src="../img/agoda.jpg">
					</div>
					<div class="agoda_con">
						<h3>아고다 (www.agoda.com)</h3>
						<p>아고다 최저가 보장제!<br>
						전 세계 호텔 최대 80%<br>
						추가 할인 특가로 더욱 스마트한 여행을 만드세요</p>
					</div>
					<div class="agoda_link">
						<a href="https://www.agoda.com/ko-kr/jejuairpromo?cid=1645089" target="_blank">실시간 호텔예약</a>
					</div>
				</div>
			</li>
			<li>
				<div class="eggbnb">
					<div class="eggbnb_img">
						<img alt="" src="../img/eggbnb.jpg">
					</div>
					<div class="eggbnb_con">
						<h3>에그비앤비 (eggbnb.com)</h3>
						<p>세계 속 한국의 집, 에그비앤비<br>
						전세계 한인민박부터 특급호텔까지<br>
						가심비 최고 숙소들을 만나보세요!</p>
					</div>
					<div class="eggbnb_link">
						<a href="https://eggbnb.com/main/main.html" target="_blank">실시간 숙소예약</a>
					</div>
				</div>
			</li>
			<li>
				<div class="booking">
					<div class="booking_img">
						<img alt="" src="../img/booking.jpg">
					</div>
					<div class="booking_con">
						<h3>부킹닷컴 (www.booking.com)</h3>
						<p>Book Now, Pay Later!<br>
						전세계 200만개 숙소를 찾을 수 있는 부킹닷컴<br>
						지금 예약하시고 결제는 현장에서 하세요!</p>
					</div>
					<div class="booking_link">
						<a href="https://sp.booking.com/index.html?aid=1575349" target="_blank">실시간 호텔예약</a>
					</div>
				</div>
			</li>
		</ul>
		<ul class="rooms">
			<li>
				<div class="njoy">
					<div class="njoy_img">
						<img alt="" src="../img/njoy.jpg">
					</div>
					<div class="njoy_con">
						<h3>호텔엔조이 (www.hotelnjoy.com)</h3>
						<p>더 특별해지는 경험,<br>
						세일헌터들의 특별한 선택!<br>
						다양한 호텔/리조트를 최저가에 이용하세요.</p>
					</div>
					<div class="njoy_link">
						<a href="http://www.hotelnjoy.com/alliance/kor/roomlist.php?v_agent=VA8DCw8BCQYG&v_subCode=&v_sso_id=&resizeDomain=">실시간 호텔예약</a>
					</div>
				</div>
			</li>
		</ul>
	
	</div><!-- content -->
</div><!-- airCafe -->		
</body>
</html>