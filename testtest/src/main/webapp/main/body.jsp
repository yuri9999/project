<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.rolling-banner{
	margin: 0 auto;
    position:relative;
    width:1400px;
    height:400px;
    overflow:hidden;;
    border:1px solid #ccc;
}
.rolling-banner img{
    position:absolute;
    top:100px;
    left:0;
    width: 1400px;
    height: 400px;
}
#reservation{
	margin: auto;
	padding: 0;
	position: absolute;
	top: 350px;
	left: 350px;
	width: 1200px;
	height: 120px;
	background-color: white;
	border-bottom: 3px solid #4B1152;
	border-left: 3px solid #4B1152;
}
#reservation a{
	text-align: center;
	color: #4B1152;
	padding-bottom: 4px;
	border-bottom: 3px solid #4B1152;
}
#reservation input{
	margin: 0;
	padding: 0;
	width: 100px;
	height: 40px;
	background-color: white;
	text-align: center;
}
#reservation img{
	margin-top: 10px;
	padding: 0;
	width: 40px;
	height: 40px;
	vertical-align: bottom;
}

#price{
	margin-top: 100px;
	margin-left:375px;
	padding: 0;
	width: 1200px;
	height: 320px;
	border-bottom: 1px solid #ccc;
}
#price ul{
	margin-top: 40px;
	margin-left: 35px;
	float: left;
	list-style: none;
	width: 300px;
	height: 250px;
}
#price ul li{
	margin-top: 20px;
	margin-left: 35px;
	font-size: 20px;
}
#price ul li a{
	text-decoration: none;
	color: #363636;
}
#price ul li a:hover{
	text-decoration: underline;
	color: #4B1152;
}

#notice{
	margin-top: 40px;
	margin-left:375px;
	padding: 0;
	width: 1200px;
	height: 220px;
	border-bottom: 1px solid #ccc;
}
#notice ul{
	margin-top: 20px;
	margin-left: 35px;
	list-style: none;
	width: 1200px;
	height: 170px;
}
#notice ul li{
	font-size: 17px;
	text-align: left;
	margin-bottom: 7px;
}
#notice ul li a{
	float: left;
	color: #353535;
	text-decoration: none;
}
#notice ul li p{
	font-size: 14px;
	text-align: right;
}

#service{
	margin-top: 20px;
	margin-left: 275px;
	padding: 0;
	width: 1350px;
	height: 650px;
	border-bottom: 1px solid #ccc;
}
#service #bakcimg{
	margin:0;
	padding: 0;
	width: 1350px;
	height: 600px;
}
#service table{
	margin-top: -250px;
	margin-left: 125px;
}
#service table img{
	width: 330px;
	height: 150px;
}

#event{
	margin-top: 40px;
	margin-left:375px;
	padding: 0;
	width: 1200px;
	height: 400px;
	border-bottom: 1px solid #ccc;
}
#event table{
	width: 1100px;
	height: 280px;
	margin: 30px auto;
}
#event table td{
	width: 250px;
	height: 250px;
	margin: auto;
	font-size: 13px;
}
#event table td a{
	text-decoration: none;
	color: #353535;
}
#event table td img{
	width: 250px;
	height: 250px;
}

#bodyetc{
	margin-top: 20px;
	margin-left: 375px;
	padding: 0;
	width: 1200px;
	height: 300px;
}
#bodyetc h2{
	text-align: left;
}
#bodyetc .etc1{
	float: left;
	width: 500px;
	height: 280px;
}
#ebodyetc .etc1 td{
	width: 250px;
}
#bodyetc .etc1 img{
	width: 80px;
	height: 80px;
	float: left;
}
#bodyetc .etc1 h3{
	color: #353535;
}
#bodyetc .etc1 a{
	text-decoration: none;
	color: #333;
}
#bodyetc .etc1 a:hover{
	text-decoration: none;
	color: #ccc;
}
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
// 이벤트배너 쿼리함수 여기서부터
$(function() {
	var rolling1 = new RollingBanner();
});
function RollingBanner() {
	this._$banners = null;
	this._currentIndex = 0;
	this._timerID = -1;

	this._init();
	this._initBannerPos();
	this.startAutoPlay();
}

RollingBanner.prototype = {
	'_init': function() {
		this._$banners = $('#banner1 img');

	},
	'_initBannerPos': function() {
		this._$banners.css({
			top: 400
		});
		this._$banners.eq(this._currentIndex).css({
			top: 0
		});
	},
	'startAutoPlay': function() {
		var _self = this;
		console.log(this._timerID);
		this._timerID = setInterval(function() {
			_self.nextBanner();
		}, 3000)
	},
	'nextBanner': function() {
		var outIndex = this._currentIndex;
		this._currentIndex++;
		if (this._currentIndex >= this._$banners.length) {
			this._currentIndex = 0;
		}
		var $outBanner = this._$banners.eq(outIndex);
		var $inBanner = this._$banners.eq(this._currentIndex);
		$inBanner.css({
			top: 400,
			opacity: 0
		});
		$outBanner.stop().animate({
			top: -400,
			opacity: 0
		}, 600);
		$inBanner.stop().animate({
			top: 0,
			opacity: 1
		}, 600);
	}
}
//여기까지
</script>
</head>
<body>
<div id="banner1" class="rolling-banner">
	<a href="#"><img src="../img/banner1.jpg"></a>
	<a href="#"><img src="../img/banner2.jpg"></a>
	<a href="#"><img src="../img/banner3.jpg"></a>
</div>
<div id="reservation">
	<table>
		<tr>
			<td align="center" colspan="2">
				<a>왕복</a>
			</td>
			<td align="center" colspan="2">
				<a>편도</a>
			<td colspan="3">
			
			</td>
		</tr>
		<tr>
			<td align="center">
				<input type="text" name="start" disabled="disabled">
				<img src="../img/start.jpg">
			</td>
			<td align="center">
				<input type="text" name="arrive" disabled="disabled">
				<img src="../img/arrive.jpg">
			</td>
			<td align="center">
				<input type="text" name="startDay"  disabled="disabled">
				<img src="../img/cal.jpg">
			</td>
			<td align="center">
				<input type="text" name="arriveDay" disabled="disabled">
				<img src="../img/cal.jpg">
			</td>
			<td align="center">
				<input type="text" name="adult" disabled="disabled">
				<img src="../img/man.jpg">
			</td>
			<td align="center">
				<input type="text" name="kids" disabled="disabled">
				<img src="../img/man.jpg">
			</td>
			<td align="center" valign="middle" id="reserButton">
				<input type="button" value="예매하기">
			</td>
		</tr>
	</table>
</div>
<div id="price">
	<h2>추천 특가</h2>
	
	<ul>
		<h3>일본 특가</h3>
		<li><a href="#">~일본어디 ￦175,000</a></li>
		<li><a href="#">~일본어디 ￦175,000</a></li>
		<li><a href="#">~일본어디 ￦175,000</a></li>
		<li><a href="#">~일본어디 ￦175,000</a></li>
	</ul>
	
	<ul>
		<h3>동남아 특가</h3>
		<li><a href="#">~동남아어디 ￦175,000</a></li>
		<li><a href="#">~동남아어디 ￦175,000</a></li>
		<li><a href="#">~동남아어디 ￦175,000</a></li>
		<li><a href="#">~동남아어디 ￦175,000</a></li>
	</ul>
	
	<ul>
		<h3>추천여행지 특가</h3>
		<li><a href="#">~추천여행지 ￦175,000</a></li>
		<li><a href="#">~추천여행지 ￦175,000</a></li>
		<li><a href="#">~추천여행지 ￦175,000</a></li>
		<li><a href="#">~추천여행지 ￦175,000</a></li>
	</ul>
</div>
<div id="notice">
	<h2>새소식</h2>
	<ul>
		<li><a href="#">태풍 매미로 인한 일본 항공편 연착지연상황 안내</a><p>(09.13~)</p></li>
		<li><a href="#">태풍 매미로 인한 동남아 항공편 연착지연상황 안내</a><p>(09.13~)</p></li>
		<li><a href="#">2018년 8월 수화물 수령 현황</a><p>(~09.31)</li>
		<li><a href="#">인도네시아 항공편 아시안게임 특가 종료 안내</a><p>(~09.07)</p></li>
		<li><a href="#">국내선 유류 할증로 공지</a><p>(~10.11)</p></li>
	</ul>
</div>
<div id="service">
	<img src="../img/airfort.jpg" id="bakcimg">
		
	<table>
		<tr>
			<td colspan="3">
				<h2>서비스 안내</h2>
			</td>
		</tr>
		<tr>
			<td>
				<a>예약안내</a><br>
				<img src="../img/infos.jpg">
			</td>
			<td>
				<a>기내서비스</a><br>
				<img src="../img/inners.jpg">
			</td>
			<td>
				<a>부가서비스</a><br>
				<img src="../img/vs.jpg">
			</td>
		</tr>
	</table>
</div>
<div id="event">
	<h2>이벤트</h2>
	<table>
		<tr>
			<td>
				<a href="#">
					<img src="../img/event1.jpg"><br>
					<b>신규가입 첫 탑승 이벤트</b>
					<p>2018.09.13 ~ 2019.05.13</p>
				</a>
			</td>
			<td>
				<a href="#">
					<img src="../img/event2.png"><br>
					<b>JAJUAIR 페이스북 오픈 이벤트</b>
					<p>2018.09.13 ~ 2019.05.13</p>
				</a>
			</td>
			<td>
				<a href="#">
					<img src="../img/event3.jpg"><br>
					<b>T-mon과 함께하는 마일리지 이벤트</b>
					<p>2018.09.13 ~ 2019.05.13</p>
				</a>
			</td>
			<td>
				<a href="#">
					<img src="../img/event4.jpg"><br>
					<b>REPAIRA 마일리지 적립 이벤트</b>
					<p>2018.09.13 ~ 2019.05.13</p>
				</a>
			</td>
		</tr>
	</table>
</div>
<div id="bodyetc">
	<table class="etc1">
		<tr>
			<td colspan="2">
				<h2>자주에어 더알아보기</h2>
			</td>
		</tr>
		<tr>
			<td>
				<a href="#"><img src="../img/logo.png"><h3>자주에어 앱</h3><br><p>→ 디지털 여행 동반자</p></a>
			</td>
			<td>
				<a href="#"><h3>자주에어 뉴스레터</h3><br>최신소식을 통해 매력적인<br>특가상품을 놓치지 마십시오<p>→ 지금 등록하기</p></a>
			</td>
		</tr>
	</table>
	<table class="etc1">
		<tr>
			<td colspan="2">
				<h2>고객안내</h2>
			</td>
		</tr>
		<tr>
			<td>
				<a href="#"><h3>고객센터</h3><br><p>→ 고객 불만사항 해결</p></a>
			</td>
			<td>
				<a href="#"><h3>고객센터</h3><br><p>→ 고객 문의</p></a>
			</td>
		</tr>
	</table>
</div>
</body>
</html>


















