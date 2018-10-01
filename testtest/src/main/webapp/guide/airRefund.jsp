<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#airRefund{
	width: 1200px;
	margin: auto;
}
.refundimg{
	margin-top: 20px;
	float: left;
}
#airRefund #airRefundNavi{
	font-weight: normal;
	color: #353535;
}
#airRefund h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
.accent{
	color: red;
}
#airRefund ul{
	margin-top: 10px;
	padding-left: 40px;
}
#airRefund ul li{
	list-style: square;
	font-size: 13px;
}
#airRefund #refundCheck p{
	margin-top: 10px;
	font-weight: bold;
	font-size: 15px;
}
#airRefund #refundReceipt{
	margin-top: 40px;
}
#airRefund #refundReceipt table{
	margin-left:-5px;
	margin-top: 20px;
	border-spacing: 0;
	width: 1000px;
}
#airRefund #refundReceipt .refundTL{
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-right: 1px solid #ccc;
	background-color: #EAEAEA;
	padding-left: 30px;
	font-size: 13px;
	width: 250px;
}
#airRefund #refundReceipt .refundTR{
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
}
#airRefund #refundReceipt ul{
	float: left;
}
#airRefund  .mybutton{
	background-color: #4B1152;
	border: 1px solid #124d77;
	border-radius:7px;
	display: inline-block;
	color: white;
	font-family: arial;
	font-size: 15px;
	font-weight: nomal;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #154682;
}

#airRefund .mybutton:hover {
	background-color: #4A0BA3;
}

#airRefund .mybutton:active {
	position: relative;
	top: 1px;
}

#popupLayer {
	display: none;
	width: 100%;
	height: 100%;
	padding: 10px;
}
#popupLayer div {
	position: absolute;
	top:250px;
	left:700px;
	width: 450px;
	height: 450px;
	opacity: 1.0;
	background-color:white;
	border: solid 2px #d0d0d0;
	z-index: 10;
}
#popupLayer div h2{
	padding-top: 40px;
}
#popupLayer div p{
	padding-left: 50px;
}
#popupLayer div p span{
	color: #4B1152;
	font-weight: bold;
}
#popupLayer .bg{
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 0.6;
	z-index: -1;
	position: fixed;
	top: 0;
	left: 0;
}
#close{
	cursor: pointer;
	margin-left: 200px;
}
#airRefund #refundCall{
	margin-bottom: 20px;
	margin-top: 40px;
}
#airRefund #refundRule{
	margin-bottom: 20px;
	margin-top: 40px;
}
#airRefund #refundRule a{
	margin-top: 20px;
}
</style>
<script src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#receiptB').click(function() {
		$('#popupLayer').css({
			"position":"fixed",
			"top":0,
			"left":0
		}).show();
	});

	$('#close').click(function() {
		$('#popupLayer').hide();
	});
});
</script>

</head>
<body>
<div id="airRefund">
	<h3 id="airRefund">JAJUAIR &gt; 서비스 안내 &gt; 예약안내 &gt; 항공권 환불<img alt="" src="../img/navimg.png"></h3><br>
	<h1>항공권 환불</h1>
	<img alt="" src="../img/refund.png" class="refundimg"><p><br><br>항공권의 종류나구매수단, 출발지, 사용 여부에 따라 홈페이지, 전화로 접수 가능한 경우도 있고, 직접 지점이나 구매처를 방문하셔야 하는 경우도 있습니다.<br>5월1일이후 출발항공권의 경우 처음구간 이용 후 남은 구간의 운임 환불요청시 편도운임을 제외한 차액이 환불됩니다.</p><br><br>
	
	<div id="refundCheck">
		<h3><img alt="" src="../img/title1.jpg">환불전 확인사항</h3>
		<p class="checkTitle">&gt; 환불신청 기간</p>
		<ul>
			<li>결제당일(온라인 구매시~23:54분,한국기준시간) 예약 취소시 위약금이 면제되며오프라인 구매항공권일 경우 운영시간 내 예약센터 및 공항 현장 접수만 가능합니다.<br>단, 부가서비스 구매시 출발 3일 이내일 경우 해당 운임은 환불이 불가합니다.</li>
			<li>환불은 항공권의 유효기간 만료 후 최대 30일 이내 가능하며, 기간 경과 후 환불이 불가할 수 있습니다.</li>
		</ul>
		<p class="checkTitle">&gt; 홈페이지 예매의 경우</p>
		<ul>
			<li>홈페이지에서 환불 신청이 가능합니다.</li>
			<li>운임 종류에 따라 환불이 불가한 항공권이 있으니, 유의하여 주시기 바랍니다.</li>
			<li><span class="accent">왕복/다구간 항공권 예매의 경우, 처음 구간 이용 후 남은 구간에 대한 항공권의 취소는 홈페이지에서 불가</span>하오니, 예약센터로 문의하여 주시기 바랍니다.</li>
			<li><span class="accent">실시간 계좌이체로 구매한 항공권은 구매일로부터 최대 180일 이내에만 인터넷에서 환불이 가능</span>합니다. 기간이 경과된 항공권의경우 제주항공 공항지점을 내방하여 환불 받으시기 바랍니다.</li>
		</ul>
		<p class="checkTitle">&gt; 여행사 예매의 경우</p>
		<ul>
			<li><span class="accent">여행사에서 구매하신 항공권은 해당 여행사로 환불을 신청하셔야 합니다.</span></li>
			<li>여행사에서 구매하신 항공권은 경우에 따라서 여행사의 위약금이 제해진 금액을 환불 받으실 수 있습니다.</li>
		</ul>
	</div>
	
	<div id="refundReceipt">
		<h3><img alt="" src="../img/title1.jpg">환불신청시 준비서류</h3>
		<table>
			<tr>
				<td class="refundTL">e-티켓<br>(홈페이지/전화 또는 지점방문)</td>
				<td class="refundTR" colspan="2">
					<ul>
						<li>e-mail 혹은 Fax로 받은 e-티켓 확인증(e-Ticket Itinerary & Receipt)</li>
						<li>결제하신 신용카드</li>
						<li>사진이 부착된 승객의 신분증</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="refundTL">종이항공권<br>(지점방문)</td>
				<td class="refundTR" colspan="2">
					<ul>
						<li>사용하지 않은 항공권</li>
						<li>승객 보관용 쿠폰(Passenger Receipt, 항공권의 마지막 장)</li>
						<li>사진이 부착된 승객의 신분증</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="refundTL">대리인신청</td>
				<td class="refundTR">
					<ul>
						<li>승객 본인이 직접 작성한 위임장</li>
						<li>대리인의 신분증</li>
					</ul>
					 
				</td>
				<td class="refundTR"><input type="button" value="환불 위임장 목록" class="mybutton" id="receiptB"></td>
			</tr>
		</table>
	</div>
	
	<div id="refundCall">
		<h3><img alt="" src="../img/title1.jpg">환불금 지급통화</h3>
		<ul>
			<li>최초 지불된 통화나 환불금 지불 국가의 통화로 지급 가능합니다.</li>
			<li>한국 내 환불금 지급 시 외화(USD, JPY, THB, HKD)로 구입한 항공권도 한국원화로 환불금을 지급합니다.(환불 신청시의 환율 적용)</li>
		</ul>
	</div>
	
	<div id="refundRule">
		<h3><img alt="" src="../img/title1.jpg">취급위약금 규정</h3>
		<ul>
			<li>구매하신 항공권에 적용된 운임 종류에 따라</li>
		</ul>
		<a class="mybutton">국제선 취소위약금 안내</a><a class="mybutton">국내선 취소위약금 안내</a>
	</div>
</div>
<div id="popupLayer">
		<div>
			<h2>제주항공 서식 모음 <span id="close">X</span></h2>
			<p><span>&gt;</span>환불위임장</p>
			<p><span>&gt;</span>비동반 소아 여행신청서</p>
			<p><span>&gt;</span>비동반 소아 여행 보호자 동의 확인서</p>
			<p><span>&gt;</span>비동반 소아 여행 보호바 동의 확인서(필리핀)</p>
			<p><span>&gt;</span>비동반 소아 여행 보호바 동의 확인서(사이판)</p>
			<p><span>&gt;</span>비동반 소아 여행 보호바 동의 확인서(베트남)</p>
			<p><span>&gt;</span>애완동물 운송 서약서</p>
			<p><span>&gt;</span>악기 운송 서약서</p>
		</div>
		<div class="bg"></div>
	</div>
</body>
</html>


















