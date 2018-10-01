<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#airReservation{
	width: 1200px;
	height: 2500px;
	margin: auto;
}
.reserimg{
	margin-top: 20px;
}
#airReservation #airReservationNavi{
	font-weight: normal;
	color: #353535;
}
#airReservation h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
.accent{
	color: red;
}
#quick{
	margin:0;
	padding:0;
	list-style: none;
	border: 1px solid #ccc;
	width: 1000px;
	height: 40px;
	background-color: #EAEAEA;
}
#quick li{
	vertical-align: middle;
	display: inline;
	margin-right:22px;
	font-size: 16px;
}
#quick li a{
	text-decoration: none;
	color: #888;
}
#airReservation #payCard{
	margin-top: 40px;
}
#airReservation #payCard .cardTable{
	font-size: 14px;
	width: 1200px;
	margin-bottom: 20px;
	margin-top: 20px;
	margin-left: -50;
	border-spacing: 10px;
}
#airReservation #payCard .reserTL{
	text-align: center;
	background-color: #4B1152;
	color: white;
	height: 40px;
	border-radius: 10px;
}
#airReservation #payCard .reserTR{
	text-align: left;
}
#airReservation #payCard p{
	font-size: 15px;
}
#airReservation #payCard .reserbold{
	font-weight: bold;
	font-size: 15px;
	margin-top: 10px;
}
#airReservation #payCard .reserbold span{
	font-weight: normal;
	font-size: 13px;
}
#airReservation #payCard .cardTable2{
	margin-left: -5px;
	border-spacing: 0;
	width: 1000px;
	text-align: center;
}
#airReservation #payCard .reserTU{
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
	background-color: #EAEAEA;
	border-left: 1px solid #ccc;
}
#airReservation #payCard .reserTU:first-child {
	border-left: none;
}
#airReservation #payCard .reserTD{
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
	border-right: 1px solid #ccc;
}
#airReservation #payCard .reserTD:last-child {
	border-right: none;
}
#airReservation #payCash{
	margin-top: 40px;
}
#airReservation #payCash .time{
	color: blue;
	font-size: 13px;
	font-weight: normal;
}
#airReservation #payCash ul{
	padding-left: 50px;
	margin-top: 10px;
}
#airReservation #payCash ul li{
	list-style: square;
	font-size: 13px;
}
#airReservation #easyPay{
	margin-top: 40px;
}
#airReservation #easyPay .easyT{
	margin-left: -10px;
	margin-top: 20px;
	border-spacing: 0;
	width: 1000px;
}
#airReservation #easyPay .reserTL{
	width: 250px;
	text-align: left;
	padding-left: 40px;
	border-right: 1px solid #ccc;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	background-color: #EAEAEA;
	padding-top: 10px;
	padding-bottom: 10px;
	font-size: 13px;
}
#airReservation #easyPay .reserTR{
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
	padding-left: 50px;
}
#airReservation #easyPay .reserTR p{
	font-weight: bold;
	font-size: 13px;
	margin: 0;
}
#airReservation #easyPay .reserTR ul li{
	list-style: square;
	font-size: 13px;
}
#airReservation #payPost{
	margin-top: 40px;
}
#airReservation #payPost span{
	color: blue;
	font-size: 13px;
	font-weight: normal;
}
#airReservation #payPost ul{
	margin-top: 10px;
	padding-left: 40px;
}
#airReservation #payPost ul li{
	list-style: square;
	font-size: 13px;
}
#airReservation #eTiket{
	margin-top: 40px;
}#airReservation #eTiket ul{
	margin-top: 10px;
	padding-left: 40px;
}
#airReservation #eTiket ul li{
	list-style: square;
	font-size: 13px;
}
#airReservation #qnaGuide{
	margin-top: 40px;
}
#airReservation #qnaGuide table{
	border-spacing: 0;
}
#airReservation #qnaGuide .reserTL{
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-right: 1px solid #ccc;
	background-color: #EAEAEA;
	padding-left: 30px;
	width: 250px;
	text-align: left;
	font-size: 13px;
}
#airReservation #qnaGuide .reserTR{
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
	padding-left: 40px;
}
#airReservation #qnaGuide .reserTR ul li{
	list-style: square;
	font-size: 13px;
}
</style>
</head>
<body>
<div id="airReservation">
	<h3 id="airReservationNavi">JAJUAIR &gt; 서비스 안내 &gt; 기내서비스 &gt; 항공권 예매<img alt="" src="../img/navimg.png"></h3><br>
	<h1>항공권 예매</h1>
	<p class="reserimg"><img alt="" src="../img/airReservation.png">자주항공 홈페이지에서는 24시간 언제든지 항공권을 구입하실 수 있습니다.</p><br><br>
	<p>바로가기</p>
	<ul id="quick">
		<li><a href="#payCard">신용카드 구매</a></li>
		<li><a href="#payCash">실시간 계좌이체 구매</a></li>
		<li><a href="#easyPay">간편결제 안내</a></li>
		<li><a href="#payPost">나중에 결제하기</a></li>
		<li><a href="#eTiket">e-티켓(전자항공권) 이용안</a></li>
		<li><a href="#qnaGuide">제주항공 고객센터</a></li>
	</ul>
	
	<div id="payCard">
		<h3><img alt="" src="../img/title1.jpg">신용카드 구매</h3>
		<table class="cardTable">
			<tr>
				<td class="reserTL"><a>신용/체크카드</a></td>
				<td class="reserTR"><span class="accent">은행에서 발행된 체크카드는 사용이 가능합니다(한국기준)</span> 해외카드 결제의 경우 VISA, MASTER, JCB, AMEX이용이<br>가능합니다.</td>
			</tr>
			<tr>
				<td class="reserTL"><a>법인카드</a></td>
				<td class="reserTR">기명식(개인성명 표기) 법인카드 중 <span class="accent">비씨, 국민, 외한, 삼성, 하나, 아멕스, 한미카드는 주민등록 인증절차를 거치시고,<br>그 외의 경우에는 사업자 등록 번호로 인증</span> 받으시기 바랍니다.</td>
			</tr>
			<tr>
				<td class="reserTL"><a>직불/선불/기프트카드</a></td>
				<td class="reserTR">직불카드는 신용카드 인증이 불가하며, 선불/기프트카드는 부분 환불 불가로 결제가 불가합니다.</td>
			</tr>
		</table>
		<p>홈페이지에서 항공권을 구매하시는 경우 안전한 전자상거래를 위하여 안전결제(JSP), 안심클릭(MPI)을 통한 신용카드 인증서비스를 실시하고 있습니다.</p>
		<p class="reserbold">- 안전결제(ISP) : <span>비씨카드(하나BC포함), KB카드, 우리카드, 저축은행카드</span></p>
		<table class="cardTable2">
			<tr>
				<td class="reserTU">카드구분</td>
				<td class="reserTU">카드사</td>
				<td class="reserTU">구분</td>
				<td class="reserTU">결제방법(30만원 미만)</td>
				<td class="reserTU">결제방법(30만원 이상)</td>
			</tr>
			<tr>
				<td class="reserTD">개인카드 (일반/체크)</td>
				<td class="reserTD">국민, 비씨</td>
				<td class="reserTD"></td>
				<td class="reserTD">안전결제</td>
				<td class="reserTD">안전결제 + 공인인증서</td>
			</tr>
			<tr>
				<td rowspan="2" class="reserTD">법인카드 (일반/체크)</td>
				<td rowspan="2" class="reserTD">국민, 비씨</td>
				<td class="reserTD">개별</td>
				<td class="reserTD">안전결제</td>
				<td class="reserTD">안전결제 + 공인인증서</td>
			</tr>
			<tr>
				<td class="reserTD">공용</td>
				<td class="reserTD">안전결제</td>
				<td class="reserTD">안전결제</td>
			</tr>
		</table>
		<p class="reserbold">- 안심클릭(MPI) : <span> 비씨카드(하나BC포함), KB카드, 우리카드, 저축은행카드</span></p>
		<table class="cardTable2">
			<tr>
				<td class="reserTU">카드구분</td>
				<td class="reserTU">카드사</td>
				<td class="reserTU">구분</td>
				<td class="reserTU">결제방법(30만원 미만)</td>
				<td class="reserTU">결제방법(30만원 이상)</td>
			</tr>
			<tr>
				<td class="reserTD">개인카드</td>
				<td class="reserTD">삼성, 신한, 현대, 롯데, 외환</td>
				<td class="reserTD"></td>
				<td class="reserTD">안전결제</td>
				<td class="reserTD">안전결제 + 공인인증서</td>
			</tr>
			<tr>
				<td rowspan="5" class="reserTD">법인카드</td>
				<td class="reserTD">현대</td>
				<td class="reserTD">개별</td>
				<td class="reserTD">안심클릭 또는 공인인증서</td>
				<td class="reserTD">공인인증서 필수</td>
			</tr>
			<tr>
				<td rowspan="2" class="reserTD">삼성, 신한, 외환, 롯데</td>
				<td class="reserTD">공용</td>
				<td class="reserTD">안심클릭</td>
				<td class="reserTD">안심클릭 또는 공인인증서필수</td>
			</tr>
			<tr>
				<td class="reserTD">개별</td>
				<td class="reserTD">안심클릭 또는 공인인증서</td>
				<td class="reserTD">공인인증서 필수</td>
			</tr>
			<tr>
				<td class="reserTD">삼성, 신한, 외환, 롯데</td>
				<td class="reserTD">공용</td>
				<td class="reserTD">안심클릭 또는 공인인증서</td>
				<td class="reserTD">공인인증서 필수</td>
			</tr>
		</table>
	</div>
	<div id="payCash">
		<h3><img alt="" src="../img/title1.jpg">실시간 계좌이체 구매<span class="time">(이용가능시간 : 01:30 ~ 23:30)</span></h3>
		<ul>
			<li>고객님의 은행계좌에서 실시간으로 항공권 구매금액을 이체하는 서비스 입니다.</li>
			<li><span class="accent">회원 로그인 후에만 이용 가능합니다.</span></li>
			<li>제주항공의 실시간 계좌이체 서비스는 금융결제원의 Bank Pay 서비스를 이용하고 있으며 기존 은행/증권사 등의 공인인증서를 소지하고 있는 모든 고객 분은 서비스를 이용하실 수 있습니다.</li>
			<li><span class="accent">실시간 계좌이체로 구매하신 항공권의 경우 홈페이지에서 예약변경은 불가능하오니,</span> 예약을 변경하고자 하는 경우에는 환불 후 재 구매 하시기 바랍니다.</li>
			<li>단, 실시간 예약상황에 따라 운임이 변동되므로 주의하여 주시기 바랍니다.</li>
			<li>수수료는 별도로 발생하지 않으며, 계좌당 1일 한도 금액은 1천만원입니다. (단, 외환은행의 경우 은행자체 정책으로 인해 1회 50만원, 1일 100만원을 초과할 수 없습니다.)</li>
			<li>실시간 계좌이체의 서비스 이용 가능시간은 각 금융기관의 사정에 따라 다소 변동될 수 있으며, <span class="accent">매일 23:30 ~ 익일 01:30 에는 시스템 작업으로 인하여 계좌이체 서비스가 일시적으로 중단됩니다.</span></li>
		</ul>
	</div>
	<div id="easyPay">
		<h3><img alt="" src="../img/title1.jpg">간편결제 안내</h3>
		<table class="easyT">
			<tr>
				<td class="reserTL">네이버페이 결제 안내</td>
				<td class="reserTR">
					<ul>
						<li>국내 발행 카드만 해당하며, 할부 무이자 및 제휴 카드는 네이버페이 규정에 따릅니다.</li>
						<li>네이버페이로 결제하실 경우, 항공권 예약/구간 변경시 반드시 기존 항공권을 환불 후 재 결제하셔야합니다.</li>
						<li>네이버페이로 결제하신 항공권의 환불시 수수료가 발생됩니다.</li>
						<li>항공권 취소시 카드 환불의 경우 카드사의 사정에 따라 7~10일 정도 소요될 수 있습니다.
							<span class="accent"><br>※ 결제 문의 : 네이버페이 고객센터 (1588-3819. helpcustomer@naver.com)</span></li>
						<p>네이버 페이 포인트 적립 시점</p>
						<li>고객의 탑승 시간이 오후 2시 이전인 경우 탑승일 +2일뒤에 네이버페이 포인트 적립 완료</li>
						<li>고객의 탑승 시간이 오후 2시 이전인 경우 탑승일 +2일뒤에 네이버페이 포인트 적립 완료</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="reserTL">삼성페이 결제 안내</td>
				<td class="reserTR">
					<ul>
						<li>국내 발행 카드만 해당하며, 할부 무이자 및 제휴 카드는 삼성페이 규정에 따릅니다.</li>
						<li>삼성페이로 결제하실 경우, 항공권 예약/구간 변경시 반드시 기존 항공권을 환불 후 재 결제하셔야합니다.</li>
						<li>삼성페이로 결제하신 항공권의 환불시 수수료가 발생됩니다.</li>
						<li>항공권 취소시 카드 환불의 경우 카드사의 사정에 따라 7~10일 정도 소요될 수 있습니다.
							<span class="accent"><br>※ 결제 문의 : 삼성페이 고객센터 (1588-7456. 평일 9시 ~ 18시 / 토요일 9시 ~ 13시 / 공휴일 휴무)</span></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="reserTL">페이코 결제 안내</td>
				<td class="reserTR">
					<ul>
						<li>국내 발행 카드만 해당하며, 할부 무이자 및 제휴 카드는 페이코 규정에 따릅니다</li>
						<li>페이코로 결제하실 경우, 항공권 예약/구간 변경시 반드시 기존 항공권을 환불 후 재 결제하셔야합니다.</li>
						<li>페이코로 결제하신 항공권의 환불시 수수료가 발생됩니다.</li>
						<li>항공권 취소시 카드 환불의 경우 카드사의 사정에 따라 7~10일 정도 소요될 수 있습니다.
							<span class="accent"><br>※ 결제 문의 : 페이코 고객센터 (1544-6819. 평일 10시 ~ 19시 / 토, 일요일 및 공휴일은 휴무)</span></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="reserTL">SSG PAY 결제 안내</td>
				<td class="reserTR">
					<ul>
						<li>카카오페이로 결제하실 경우, 항공권 예약/구간 변경시 반드시 기존 항공권을 환불 후 재 결제하셔야합니다.</li>
						<li>카카오페이로 결제하신 항공권의 환불시 수수료가 발생됩니다.</li>
						<li>국내 발행 카드만 해당하며, 할부 무이자 및 제휴 카드는 카카오페이 규정에 따릅니다.</li>
						<li>항공권 취소시 카드 환불의 경우 카드사의 사정에 따라 7~10일 정도 소요될 수 있습니다.</li>
						<li>IOS의 경우, 30만원 이상 결제 시 카카오페이에서 제공하는 고객 비밀번호 설정 후 결제할 수 있습니다.
							<span class="accent"><br>※ 결제 문의 : 카카오페이 고객센터 (1644-7405. 운영시간 : 한국시간 평일 09:00~18:00)</span></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="reserTL">Paypal 결제 안내</td>
				<td class="reserTR">
					<ul>
						<li>SSG PAY로 결제하실 경우, 항공권 예약/구간 변경시 반드시 기존 항공권을 환불 후 재 결제하셔야합니다.</li>
						<li>SSG PAY로 결제하신 항공권의 환불시 수수료가 발생됩니다.</li>
						<li>국내 발행 카드만 해당하며, 할부 무이자 및 제휴 카드는 SSG PAY 규정에 따릅니다.</li>
						<li>항공권 취소시 카드 환불의 경우 카드사의 사정에 따라 7~10일 정도 소요될 수 있습니다.
							<span class="accent"><br>※ 결제 문의 : SSG PAY 고객센터 (1644-1133. 운영시간 : 한국시간 평일 09:00~18:00. 공휴일 휴무)</span></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="reserTL">L PAY 결제 안내</td>
				<td class="reserTR">
					<ul>
						<li>L pay로 결제하실 경우, 항공권 예약/구간 변경시 반드시 기존 항공권을 환불 후 재 결제하셔야합니다.</li>
						<li>L pay로 결제하신 항공권의 환불시 수수료가 발생됩니다.</li>
						<li>국내 발행 카드만 해당하며, 할부 무이자 및 제휴 카드는 L pay 규정에 따릅니다.</li>
						<li>항공권 취소시 카드 환불의 경우 카드사의 사정에 따라 7~10일 정도 소요될 수 있습니다.
							<span class="accent"><br>※ 결제 문의 : L Pay 고객센터 (1899-6300. 운영시간 : 한국시간 평일 09:00~18:00. 공휴일 휴무)</span></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="reserTL">Molpay 결제 안내<p>(말레이시아/한국발 일 경우)</p></td>
				<td class="reserTR">
					<ul>
						<li>Molpay로 결제하실 경우, 말레이시아 현지 은행 계좌가 필요합니다.</li>
						<li>Molpay로 결제하신 항공권의 예약/구간 변경시 반드시 기존 항공권을 환불 후 재 결제하셔야합니다.</li>
						<li>Molpay로 결제하신 항공권의 환불시 수수료가 발생됩니다.</li>
						<li>Molpay로 결제하신 항공권의 환불시, 고객이 계좌정보를 입력한 후 15일 이내 환불됩니다.
							<span class="accent"><br>※ 결제 문의 : onlinesupport@eximbay.com</span></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="reserTL">Molpay 결제 안내<p>(태국발 일 경우)</td>
				<td class="reserTR">
					<ul>
						<li>Molpay로 결제하실 경우, 태국 현지 은행 계좌가 필요합니다.</li>
						<li>Molpay로 현금결제의 경우, 태국내 Tesco lotus 편의점에서만 가능합니다.
							<span class="accent"><br>※ 결제 문의 : onlinesupport@eximbay.com</span></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="reserTL">olpay 결제 안내<p>(베트남발 일 경우)</td>
				<td class="reserTR">
					<ul>
						<li>Molpay로 결제하실 경우, 베트남 현지 은행 계좌가 필요합니다.
							<span class="accent"><br>※ 결제 문의 : onlinesupport@eximbay.com</span></li>
					</ul>
				</td>
			</tr>
		</table>
		</div>
	<div id="payPost">
		<h3><img alt="" src="../img/title1.jpg">나중에 결제하기<span>(서비스 잠정 중단 : 2017년 6월 1일 ~)</span></h3>
		<ul>
			<li>나중에 결제하기 서비스는 선택한 항공권에 대한 결제를 일정 기간 유예하는 유료 서비스입니다.</li>
			<li>나중에 결제하기가 가능한 여정의 경우 탑승자 정보 입력 단계 하단에 버튼이 나타납니다.</li>
			<li>나중에 결제하기로 예약된 항공편 구매는 기간 만료 전 마이페이지의 ‘나의 예약조회/변경’에서 페이지에서 가능합니다.</li>
			<li>저장된 여정 취소는 나중에 결제하기 기간 만료 전 마이페이지의 ‘나의 예약조회/변경’에서 언제든지 가능합니다.</li>
			<li>항공권 운임을 제외한 유류할증료 및 공항시설사용료는 결제 시점의 환율/유가 등에 따라 상이할 수 있습니다.</li>
			<li>서비스 이용료는 예약 인원 수에 따라 부과 됩니다. (유아제외)</li>
			<li>결제 시한 이후 예약은 자동 취소됩니다.</li>
			<li>나중에 결제하기 서비스 이용료는 항공권 운임에 포함되지 않으며 별도 부과됩니다.</li>
			<li>나중에 결제하기 서비스는 홈페이지, 모바일 전용 상품이며 예약센터에서 이용이 불가합니다.</li>
			<li>결제 기한 변경 및 재연장은 불가하며, 취소 후 재예약만 가능합니다. 이때 운임 및 잔여좌석은 달라질 수 있습니다.</li>
		</ul>
	</div>
	<div id="eTiket">
		<h3><img alt="" src="../img/title1.jpg">e-티켓(전자항공권) 이용안내</h3>
		<ul>
			<li>e-티켓은 실물항공권이 아닌 전자항공권입니다.</li>
			<li>구매하신 e-티켓의 세부정보는 고객님께서 예약 시 입력하신 e-mail 주소로 송부됩니다. (전화로 신청 시 Fax로 받아보실 수 있습니다.)</li>
			<li>e-mail이나 Fax로 받으신 <span class="accent">e-티켓 확인증(예약/발권 확인서)를 인쇄하신 후 공항 탑승수속 카운터에 제시하시면</span> 좌석배정 및 탑승권발급을 받으실 수 있습니다.</li>
			<li>e-티켓 확인증(예약/발권 확인서) 은 출입국 신고와 세관 통과 시 제시 요구를 받으실 수 있으니, 여행이 완료되는 시점까지 전 여정 기간 소지하여 주시기 바랍니다.</li>
		</ul>
	</div>
	<div id="qnaGuide">
		<h3><img alt="" src="../img/title1.jpg">자주항공 고객센터</h3>
		<table>
			<tr>
				<td class="reserTL">한국<br>(국내선/국제선 동일)</td>
				<td class="reserTR">
					<ul>
						<li>전화 : 제주항공 고객센터 <span class="accent">1499-1400</span> (해외에서 이용 시 : +82-1499-1400)</li>
						<li>운영시간 : 매일 08:00 ~ 19:00</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="reserTL">일본</td>
				<td class="reserTR">
					<ul>
						<li>전화 : <span class="accent">0570-001132, 1599-1500</span>(일본어)</li>
						<li>운영시간 : 매일 09:00 ~ 18:30</li>
						<li>일본국내 거주자에 한해서만 이용가능하며, 일본 시내 전화로 이용시에 일본 시내전화요금이 부과됩니다.</li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>























