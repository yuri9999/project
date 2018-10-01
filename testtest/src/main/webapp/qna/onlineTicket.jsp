<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		this._$banners = $('.slide');

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
<style type="text/css">
#onlineTicket{
	width: 1200px;
	height: 1100px;
	margin: auto;
}
#onlineTicket #onlineTicketNavi{
	font-weight: normal;
	color: #353535;
}
#onlineTicket h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
.accent{
	color: red;
}
#onlineSlide{
	margin: 0 auto;
    position:relative;
    width:1000px;
    height:250px;
    overflow:hidden;;
    border:1px solid #ccc;
}
#onlineSlide .slide{
    position:absolute;
    top:100px;
    left:0;
    width: 1200px;
    height: 250px;
}
</style>
</head>
<body>
<div id="onlineTicket">
	<h3 id="onlineTicketNavi">JAJUAIR &gt; 서비스 안내 &gt; 공항서비스 &gt; 온라인/모바일 탑승권<img alt="" src="../img/navimg.png"></h3><br>
	<h1>온라인 / 모바일 탑승권</h1>
	
	<div id="onlineDiv">
		<button>국내선</button>
		<button>국제선</button>
		<div id="onlineSlide">
			<div class="slide"><h2>문자로 탑승권을 공유하세요!</h2><br>온라인/모바일 탑승권 발급 시 자주항공 홈페이지 회원정보에 입력된<br>휴대폰 번호로 문자(알림톡)를 자동 발송해드립니다.</div>
			<div class="slide"><h2>온라인/모바일 탑승권이란?</h2>자주항공 홈페이지. 모바일웹/앱에서 탑승수속을 하실 수 있는 서비스입니다.<br>온라인/모바일 탑승권은 항공편 출발 24시간 전부터 30분 전까지 이용 가능합니다.</div>
		</div>
		<a>온라인 탑승권 발급하기</a>
		<a>모바일 탑승권 발급하기</a>
		<div id="divKor">
			<div class="onlineKorTime">
				<h3><img alt="" src="../img/title1.jpg">대상 노선 / 승객 및 이용시간</h3>
				<ul>
					<li>전 국내선 항공편</li>
					<li>제주항공으로 예약이 확약된 승객</li>
					<li>국내선 항공편 출발 예정 24시간 전부터 1시간 전까지 이용 가능합니다.</li>
					<li></li>
				</ul>
			</div>
		</div>
	</div>
</div>
</body>
</html>