<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#popupB1').click(function() {
		$('#popup1').css({
			"position":"fixed",
			"top":0,
			"left":0
		}).show();
	});

	$('#popupB2').click(function() {
		$('#popup2').css({
			"position":"fixed",
			"top":0,
			"left":0
		}).show();
	});
	$('#popupB3').click(function() {
		$('#popup3').css({
			"position":"fixed",
			"top":0,
			"left":0
		}).show();
	});
	$('#popupB4').click(function() {
		$('#popup4').css({
			"position":"fixed",
			"top":0,
			"left":0
		}).show();
	});
	$('#popupB5').click(function() {
		$('#popup5').css({
			"position":"fixed",
			"top":0,
			"left":0
		}).show();
	});
	$('#popupB6').click(function() {
		$('#popup6').css({
			"position":"fixed",
			"top":0,
			"left":0
		}).show();
	});
	
	$('.close').click(function() {
		$('#popup1').hide();
		$('#popup2').hide();
		$('#popup3').hide();
		$('#popup4').hide();
		$('#popup5').hide();
		$('#popup6').hide();
	});
});
</script>
<style type="text/css">
#help{
	width: 1200px;
	height: 1700px;
	margin: auto;
}
#help #helpNavi{
	font-weight: normal;
	color: #353535;
}
#help h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
.accent{
	color: red;
}
#help ul li{
	list-style: square;
	font-size: 13px;
	margin-left: 30px;
}
#help table{
	border-spacing: 0;
	margin-top: 15px;
}
#help h3{
	margin-top: 30px;
}
.helpC{
	font-size: 15px;
}
.helpTitleS{
	font-weight: bold;
	font-size: 15px;
}
.helpTB{
	border-bottom: 1px solid #ccc;
	width: 200px;
	background-color: #EAEAEA;
}
#TB1{
	border-top: 1px solid #ccc;
}
#TB2{
	border-top: 1px solid #ccc;
}
#TB3{
	border-top: 1px solid #ccc;
}
.helpTNB{
	border-bottom: 1px solid #ccc;
	width: 200px;
}
.helpTblank{
	width: 200px;
}
#help .mybutton{
	margin-top: 5px;
	margin-left: 10px;
	background-color: #4B1152;
	border: 1px solid #124d77;
	display: inline-block;
	color: white;
	font-family: arial;
	font-size: 15px;
	font-weight: nomal;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #154682;
	border-radius: 6px;
}

#help .mybutton:hover {
	background-color: #4A0BA3;
}

#help .mybutton:active {
	position: relative;
	top: 1px;
}
.helpRule1 {
	display: none;
	width: 100%;
	height: 100%;
	padding: 10px;
}
.helpRule1 div {
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
.helpRule1 .bg{
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 0.6;
	z-index: -1;
	position: fixed;
	top: 0;
	left: 0;
}

.helpRule2 {
	display: none;
	width: 100%;
	height: 100%;
	padding: 10px;
}
.helpRule2 div {
	position: absolute;
	top:150px;
	left:450px;
	width: 1000px;
	height: 600px;
	opacity: 1.0;
	background-color:white;
	border: solid 2px #d0d0d0;
	z-index: 10;
}
.helpRule2 .bg{
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 0.6;
	z-index: -1;
	position: fixed;
	top: 0;
	left: 0;
}
.helpRule2 ul li{
	list-style: square;
	font-size: 13px;
}
.helpRule2 .popTB{
	background-color: #EAEAEA;
	border-top: 1px solid #ccc;
	border-left: 1px solid #ccc;
}
.helpRule2 .popTB:first-child{
	border-left: none;
}
.helpRule2 .popTNB{
	border-top: 1px solid #ccc;
	border-left: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}
.helpRule2 .popTNB:first-child{
	border-left: none;
}
.helpRule2 table{
	margin-left: 85px;
	border-spacing: 0;
}
.close{
	cursor: pointer;
	position: absolute;
	right: 30px;
}
</style>
</head>
<body>
<div id="help">
	<h3 id="helpNavi">JAJUAIR &gt; 서비스 안내 &gt; 공항서비스 &gt; 도움이 필요한 고객<img alt="" src="../img/navimg.png"></h3><br>
	<h1>도움이 필요한 고객</h1>
	<p><img alt="" src="../img/helpT.png" class="helptopimg">자주항공은 유아/소아 및 임산부, 몸이 불편하신 고객과 애완동물을 동반한 고객을 위한 서비스를 제공하고 있습니다.</p>
	
	<h3><img alt="" src="../img/title1.jpg">유아동반 고객</h3>
	<p class="helpC">유아란 만 2세 미만의 고객을 말하며, 보호자가 동반하여 안고 탑승하게 됩니다.</p>
	<ul>
		<li>유아고객에게 별도의 좌석은 제공되지 않습니다. (유아 요람 서비스는 제공되지 않습니다.)</li>
		<li>연결된 ABC / DEF 각 구역당 1명의 유아승객만 탑승이 가능합니다.</li>
		<li>국내 국제 동일하게 유아는 별도의 좌석이 제공되지 않지만, 승객 한 분이 2명 이상의 유아를 동반하실 경우, <span class="accent">1명 이상의 추가되는 유아는 어린이 항공요금이 적용되어 좌석이 제공</span>됩니다.</li>
	</ul>
	
	<table id="helpT1">
		<tr>
			<td colspan="2" class="helpTB" id="TB1">여행가능한 유아</td>
			<td class="helpTblank"></td>
			<td colspan="2" class="helpTB" id="TB2">유아의 항공요금</td>
		</tr>
		<tr>
			<td class="helpTB">국제선</td>
			<td class="helpTNB">생후 14일 이상</td>
			<td class="helpTblank"></td>
			<td class="helpTB">국제선</td>
			<td class="helpTNB">성인 정상운임의 10%</td>
		</tr>
		<tr>
			<td class="helpTB">국내선</td>
			<td class="helpTNB">생후 7일 이상</td>
			<td class="helpTblank"></td>
			<td class="helpTB">국내선</td>
			<td class="helpTNB">무료</td>
		</tr>
	</table>
	
	<h3><img alt="" src="../img/title1.jpg">혼자 여행하는 어린이<a class="mybutton" id="popupB1">비동반 소아 여행 신청서</a></h3>
	<p class="helpC">비동반 소아(UM : Unaccompanied Minor)란 보호자 또는 성인 고객에 의해 동반되지 앟ㄴ고 단독으로 여행하는 소아고객을 말합니다.</p>
	<ul>
		<li>국내선 : 만 5세 이상 ~ 만 13세 미만</li>
		<li>국제선(필리핀, 사이판, 베트남을 제외한 지역) : 만 5세 이상 ~ 만 12세 미만</li>
		<li>국제선(자무스,스자좡) : 비동반 소아 신청 불가</li>
		<li><span class="accent">만 5세 미만은 어떠한 경우에도 혼자 여행할 수 없습니다.</span></li>
	</ul>
	<a class="mybutton" id="popupB2">필리핀 비동반 소아 규정</a><a class="mybutton" id="popupB3">사이판 비동반 소아 규정</a><a class="mybutton" id="popupB4">베트남 비동반 소아 규정</a><a class="mybutton" id="popupB5">라오스 비동반 소아 규정</a>
	<table>
		<tr>
			<td colspan="2" class="helpTB" id="TB3">적용운임</td>
		</tr>
		<tr>
			<td class="helpTB">국제선</td>
			<td class="helpTNB">자주항공에서 별도로 정한 성인운임 적용</td>
		</tr>
		<tr>
			<td class="helpTB">국내선</td>
			<td class="helpTNB">소아 운임 적용</td>
		</tr>
	</table>
	<p class="helperTitleS">서비스 신청 방법</p>
	<ul>
		<li>출발 24시간 전까지 제주항공 고객센터(1599-1500)를 통해 항공권 구매와 함께 서비스를 신청하신 후 확약을 받으시기 바랍니다.</li>
		<li>홈페이지 및 모바일 앱/웹 구매 불가: 제주항공 고객센터를 통해 적용 가능한 운임을 확인하여 주시기 바랍니다.</li>
		<li>신청 시 출/도착지에서 어린이를 배웅/마중하실 보호자의 정확한 인적 사항과 연락처(주소, 전화번호)를 알려 주시기 바랍니다.</li>
	</ul>
	
	<h3><img alt="" src="../img/title1.jpg">휠체어가 필요한 고객</h3>
	<ul>
		<li>보행이 불편하신 고객을 위하여 공항 출발 및 도착 시에 휠체어를 무료로 대여해 드립니다.</li>
		<li>휠체어가 필요하신 고객께서는 예약 시점에 서비스를 신청해 주시기 바랍니다.</li>
	</ul>
	
	<h3><img alt="" src="../img/title1.jpg">임산부 고객</h3>
	<ul>
		<li>32주 미만 : 의사로부터 항공여행 금지를 권고 받지 않는 한 일반인과 다름없이 여행하실 수 있습니다.</li>
		<li>32주 이상~37주 미만 : 임신 32주 이상의 경우는 조건을 만족시키는 경우에 한하여 항공여행이 가능하오니, 필요한 서류를 꼭 확인하여 주시기 바랍니다.</li>
		<li>37주 이상(다태 임신 시 33주 이상) : 임산부와 태아의 건강을 위해 여행이 불가합니다.</li>
	</ul>
	<table class="helpTBack">
		<tr>
			<td>
				<p class="helpTitleS">임산부 고객의 항공 여행시 필요한 서류</p>
				<ul>
					<li><p class="helpTitleS">의사소견서 원본 1부(Medical Certificate)</p>- 산부인과 의사가 작성 및 서명을 하고, <span class="accent">탑승기준일 7일이내 발급</span>한 것이어야 합니다.(여정 시작일로부터 7일 이내의 왕복 포함)<br>의사소견서(Medical Certificate)는 항공여행의 적합여부와 예상 분만 일이 반드시 기재되어 있어야 합니다.<br>예시) 7월 3일 발급된 의사소견서 소지 승객<br>: 7월 4일 ICN-HKG편 탑승가능 (서류 유효) 7월 11일 HKG-ICN편 탑승불가 (서류 유효기간 만료)</li>
					<li><p class="helpTitleS">서약서</p>당일 탑승 수속 시, 당사가 제공해 드리는 양식에 작성하여 주시면 됩니다.</li>
				</ul>
			</td>
		</tr>
	</table>
	
	<h3><img alt="" src="../img/title1.jpg">애완동물을 동반한 고객<a class="mybutton" id="popupB6">애완동물 운송 서약서</a></h3>
	<p class="helpC">자주항공은 <span class="accent">생후 8주 이상의 애완용 개, 고양이, 새</span>에 한하여 애완 동물 운송 서비스를 제공하고 있습니다.</p>
	<ul>
		<li>국내선 : 기내반입 가능</li>
		<li>국제선 : 불가</li>
	</ul>
	<table class="helpTBack">
		<tr>
			<td>
				<ul>
					<li>운송이 제한되는 경우 (기내반입)<br>
						- 개, 고양이, 새를 제외한 토끼, 햄스터, 페릿(ferret), 거북이, 뱀, 병아리, 닭, 돼지 등 모든 종류의 동물은 운송이 불가합니다.<br>
						- 안정제나 수면제를 투여한 경우 체온과 혈압이 떨어져 위험할 수 있어 약물을 사용한 경우 운송이 불가합니다.<br>
						- 불안정하고 공격적인 동물, 악취가 심하거나 건강하지 않은 동물, 수태한 암컷은 운송이 불가합니다.<br>
						- 농림축산식품부령 동물보호법 시행규칙에 명시된 맹견류 및 공격성향을 보이는 반려동물은 수하물로 운송이 불가합니다.</li>
					<li>
						반려동물 운송 방법<br>
						- 반려동물과 공항 판매 또는 손님 소지 운송용기(Cage)의 무게를 합쳐 <span class="accent">7kg</span> 이하인 경우 <span class="accent">기내 반입 가능</span><br>
						- 항공기 출발 최소 2시간 전 반려동물에게 음식과 물을 먹이고, 운송용기 바닥에는 종이나 수건, 담요 등을 깔아주어야 합니다.<br>
						- <span class="accent">기내에서는 안전운항을 위해 반려동물을 운송용기 밖으로 꺼내는 것을 엄격히 금지합니다.</span><br>
						- 체크인카운터에서 애완동물 운송 서약서 작성이 필요합니다.
					</li>
					<li>
						운송 용기의 조건<br>
						- 기내반입: 가로, 세로, 높이의 합이 100cm 이하이며, 가로 최대 37cm, 높이 23cm 이하인 용기<br>
						- 반려동물이 움직이는 데 불편함이 없도록 충분한 공간이 있는 용기<br>
						- 금속, 목재 및 플라스틱 등의 견고한 재질로 된 용기 (기내 반입 시에는 천이나 가죽 등 부드러운 재질도 가능)<br>
						- 환기구가 있고 방수 처리된 용기<br>
						- 잠금 장치가 있고, 비상 시 외부에서 열 수 있는 용기
					</li>
					<li>
						서비스 요금<br>
						- 1kg당 2,000원<br>
						- 반려동물 동반 여행 시, 승객의 수하물 소지 여부와 관계 없이 서비스 요금이 부과되며, 여행 전 제주항공 고객센터로 운송 예약을 신청하시기 바랍니다.<br>
					</li>
				</ul>
			</td>
		</tr>
	</table>
	<ul>
		<li><span class="accent">승객 1인당 운송용기 1개, 1마리만 반입 가능</span>합니다. (단, 어미와 어린 새끼인 경우 같은 용기에 운송이 가능합니다.)</li>
		<li>운송용기 바깥 부분에 영문 성명과 비상 시 연락 가능한 연락처 작성을 권고합니다.</li>
		<li>운송 가능한 애완동물은 <span class="accent">편당 기내반입 2마리로 제한</span>되어 있사오니, 고객센터를 통해 운송 가능 여부에 대하여 사전에 확인하여 주시기 바랍니다.</li>
	</ul>
</div>

<div id="popup1" class="helpRule1">
	<div>
		<h2>제주항공 서식 모음 <span class="close">X</span></h2>
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

<div id="popup2" class="helpRule2">
	<div>
		<p class="helpTitleS">필리핀 비동반 소아 규정<span class="close">X</span></p><hr>
		<ul>
			<li><span class="accent">대상 : 만 5세이상 ~ 만 15세 미만</span></li>
		</ul>
		<table>
			<tr>
				<td class="popTB">구분</td>
				<td class="popTB">필리핀 비동반 소아(UM)</td>
				<td class="popTB"></td>
			</tr>
			<tr>
				<td class="popTNB">분류</td>
				<td class="popTNB">혼자 여행 하는<br>만 5세이상 ~ 만 15세 미만의 소아</td>
				<td class="popTNB">부모 이외의 보호자르 동반한 만 5세이상 ~ 만 15세 미만의 소아</td>
			</tr>
			<tr>
				<td class="popTNB">보호자의 기준</td>
				<td class="popTNB"></td>
				<td class="popTNB">부모가 아닌 성인 보소자(친척, 가디언 등) 동반 시<br>단, 보호자는 만 18세 이상이어야 함</td>
			</tr>
			<tr>
				<td class="popTNB">입국시 증빙서류</td>
				<td colspan="2" class="popTNB">
					<ul>
						<li>영문 공증 부모 동의서원본, 영문 주민등록등본, 소아 및 보호자 여권사본, 왕복 TICKET확인증</li>
						<li>입국서류(입국시 작성) 및 입국수수료 - (Application for Waiver of Exclusion Ground (W.E.G))</li>
						<li>혼자 여행하는 소아 및 부모 이외의 보호자를 동반한 소아 모두 필리핀 이민국 규정에서 정한 입국 서류 구비 필수</li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
	<div class="bg"></div>
</div>

<div id="popup3" class="helpRule2">
	<div>
		<p class="helpTitleS">사이판 비동반 소아 규정<span class="close">X</span></p><hr>
		<ul>
			<li><span class="accent">대상 : 만 5세이상 ~ 만 18세 미만</span></li>
			<li>만 18세 미만의 미성년자가 혼자 여행하거나 부모 이외의 보호자를 동반할 시, 공증된 영문 부모 동의서가 필요합니다.</li>
		</ul>
	</div>
	<div class="bg"></div>
</div>

<div id="popup4" class="helpRule2">
	<div>
		<p class="helpTitleS">베트남 비동반 소아 규정<span class="close">X</span></p><hr>
		<ul>
			<li><span class="accent">대상 : 만 5세이상 ~ 만 14세 미만</span></li>
			<li>만 14세 미만의 미성년자가 부모, 보호자를 동반하지 않을 경우 UM 신청서(영문) 및 부모 동의서(영문)이 필요합니다.<br>
				(국문으로 작성된 부모 동의서일 경우 공증 필요)</li>
		</ul>
	</div>
	<div class="bg"></div>
</div>

<div id="popup5" class="helpRule2">
	<div>
		<p class="helpTitleS">라오스 비동반 소아 규정<span class="close">X</span></p><hr>
		<ul>
			<li><span class="accent">대상 : 만 5세이상 ~ 만 14세 미만</span></li>
			<li>비동반 소아가 단독으로 라오스에 입국 시, UM 신청서 및 부모동의서를 지참하여야 합니다.</li>
			<li>여권상의 영문 성(Family Name)이 다른 가족과 함께 입국하는 경우 영문 가족관계증명서와 부모동의서를 지참하여야 하며 가족 외 제3자의 동반은 불가합니다</li>
		</ul>
	</div>
	<div class="bg"></div>
</div>

<div id="popup6" class="helpRule1">
	<div>
		<h2>제주항공 서식 모음 <span class="close">X</span></h2>
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
