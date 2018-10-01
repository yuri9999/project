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
	<h1>온라인 탑승권</h1>
	
	<div id="onlineDiv">
		<button>국내선</button>
		<button>국제선</button>
		<div id="onlineSlide">
			<div class="slide"><h2>문자로 탑승권을 공유하세요!</h2><br>온라인 탑승권 발급 시 자주항공 홈페이지 회원정보에 입력된<br>휴대폰 번호로 문자(알림톡)를 자동 발송해드립니다.</div>
			<div class="slide"><h2>온라인/모바일 탑승권이란?</h2>자주항공 홈페이지. 앱에서 탑승수속을 하실 수 있는 서비스입니다.<br>온라인 탑승권은 항공편 출발 24시간 전부터 30분 전까지 이용 가능합니다.</div>
		</div>
		<a>온라인 탑승권 발급하기</a>
		<div id="divKor">
			<div class="onlineKorTime">
				<h3><img alt="" src="../img/title1.jpg">대상 노선 / 승객 및 이용시간</h3>
				<ul>
					<li>전 국내선 항공편</li>
					<li>제주항공으로 예약이 확약된 승객</li>
					<li>국내선 항공편 출발 예정 24시간 전부터 1시간 전까지 이용 가능합니다.</li>
					<li><a>이용 제한 고객</a></li>
				</ul>
			</div>
			
			<div>
				<h3><img alt="" src="../img/title1.jpg">온라인 탑승권 이용안내</h3>
				<table border="1">
					<tr>
						<td>1. 항공권 예매 > 온라인 탑승권 클릭</td>
						<td rowspan="5">6</td>
					</tr>
					<tr>
						<td>2. 자주항공에서 항공권 구매 시 홈페이지 로그인<br>타사이트에서 항공권구매 시 출발지, 도착지, 예약번호, 성명 입력 후 여정조회</td>
					</tr>
					<tr>
						<td>3. 본인 및 동승객 좌석 선택 이용 제한 고객은 카운터에서 수속하시기 바랍니다.</td>
					</tr>
					<tr>
						<td>4. 온라인 탑승권 발급</td>
					</tr>
					<tr>
						<td>5. 온라인 탑승권 공유(문자, 이메일), 인쇄</td>
					</tr>
				</table>
			</div>
			
			<div id="onlineExample">
				<h3><img alt="" src="../img/title1.jpg">온라인 탑승권 예시</h3>
				<table>
					<tr>
						<td>
							이미지
						</td>
						<td>
							이미지
						</td>
					</tr>
				</table>
			</div>
			
			<div>
				<h3><img alt="" src="../img/title1.jpg">공항에서의 절차</h3>
				<table>
					<tr>
						<td>
							이미지
						</td>
						<td>
							<h3>온라인 탑승권 발급 완료</h3>
							온라인 탑승권 발급 완료 후 탑승권....
						</td>
					</tr>
					<tr>
						<td>
							이미지
						</td>
						<td>
							<h3>온라인 탑승권 발급 완료</h3>
							온라인 탑승권 발급 완료 후 탑승권....
						</td>
					</tr>
					<tr>
						<td>
							이미지
						</td>
						<td>
							<h3>온라인 탑승권 발급 완료</h3>
							온라인 탑승권 발급 완료 후 탑승권....
						</td>
					</tr>
					<tr>
						<td>
							이미지
						</td>
						<td>
							<h3>온라인 탑승권 발급 완료</h3>
							온라인 탑승권 발급 완료 후 탑승권....
						</td>
					</tr>
				</table>
				<p class="note">유의사항</p>
				<ul>
					<li>스케줄은 정부인가 조건이며, 공항사정, 항공기 교체 등의 부득이한 사유로 사전 예고 없이 예약하신 좌석, 탑승구가 변경될 수 있습니다.</li>
					<li>프린터, 모바일,시스템 등 기술적인 문제로 인해 온라인 탑승권 출력 및 전송이 안될경우, 공항 카운터에서 탑승수속을 해 주시기 바랍니다.</li>
					<li>인쇄하신 온라인 탑승권의 분실, 도난, 위변조로 인한 손해에 대하여 자주항공은 책임지지 않습니다.</li>
				</ul>	
			</div>
			
		</div>
		
	</div>
</div>
</body>
</html>