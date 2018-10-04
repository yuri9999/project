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

$(function() {
	$("#interB").click(function() {
		$("#divKor").css("display","none");
		$("#divInter").css("display","block");
		$("#korB").css("border-left","none");
		$("#korB").css("border-right","none");
		$("#korB").css("border-top","none");
		$("#korB").css("background-color","white");
		$("#interB").css("background-color","#EAEAEA");
		$("#interB").css("border-left","3px solid #4B1152");
		$("#interB").css("border-right","3px solid #4B1152");
		$("#interB").css("border-top","3px solid #4B1152");
	});
	
	$("#korB").click(function() {
		$("#divInter").css("display","none");
		$("#divKor").css("display","block");
		$("#interB").css("border-left","none");
		$("#interB").css("border-right","none");
		$("#interB").css("border-top","none");
		$("#interB").css("background-color","white");
		$("#korB").css("background-color","#EAEAEA");
		$("#korB").css("border-left","3px solid #4B1152");
		$("#korB").css("border-right","3px solid #4B1152");
		$("#korB").css("border-top","3px solid #4B1152");
	});
	
	$(".onlineClick:eq(0)").click(function() {
		$(".onlineImg").html("<img src='../img/onlineT1.png'>");
		$(".onlineClick:eq(0)").css("border","3px solid #4B1152");
		$(".onlineClick:eq(1)").css("border","none");
		$(".onlineClick:eq(2)").css("border","none");
		$(".onlineClick:eq(3)").css("border","none");
		$(".onlineClick:eq(4)").css("border","none");
	});
	
	$(".onlineClick:eq(1)").click(function() {
		$(".onlineImg").html("<img src='../img/onlineT2.png'>");
		$(".onlineClick:eq(0)").css("border","none");
		$(".onlineClick:eq(1)").css("border","3px solid #4B1152");
		$(".onlineClick:eq(2)").css("border","none");
		$(".onlineClick:eq(3)").css("border","none");
		$(".onlineClick:eq(4)").css("border","none");
	});
	
	$(".onlineClick:eq(2)").click(function() {
		$(".onlineImg").html("<img src='../img/onlineT3.png'>");
		$(".onlineClick:eq(0)").css("border","none");
		$(".onlineClick:eq(1)").css("border","none");
		$(".onlineClick:eq(2)").css("border","3px solid #4B1152");
		$(".onlineClick:eq(3)").css("border","none");
		$(".onlineClick:eq(4)").css("border","none");
	});
	
	$(".onlineClick:eq(3)").click(function() {
		$(".onlineImg").html("<img src='../img/onlineT4.png'>");
		$(".onlineClick:eq(0)").css("border","none");
		$(".onlineClick:eq(1)").css("border","none");
		$(".onlineClick:eq(2)").css("border","none");
		$(".onlineClick:eq(3)").css("border","3px solid #4B1152");
		$(".onlineClick:eq(4)").css("border","none");
	});
	
	$(".onlineClick:eq(4)").click(function() {
		$(".onlineImg").html("<img src='../img/onlineT5.png'>");
		$(".onlineClick:eq(0)").css("border","none");
		$(".onlineClick:eq(1)").css("border","none");
		$(".onlineClick:eq(2)").css("border","none");
		$(".onlineClick:eq(3)").css("border","none");
		$(".onlineClick:eq(4)").css("border","3px solid #4B1152");
	});
	
	$(".onlineClick:eq(5)").click(function() {
		$(".onlineImg").html("<img src='../img/onlineT1.png'>");
		$(".onlineClick:eq(5)").css("border","3px solid #4B1152");
		$(".onlineClick:eq(6)").css("border","none");
		$(".onlineClick:eq(7)").css("border","none");
		$(".onlineClick:eq(8)").css("border","none");
		$(".onlineClick:eq(9)").css("border","none");
	});
	
	$(".onlineClick:eq(6)").click(function() {
		$(".onlineImg").html("<img src='../img/onlineT2.png'>");
		$(".onlineClick:eq(5)").css("border","none");
		$(".onlineClick:eq(6)").css("border","3px solid #4B1152");
		$(".onlineClick:eq(7)").css("border","none");
		$(".onlineClick:eq(8)").css("border","none");
		$(".onlineClick:eq(9)").css("border","none");
	});
	
	$(".onlineClick:eq(7)").click(function() {
		$(".onlineImg").html("<img src='../img/onlineT3.png'>");
		$(".onlineClick:eq(5)").css("border","none");
		$(".onlineClick:eq(6)").css("border","none");
		$(".onlineClick:eq(7)").css("border","3px solid #4B1152");
		$(".onlineClick:eq(8)").css("border","none");
		$(".onlineClick:eq(9)").css("border","none");
	});
	
	$(".onlineClick:eq(8)").click(function() {
		$(".onlineImg").html("<img src='../img/onlineT4.png'>");
		$(".onlineClick:eq(5)").css("border","none");
		$(".onlineClick:eq(6)").css("border","none");
		$(".onlineClick:eq(7)").css("border","none");
		$(".onlineClick:eq(8)").css("border","3px solid #4B1152");
		$(".onlineClick:eq(9)").css("border","none");
	});
	
	$(".onlineClick:eq(9)").click(function() {
		$(".onlineImg").html("<img src='../img/onlineT5.png'>");
		$(".onlineClick:eq(5)").css("border","none");
		$(".onlineClick:eq(6)").css("border","none");
		$(".onlineClick:eq(7)").css("border","none");
		$(".onlineClick:eq(8)").css("border","none");
		$(".onlineClick:eq(9)").css("border","3px solid #4B1152");
	});
});
//여기까지
</script>
<style type="text/css">
#onlineTicket{
	width: 1200px;
	height: 2200px;
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
    width:1200px;
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
#onlineTicket #divKor{
	display: block;
	margin-top: 40px;
}
#onlineTicket #divInter{
	display: none;
	margin-top: 40px;
}
#onlineClickfirst {
	border: 3px solid #4B1152;
}
.onlineClick{
	cursor: pointer;
}
#onlineTicket table{
	width: 1200px;
	border: 1px solid #ccc;
}
#korB{
	text-decoration: none;
	width: 150px;
	height: 50px;
	border: none;
	border-left: 2px solid #4B1152;
	border-right: 2px solid #4B1152;
	border-top: 2px solid #4B1152;
	background-color: #EAEAEA;
}
#interB{
	text-decoration: none;
	width: 150px;
	height: 50px;
	border: none;
	background-color: white;
}
#onlineTicket ul li{
	margin-left: 50px;
	list-style: square;
	font-size: 13px;
}
#onlineTicket #onlineDiv{
	margin-top: 40px;
}
#onlineTicket #onlineClickDiv{
	margin-top: 40px;
}
#onlineTicket #onlineClickDiv table td{
	width: 600px;
}
#onlineTicket #onlineClickDiv table td img{
	width: 600px;
}
#onlineTicket #onlineStep{
	margin-top: 40px;
}
#onlineTicket #onlineStep table{
	border: none;
	border-spacing: 0;
}
#onlineTicket #onlineStep .onlineStepL{
	width: 200px;
	border-bottom: 1px solid #ccc;
}
#onlineTicket #onlineStep .onlineStepL img{
	margin-left: 75px;
}
#onlineTicket #onlineStep .onlineStepR{
	border-bottom: 1px solid #ccc;
	padding-left:100px;
	padding-top: 20px;
	padding-bottom: 20px;
	font-size: 13px;
}
#onlineTicket #onlineExample{
	margin-top: 40px; 
}
.note{
	margin-top: 40px;
	font-weight: bold;
	font-size: 15px;
}
</style>
</head>
<body>
<div id="onlineTicket">
	<h3 id="onlineTicketNavi">JAJUAIR &gt; 서비스 안내 &gt; 공항서비스 &gt; 온라인 탑승권<img alt="" src="../img/navimg.png"></h3><br>
	<h1>온라인 탑승권</h1>
	
	<div id="onlineDiv">
		<button id="korB" >국내선</button>
		<button id="interB" >국제선</button>
		<div id="onlineSlide">
			<div class="slide"><h2>문자로 탑승권을 공유하세요!</h2><br>온라인 탑승권 발급 시 자주항공 홈페이지 회원정보에 입력된<br>휴대폰 번호로 문자(알림톡)를 자동 발송해드립니다.</div>
			<div class="slide"><h2>온라인/모바일 탑승권이란?</h2>자주항공 홈페이지. 앱에서 탑승수속을 하실 수 있는 서비스입니다.<br>온라인 탑승권은 항공편 출발 24시간 전부터 30분 전까지 이용 가능합니다.</div>
	</div>
		<a>온라인 탑승권 발급하기</a>
		<div id="divKor">
			<div class="onlineKorTime">
				<h3><img alt="" src="../img/title1.jpg">국내 대상 노선 / 승객 및 이용시간</h3>
				<ul>
					<li>전 국내선 항공편</li>
					<li>제주항공으로 예약이 확약된 승객</li>
					<li>국내선 항공편 출발 예정 24시간 전부터 1시간 전까지 이용 가능합니다.</li>
					<li><a class="accent">이용 제한 고객</a></li>
				</ul>
			</div>
			
			<div id="onlineClickDiv">
				<h3><img alt="" src="../img/title1.jpg">온라인 탑승권 이용안내</h3>
				<table>
					<tr>
						<td class="onlineClick" id="onlineClickfirst">1. 항공권 예매 > 온라인 탑승권 클릭</td>
						<td rowspan="5" class="onlineImg">
							<img alt="" src="../img/onlineT1.png">
						</td>
					</tr>
					<tr>
						<td class="onlineClick">2. 자주항공에서 항공권 구매 시 홈페이지 로그인<br>타사이트에서 항공권구매 시 출발지, 도착지, 예약번호, 성명 입력 후 여정조회</td>
					</tr>
					<tr>
						<td class="onlineClick">3. 본인 및 동승객 좌석 선택 이용 제한 고객은 카운터에서 수속하시기 바랍니다.</td>
					</tr>
					<tr>
						<td class="onlineClick">4. 온라인 탑승권 발급</td>
					</tr>
					<tr>
						<td class="onlineClick">5. 온라인 탑승권 공유(문자, 이메일), 인쇄</td>
					</tr>
				</table>
			</div>
			
			<div id="onlineExample">
				<h3><img alt="" src="../img/title1.jpg">온라인 탑승권 예시</h3>
				<table>
					<tr>
						<td>
							<img alt="" src="../img/onlineT6.jpg">
						</td>
						<td>
							<img alt="" src="../img/onlineT7.jpg">
						</td>
					</tr>
				</table>
			</div>
			
			<div id="onlineStep">
				<h3><img alt="" src="../img/title1.jpg">공항에서의 절차</h3>
				<table>
					<tr>
						<td class="onlineStepL">
							<img alt="" src="../img/onlineStep1.png">
						</td>
						<td class="onlineStepR">
							<h3>온라인 탑승권 발급 완료</h3>
							온라인 탑승권 발급 완료 후 탑승권을 출력하거 ㅏㄴ문자로 모바일 탑승권을전송 받습니다.<br>
							<span class="accent">
							항공기 출발 20분전까지 출발장에 입장하지 않으시면 탑승이 거절 될 수 있습니다. 각 공항별 공항 공사 사정으로 인햐어<br>
							서비스 이용이 불가할 수도 있으며, 공항 혼잡 시간대에는최수 출발 1시간 전에 출발장에 도착하시길 권해드립니다.
							</span>
						</td>
					</tr>
					<tr>
						<td class="onlineStepL">
							<img alt="" src="../img/onlineStep2.png">
						</td>
						<td class="onlineStepR">
							<h3>공항도착</h3>
							부치실 짐이 없는 경우, 공항 카운터를 방문하지 않고 출발장 입장이 가능합니다.<br>
							부치실 짐이 있는 경우. 제주항공 카운터에서 짐을 부치신 후 출발장으로 이동하시기 바랍니다.
						</td>
					</tr>
					<tr>
						<td class="onlineStepL">
							<img alt="" src="../img/onlineStep3.png">
						</td>
						<td class="onlineStepR">
							<h3>보안검색</h3>
							출발장 입구에서 보안 요원에게 QR코드가 인새된 온라인 탑승권과 신분증(주민등록증/운전면허증/여권 등)을<br>
							제시한 후 <span class="accent">게이트 안내 용지</span>를 수령합니다. 보안 검색 후 탑승 게이트로 이동합니다.
						</td>
					</tr>
					<tr>
						<td class="onlineStepL">
							<img alt="" src="../img/onlineStep4.png">
						</td>
						<td class="onlineStepR">
							<h3>항공기 탑승</h3>
							국내선은 항공기출발 15분 전 탑승시작, 출발 5분 전 탑승 마갑합니다.<br>
							출발 탑승구에 미리 도착 후 대기하시어 정시출발에 협조를 부탁드립니다.<bR>
							탑승구 통과시와 기내에서는QR코드가 표기된 모바일 탑승권을 제시하여 주시기 바랍니다.
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
		
		<div id="divInter">
			<div class="onlineInterTime">
				<h3><img alt="" src="../img/title1.jpg">국제 대상 노선 / 승객 및 이용시간</h3>
				<ul>
					<li>전 국제선 항공편</li>
					<li>제주항공으로 예약이 확약된 승객</li>
					<li>국내선 항공편 출발 예정 24시간 전부터 1시간 전까지 이용 가능합니다.</li>
					<li><a>이용 제한 고객</a></li>
				</ul>
			</div>
		
			<div>
				<h3><img alt="" src="../img/title1.jpg">온라인 탑승권 이용안내</h3>
				<table>
					<tr>
						<td class="onlineClick" id="onlineClickfirst">1. 항공권 예매 > 온라인 탑승권 클릭</td>
						<td rowspan="5" class="onlineImg">
							<img alt="" src="../img/onlineT1.png">
						</td>
					</tr>
					<tr>
						<td class="onlineClick">2. 자주항공에서 항공권 구매 시 홈페이지 로그인<br>타사이트에서 항공권구매 시 출발지, 도착지, 예약번호, 성명 입력 후 여정조회</td>
					</tr>
					<tr>
						<td class="onlineClick">3. 본인 및 동승객 좌석 선택 이용 제한 고객은 카운터에서 수속하시기 바랍니다.</td>
					</tr>
					<tr>
						<td class="onlineClick">4. 온라인 탑승권 발급</td>
					</tr>
					<tr>
						<td class="onlineClick">5. 온라인 탑승권 공유(문자, 이메일), 인쇄</td>
					</tr>
				</table>
			</div>
			
			<div id="onlineExample">
				<h3><img alt="" src="../img/title1.jpg">온라인 탑승권 예시</h3>
				<table>
					<tr>
						<td>
							<img alt="" src="../img/onlineT6.jpg">
						</td>
						<td>
							<img alt="" src="../img/onlineT7.jpg">
						</td>
					</tr>
				</table>
			</div>
			
			<div id="onlineStep">
				<h3><img alt="" src="../img/title1.jpg">공항에서의 절차</h3>
				<table>
					<tr>
						<td class="onlineStepL">
							<img alt="" src="../img/onlineStep1.png">
						</td>
						<td class="onlineStepR">
							<h3>온라인 탑승권 발급 완료</h3>
							온라인 탑승권 발급 완료 후 탑승권을 출력하거 ㅏㄴ문자로 모바일 탑승권을전송 받습니다.<br>
							<span class="accent">
							항공기 출발 20분전까지 출발장에 입장하지 않으시면 탑승이 거절 될 수 있습니다. 각 공항별 공항 공사 사정으로 인햐어<br>
							서비스 이용이 불가할 수도 있으며, 공항 혼잡 시간대에는최수 출발 1시간 전에 출발장에 도착하시길 권해드립니다.
							</span>
						</td>
					</tr>
					<tr>
						<td class="onlineStepL">
							<img alt="" src="../img/onlineStep2.png">
						</td>
						<td class="onlineStepR">
							<h3>공항도착</h3>
							부치실 짐이 없는 경우, 공항 카운터를 방문하지 않고 출발장 입장이 가능합니다.<br>
							부치실 짐이 있는 경우. 제주항공 카운터에서 짐을 부치신 후 출발장으로 이동하시기 바랍니다.
						</td>
					</tr>
					<tr>
						<td class="onlineStepL">
							<img alt="" src="../img/onlineStep3.png">
						</td>
						<td class="onlineStepR">
							<h3>보안검색</h3>
							출발장 입구에서 보안 요원에게 QR코드가 인새된 온라인 탑승권과 신분증(주민등록증/운전면허증/여권 등)을<br>
							제시한 후 <span class="accent">게이트 안내 용지</span>를 수령합니다. 보안 검색 후 탑승 게이트로 이동합니다.
						</td>
					</tr>
					<tr>
						<td class="onlineStepL">
							<img alt="" src="../img/onlineStep4.png">
						</td>
						<td class="onlineStepR">
							<h3>항공기 탑승</h3>
							국내선은 항공기출발 15분 전 탑승시작, 출발 5분 전 탑승 마갑합니다.<br>
							출발 탑승구에 미리 도착 후 대기하시어 정시출발에 협조를 부탁드립니다.<bR>
							탑승구 통과시와 기내에서는QR코드가 표기된 모바일 탑승권을 제시하여 주시기 바랍니다.
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