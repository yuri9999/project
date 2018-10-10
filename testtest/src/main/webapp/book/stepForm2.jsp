<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/step1.css">
<link rel="stylesheet" href="../css/step2.css">
<link rel="stylesheet" href="../css/tab.css">
<!--sidebar  -->
<link rel="stylesheet" type="text/css" href="../css/showConsole.css">
<script src="../js/showConsole.js"></script>
</head>
<body>
<form action="step03.do" method="post" name="stepForm2">
<div id="container">
		<!--step1,2,3,4 부분  -->	
		<div id="top">
			<h1>항공권 예매</h1>
			<ul class="stepNav threeWide setp02" >
				 <li><span>Step.1</span><strong>구간 및 운임 선택</strong></li>
				<li><span class="stepNavOn1">Step.2</span><strong class="stepNavOn2">탑승자 정보입력</strong></li>
				<li><span>Step.3</span><strong>부가서비스 선택</strong></li>
				<li><span>Step.4</span> <strong>항공권 결제</strong></li> 
			</ul>
		</div><!-- top -->
		
		<!--예매자연락처  -->
		<div id="contactInfo">
		<h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>예매자 연락처</strong><small>(반드시 연락 가능한 연락처와 이메일을 입력하십시오.)</small></h4>
			<div class="mt20">
			<label><img id="bul" alt="bul0.png" src="../img/bul0.png">연락처</label> 
				<input type="text" name="phoneNum" value="${memberDTO.tel1 }-${memberDTO.tel2 }-${memberDTO.tel3}-${memberDTO.tel4}">
			<small>예) 010-3456-7890, 02-3456-7890</small>
			<br>
			</div>
			<div class="mt20">
			<label><img id="bul" alt="bul0.png" src="../img/bul0.png">이메일</label> 
				<input type="text" name="phoneNum" value="${memberDTO.email1}@${memberDTO.email2}">
			<small>예) 예매 내용을 이메일로 전송해 드립니다.</small>
			</div>
		</div><!-- contactInfo -->
		
		<!--탑승자정보  -->
		<div id="passengerInfo">
			<h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>탑승자 정보</strong></h4>
				<!--체크하면 정보 리셋 설정하기 , 시간없으면 제외  -->
				<input type="checkbox" name="check" id="check">회원 본인이 탑승하지 않는 경우 체크 해 주시기 바랍니다.
				<div class="pass_con">
					<div class="pass">
						<label><img id="bul" alt="bul0.png" src="../img/bul0.png">성인1</label><br>
					</div><!-- pass -->
					<div class="pass1">
						<label class="mr17">성명</label><input type="text" name="englishName" value="${memberDTO.englishName}"><c:if test="${memberDTO.gender=='0'}">
							<input type="radio" name="gender" value="0" checked><span>남</span>
							<input type="radio" name="gender" value="1"><span>여</span>
						</c:if>
						<c:if test="${memberDTO.gender!='0'}">
							<input type="radio" name="gender" value="0"><span>남</span>
							<input type="radio" name="gender" value="1" checked><span>여</span>
						</c:if>
						<br>
					<div class="mt20">
						<label>회원ID</label><input type="text" name="id" value="${sessionScope.memId }"><br>
					</div><!-- mt20 -->
				</div><!-- pass1 -->
			</div><!-- pass_con -->
		</div><!-- passengerInfo -->
		<div id="text">
			<ul class="mt10">
				<li><span class="red">탑승자명은 여권 및 신분상의 내용과 동일하게 입력하여 주시고, 결제 후 탑승자명 변경은 불가합니다.</span></li>
				<li><span class="red">간편결제 쿠폰을 받으신 후 결제는 반드시 간편결제로 진행해 주셔야 합니다.</span></li>
				<li>항공기 탑승을 위해 반드시 유효 신분증을 소지하여 주시기 바랍니다.</li>
				<li>소아, 유아와 여행하시는 경우 공항 탑승 수속 시 생년월일을 확인할 수 있는 서류를 반드시 지참하여 주시기 바랍니다.</li>
				<li>나의 쿠폰과 즉시 할인 쿠폰은 중복으로 이용하실 수 없습니다.</li>
				<li>신분할인은 공시운임에 한해 적용되며 신중히 선택하시고 탑승 수속 시 해당 신분증을 반드시 소지하여 주시기 바랍니다.<br>
				(예약완료 후 소급할인은 불가합니다.)</li>
				<li>도움이 필요한 승객 (임산부, 휠체어 사용 손님 또는 지병이 있으신 분 등)께서는 체크인 카운터에서 탑승권 발급시 저희 직원에게 <br>
				알려주시기 바랍니다. </li>
			</ul>
			<button id="btn">항공권 운임규정</button>
		</div><!-- text -->
		
		<!--탑승자객별 운임  -->
		<div id="fare">
			<h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>탑승자객별 운임</strong></h4>
				<table class="fare_table mt20">
					<tr class="fare_tr1">
						<td>성명</td>
						<td>판매운임</td>
						<td>유류할증료</td>
						<td>공항시설사사용료</td>
						<td>지불금액</td>
					</tr>
					<tr class="fare_tr2">
						<td>${memberDTO.englishName}</td>
						<td>${totalDepPrice}</td>
						<td>${totalDepFuelPrice}</td>
						<td>${totalDepAirportPrice}</td>
						<td>${finalPrice}</td>
					</tr>
					<tr class="fare_tr2">
						<td id="cols" colspan="4">항공운임 등 총액</td>
						<td>${finalPrice}</td>
					</tr>
					
				</table>
					유류할증료 및 제반 운임을 포함한 총액으로 구매시점과 환율에 따라 변동 될 수 있습니다
					<br>
		</div><!-- fare -->
			<div class="mt20 tc">
			<input type="submit" id="btn" value="탑승자 정보 입력 완료">
			</div><!-- mt20/tc btn 중앙배치 -->
</div><!-- container -->


<!-- step1,2,3,4 우측 결제정보 콘솔 -->
		<div id="showConsole">
			<div id="innerConsole">
				<div id="showInfo">
					<img src="../img/ico_silver.png">
					<div id="memInfo">
						<p><span id="memName">${memName}</span> 님</p>
						<span id="memId">ID: ${memId}</span>
					</div><!-- memInfo -->
				</div><!-- showInfo -->
				<div id="showPoint">
					<span id="pointHead">가용포인트</span>
					<span id="memPoint" class="pointRight">${memberDTO.totalPoint }</span>					
					<span id="pointFoot" class="pointRight">P</span>
				</div><!-- showPoint -->
				<div id="showFlightInfo">
					<h2 id="showTitle">구간 및 운임</h2>
					<table>
						<thead>
							<tr id="memAge">
								<td colspan="2">성인1명/소아0명/유아0명</td>
							</tr>
						</thead>
						<tbody>
							<tr id="showTripInfo1">
								<td colspan="2">
									<p class="gugan" >구간1</p>
									<div id="guganDate1"></div>
									 <span id="showTrip1">${depName}-${arrName}</span><br>
									<span id="showTime1">${dayGoAndDateGo1}${dayGoAndDateGo2}</span> 
								</td>
							</tr>
							<tr id="showTripInfo2">
								<td colspan="2">
									<p class="gugan">구간2</p>
									<div id="guganDate2"></div>
									 <span id="showTrip2">${arrName}-${depName}</span><br>
									<span id="showTime2">${dayGoAndDateCome1}${dayGoAndDateCome2}</span> 
								</td>
							</tr>
							<tr class="showPay" id="showPayJs">
								 <td class="showPayL">
									<li>ㆍ항공운임</li>
									<li>ㆍ유류할증료</li>
									<li>ㆍ공항시설사용료</li>
									
								</td>
								<td class="showPayR">
									<span>${totalDepPrice}</span> KRW<br>
									<span>${totalDepFuelPrice}</span> KRW<br>
									<span>${totalDepAirportPrice}</span> KRW<br>
									
								</td> 
							</tr>
						</tbody>
						<tfoot id="tfootShowTotal" >
							 <tr>
								<td colspan="2">
									<h4>항공운임 등 총액</h4>
									<div id="showTotal">
										 <span id="showTotalNum"></span>${finalPrice}<span id="tfootKrw">KRW</span> 
									</div><!-- showTotal -->
								</td>
							</tr> 
						</tfoot>
					</table>
				</div><!-- showFlightInfo -->
			</div><!-- innerConsole -->
		</div><!-- showConsole -->
		<input type="hidden" name="dayGoAndDateGo1" id="dayGoAndDateGo1" value="${dayGoAndDateGo1}">
		<input type="hidden" name="dayGoAndDateGo2" id="dayGoAndDateGo2" value="${dayGoAndDateGo2}">
		<input type="hidden" name="dayGoAndDateCome1" id="dayGoAndDateCome1" value="${dayGoAndDateCome1}">
		<input type="hidden" name="dayGoAndDateCome2" id="dayGoAndDateCome2" value="${dayGoAndDateCome2}">
		<input type="hidden" name="totalDepAirportPrice" id="totalDepAirportPrice" value="${totalDepAirportPrice}">
		<input type="hidden" name="totalDepPrice" id="totalDepPrice" value="${totalDepPrice}">
		<input type="hidden" name="totalDepFuelPrice" id="totalDepFuelPrice" value="${totalDepFuelPrice}">
		<input type="hidden" name="finalPrice" id="finalPrice" value="${finalPrice}">
		
		
</form>

</body>
</html>