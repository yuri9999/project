<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/step1.css">
<link rel="stylesheet" href="../css/step4.css">
<link rel="stylesheet" href="../css/showConsole3.css">
<style type="text/css">
#container{

height: 1600px;}
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/showConsole.js"></script>
<script type="text/javascript">
/*		우측콘솔 위치 js			*/
var currentScrollTop = 0;
	        
// 비동기식 jQuery이므로 window load 후 jQuery를 실행해야 함
window.onload = function() {
	// 새로고침 했을 경우를 대비한 메소드 실행
    scrollController();
       
    // 스크롤을 하는 경우에만 실행됨
	$(window).on('scroll', function() {
    	scrollController();
	});
}
	        
// 메인 메뉴의 위치를 제어하는 함수
function scrollController() {
	currentScrollTop = $(window).scrollTop();
	if (currentScrollTop < 170) {
		$('#showConsole').css('top', 170-(currentScrollTop));
		if ($('#showConsole').hasClass('fixed')) {      
		}
	} else {
		if (!$('#showConsole').hasClass('fixed')) {
	    	$('#showConsole').css('top', -1 );                
	    }
	}
}

// 카드선택 리스트 숨기기
$(function(){
	$("#ulCardOpt").hide();
});
// 신용카드 선택 default
$(function(){
	$(".trPayment td:eq(0)").addClass("selectedBox");
});
// 카드 선택 클릭 이벤트
$(function(){
	$("#selectCardOpt").click(function(){
		$("#ulCardOpt").slideToggle(200);
	});
	$("#ulCardOpt li").click(function(){
		var target = $(this).html();
		$("#selectCardOpt span").html(target);
		$("#ulCardOpt").hide();
	})
});
// 결제 수단 클릭 이벤트
$(function(){
	$(".trPayment td").click(function(){
		$(this).addClass("selectedBox");
		$(this).removeClass("trPayment");
		if($(this).hasClass("creditCard")){
			$(".cardInform").show();
			$(".payInform div").not(".cardInform").hide();
		} else if($(this).hasClass("trans")){
			$(".transInform").show();
			$(".payInform div").not(".transInform").hide();
		} else {
			$(".cardInform").hide();
			$(".foreignInform").hide();
			$(".transInform").hide();
		}
		
		
		$(".trPayment td").not(this).addClass("trPayment");
		$(".trPayment td").not(this).removeClass("selectedBox");
	});
});

// 할부 리스트 숨기기
$(function(){
	$("#ulNumOpt").hide();
});
//할부 선택 클릭 이벤트
$(function(){
	$("#selectNumOpt").click(function(){
		$("#ulNumOpt").slideToggle(200);
	});
	$("#ulNumOpt li").click(function(){
		var target = $(this).html();
		$("#selectNumOpt span").html(target);
		$("#ulNumOpt").hide();
	})
});

// 결제수단 별 알림 list 숨김
$(function(){
	$(".foreignInform").hide();
	$(".transInform").hide();
});
</script>
</head>
<body>
<form action="bookPay.do" method="post" name="step04">

<!-- hidden input태그  -->
<input type="hidden" id="luggagePrice1_1" name="luggagePrice1_1">
<input type="hidden" id="luggagePrice1_2" name="luggagePrice1_2">
<input type="hidden" id="luggageQty1_1" name="luggageQty1_1">
<input type="hidden" id="luggageQty1_2" name="luggageQty1_2">
<input type="hidden" id="seatNum1_1" name="seatNum1_1">
<input type="hidden" id="seatNum1_2" name="seatNum1_2">
<input type="hidden" id="seatPrice1_1" name="seatPrice1_1">
<input type="hidden" id="seatPrice1_2" name="seatPrice1_2">
<input type="hidden" id="eatPrice1_1" name="eatPrice1_1">
<input type="hidden" id="eatPrice1_2" name="eatPrice1_2">

<div id="container">
	
	
		<!--step1,2,3,4 부분  -->	
		<div id="top">
			<h1>항공권 예매</h1>
			<ul class="stepNav threeWide setp04" >
				<li><span>Step.1</span><strong>구간 및 운임 선택</strong></li>
				<li><span>Step.2</span><strong>탑승자 정보 입력</strong></li>
				<li><span>Step.3</span><strong>부가서비스 선택</strong></li>
				<li><span class="stepNavOn1">Step.4</span><strong class="stepNavOn2">항공권 결제</strong></li> 
			</ul>
		</div>
		
	<!-- left Space -->
	<div id="leftSpace">
	
		<!--일반 결제 정보  -->
		<div id="selectPayment" class="choices">
			<h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>일반 결제 정보</strong></h4>
			<div id="payContent">
				<table id="tables">
					<tr>
						<td><img alt="bul0.png" src="../img/bul0.png"> 결제수단</td>
						<td>	
							<table id="tablePayment">
								<tr class="trTitle">
									<td colspan="2" align="left" class="payTitle">신용카드 및 계좌이체</td><td></td><td></td>
								</tr>
								<tr class="trPayment">
									<td class="creditCard">신용카드</td>
									<td class="foreignCard">해외신용카드</td>
									<td class="trans">실시간 계좌이체</td>
									<td class="empty"></td>
								</tr>
								<tr class="trTitle">
									<td align="left" class="payTitle">간편결제</td><td></td><td></td><td></td>
								</tr>
								<tr class="trPayment">
									<td><img alt="kakao" src="../img/step04/ico_kakaopay.gif"></td>
									<td><img alt="npay" src="../img/step04/ico_npay.gif"></td>
									<td><img alt="payco" src="../img/step04/ico_payco.gif"></td>
									<td><img alt="paypal" src="../img/step04/ico_paypal.gif"></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr id="trCard">
						<td><img alt="bul0.png" src="../img/bul0.png"> 카드종류</td>
						<td>
							<table id="tableSelectCard">
								<tr>
									<td class="cardOpt">
										<div id="selectCardOpt"><span>카드선택</span><img alt="btn" src="../img/step04/btn.png"> </div>
										<ul id="ulCardOpt">
											<li>카드선택</li>
											<li>KB국민</li>
											<li>신한카드</li>
											<li>삼성카드</li>
											<li>농협카드</li>
											<li>우리카드</li>
											<li>롯데카드</li>
											<li>씨티카드</li>
											<li>기업은행</li>
											<li>하나카드</li>
										</ul>
										<span id="infoCard">기프트/선불/직불카드 사용불가</span>
										<input type="button" onclick="" value="제휴카드혜택">
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr id="trDivide">
						<td><img alt="bul0.png" src="../img/bul0.png"> 할부선택</td>
						<td>
							<table id="tableDivide">
								<tr>
									<td class="divideOpt">
										<div id="selectNumOpt"><span>할부선택</span><img alt="btn" src="../img/step04/btn.png"> </div>
										<ul id="ulNumOpt">
											<li>할부선택</li>
											<li>일시불</li>
											<li>2개월</li>
											<li>3개월</li>
											<li>4개월</li>
											<li>5개월</li>
											<li>6개월</li>
											<li>12개월</li>
											<li>24개월</li>
											<li>36개월</li>
										</ul>
										<input type="button" value="무이자할부">
										<input type="button" onclick="location.href='https://www.easypay.co.kr/help.jsp'" value="결제시 안내 가이드">
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>			
			</div>
			<div id="resultWrap">
				<div class="result">결제 예정 금액 <span class="prices" id="totalPrice" name="luggagePrice">0 ${totalPrice}</span> KRW</div>
			</div>
			<div class="payInform">
				<div class="cardInform">
					<li>ㆍ구매일 및 환율에 따라 차이가 있을 수 있으며, <br>
					&nbsp;&nbsp; 일부 해외카드 결제수수료로 인해 실제 청구금액은 최종 결제금액과 다를 수 있습니다.</li>
					<li>ㆍ자세한 사항은 해당 카드사를 통해 확인 바랍니다.</li>
				</div>
				<div class="foreignInform">
					<li>ㆍ구매일 및 환율에 따라 차이가 있을 수 있으며, <br>
					&nbsp;&nbsp; 일부 해외카드 결제수수료로 인해 실제 청구금액은 최종 결제금액과 다를 수 있습니다.</li>
					<li>ㆍ자세한 사항은 해당 카드사를 통해 확인 바랍니다.</li>
				</div>
				<div class="transInform">
					<h5>실시간 계좌이체 구매관련 안내사항</h5>
					<li>ㆍ매일 23:30~오전 01:30에는 시스템 점검으로 계좌이체 서비스가 잠시 중단 됩니다.<br>
						&nbsp;&nbsp;&nbsp;- 이용 가능시간 : 매일 오전 01:30 ~ 23:30</li>
					<li>ㆍ공인인증서를 가지고 계시지 않은 고객의 경우에는 공인인증서를 발급 받으셔야만 서비스 이용이 가능합니다.</li>
					<li>ㆍ인터넷에서의 환불은 구매일로 부터 최대 180일 이내에만 가능하며 환불하시는 경우 해당은행 영업일 기준 익일에 결제하신<br> 
						&nbsp;&nbsp;&nbsp;은행 계좌로 자동 입금됩니다.</li>
					<li>ㆍ계좌이체로 구매한 항공권은 홈페이지에서 예매 변경이 불가능하오니 환불 후 재구매 하시기 바랍니다.</li>
				</div>
			</div>
		</div>
		
		<!--	안내 사항	  -->
		
		<div id="recommendCard">
			<div class="step4_imgAanGray">
				<div class="step4_graysection">
					<div class="innerGray">
						<img alt="kb" src="../img/step04/kookmin_card_logo.png">
						<span>자주항공<br>리프레시 포인트<br>KB국민카드</span>
						<ul>
							<li>- 리프레시 포인트 적립 (<span>1,200원당 10P</span>)</li>
							<li>- 프리미엄 공항라운지 <span>FREE</span></li>
						</ul>
					</div>
					<div class="innerGray">	
						<img alt="sh" src="../img/step04/shinhan_card_logo.png">
						<span>자주항공<br>리프레시 포인트<br>신한카드</span>					
						<ul>
							<li>- 리프레시 포인트 적립 (<span>1,200원당 10P</span>)</li>
							<li>- 프리미엄 공항라운지 <span>FREE</span></li>
							<li>- JDC 면세점 최대 8% 결제일 할인</li>
						</ul>
						<input type="button" id="openS" value="혜택 더보기">
					</div>
				</div>
			</div>
		</div>	
		
		<div id="warnText">
			<h4>항공 위험물 안내</h4>
			<ul>			
				<li>ㆍ폭발물, 압축가스, 인화성 물질, 부식성 물질, 자극성 물질, 자기성 물질, 방사성 물질, 기타 항공기 및 개인 또는<br> 
					&nbsp;&nbsp;타인의 재산에 위험을 가져올 수 있는 항공위험물은 수하물로 운송 될 수 없습니다.	
					<font color=#4B1152> <a href="#">자세히 보기</a></font>
				</li>
				<li>ㆍ항공기 운송이 금지된 위험물 반입 시 2천만원 이하의 벌금에 처해질 수 있으며, 보조배터리 / 전자담배 / 라이터 등 <br>
					&nbsp;&nbsp;위탁운송이 금지된 물품을 수하물로 위탁하여 적발된 경우 해당물품은 폐기됩니다.</li>		
			</ul>
		</div>
		<div id="warnImg">
			<img alt="warning" src="../img/step04/infoBanned.png">
		</div>
		<input type="checkbox" value=""> 
		<span class="lastText">항공권운임규정, 여객운송약관 , 기내반입 금지물품 및 도움이 필요한 승객 
		<br>&nbsp;&nbsp;(애완동물 동반 승객, 임산부 승객 등)서비스 안내 내용을 확인하였으며, 이에 동의 합니다.</span>
		<br>
		<input type="checkbox" value=""> 
		<span class="lastText">사전 허가받지 않은 위험물 은 안전상의 이유로 위탁 또는 기내 반입수하물로 지참할 수 없으며, 이에 동의 합니다.</span>
		<br>
		<div id="submit">
			<input type="button" value="결제하기">
		</div>
	</div>		<!-- leftSpace end -->
	
	<div id="rightSpace">
	</div>
</div>
<!-- step1,2,3,4 우측 결제정보 콘솔 -->
		<div id="showConsole">
			<div id="innerConsole">
				<div id="showInfo">
					<img src="../img/showConsole/ico_silver.png">
					<div id="memInfo">
						<p><span id="memName"> ${memName}</span> 님</p>
						<span id="memId">${memId}</span>
					</div>
				</div>
				<div id="showPoint">
					<span id="pointHead">가용포인트</span>
					<span id="memPoint" class="pointRight">${memberDTO.totalPoint}</span>					
					<span id="pointFoot" class="pointRight">P</span>
				</div>
				<div id="showFlightInfo">
					<h2 id="showTitle">구간 및 운임</h2>
					<table>
						<thead>
							<tr id="memAge">
								<td colspan="2">성인1명/소아0명</td>
							</tr>
						</thead>
						<tbody>
							<tr id="showTripInfo1">
								<td colspan="2">
									<p class="gugan">구간1</p>
									<span id="showTrip1">${dep} - ${arr}</span><br>
									<span id="showTime1">${dayGo}+ ~ </span>
								</td>
							</tr>
							<tr id="showExtra1">
								<td>
									<p class="extraTitle">ㆍ부가서비스</p>
									<ul id="addExtra1L">
										<li class="showLug1">-수하물</li>
										<li class="showSeat1">-좌석</li>
										<li class="showEat1">-기내식</li>
									</ul>
								</td>
								<td>
									<ul id="addExtra1R">
										<li class="showLug1"><span class="showLug1">0</span>KRW</li>
										<li class="showSeat1"><span class="showSeat1">0</span>KRW</li>
										<li class="showEat1"><span class="showEat1">0</span>KRW</li>
									</ul>
								</td>
							</tr>
							<tr id="showTripInfo2">
								<td colspan="2">
									<p class="gugan">구간2</p>
									<span id="showTrip2">${arr} - ${dep}</span><br>
									<span id="showTime2">${dayCome}+ ~ </span>
								</td>
							</tr>
							<tr id="showExtra2">
								<td>
									<p class="extraTitle">ㆍ부가서비스</p>
									<ul id="addExtra2L">
										<li class="showLug2">-수하물</li>
										<li class="showSeat2">-좌석</li>
										<li class="showEat2">-기내식</li>
									</ul>
								</td>
								<td>
									<ul id="addExtra2R">
										<li class="showLug2"><span class="showLug2">0</span>KRW</li>
										<li class="showSeat2"><span class="showSeat2">0</span>KRW</li>
										<li class="showEat2"><span class="showEat2">0</span>KRW</li>
									</ul>
								</td>
							</tr>
							<tr class="showPay">
								<td class="showPayL">
									<li>ㆍ항공운임</li>
									<li>ㆍ유류할증료</li>
									<li>ㆍ공항시설사용료</li>
									<li>ㆍ서비스 옵션</li>
								</td>
								<td class="showPayR">
									<span>0</span> KRW<br>
									<span>0</span> KRW<br>
									<span>0</span> KRW<br>
									<span>0</span> KRW<br>
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="2">
									<h4>항공운임 등 총액</h4>
									<div id="showTotal">
										<span id="showTotalNum">0</span><span id="tfootKrw">KRW</span>
									</div>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
</form>

</body>
</html>