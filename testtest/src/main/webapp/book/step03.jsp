<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/step1.css">
<link rel="stylesheet" href="../css/step3.css">
<link rel="stylesheet" href="../css/showConsole3.css">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/showConsole.js"></script>
<script type="text/javascript">
/*		체크박스 확인submit		*/
function okChk(){
	if(document.getElementById("ok").checked!=true){
		alert("상기 내용을 읽고 동의해주시기 바랍니다.");
		return false;
	}
	document.step03.submit();
}
/*		좌석선택 열기		*/
function openSeat(){
	$("#showExtra1 ul .showSeat1").show();
	$("#showExtra2 ul .showSeat2").show();
	window.open("selectSeat.do",'selectSeat','resizable=no status=no, width=900, height=900, scrollbars=yes');
}

/*		우측 콘솔 총액 추가		*/
var totalPrice = 0;
function calcTot() {

	var lp1 = $("#luggagePrice1_1").val();	//	수하물1비용
	var lp2 = $("#luggagePrice1_2").val();	//	수하물2비용
	var sp1 = $("#seatPrice1_1").val();		//	좌석1 비용
	var sp2 = $("#seatPrice1_2").val();		//	좌석2 비용
	var ep1 = $("#eatPrice1_1").val();		//	기내식1 비용
	var ep2 = $("#eatPrice1_2").val();		//	기내식1 비용
	
	if(lp1==""){lp1 = 0;}
	if(lp2==""){lp2 = 0;}
	if(sp1==""){sp1 = 0;}
	if(sp2==""){sp2 = 0;}
	if(ep1==""){ep1 = 0;}
	if(ep2==""){ep2 = 0;}
	
	totalPrice = eval(fp) + eval(ap) + eval(lp1) + eval(lp2) + eval(sp1) + eval(sp2) + eval(ep1) + eval(ep2);
	$("#showServicePrice").html(totalPrice);
}

/*		수하물 추가 이벤트 		*/
$(function(){
	$("#payLugGo").change(function(){
		var priceForOne = 29000;
		var lugQty1 = $("#payLugGo option:selected").val();
		var lugPrice1 = eval($("#payLugGo option:selected").val())*priceForOne;
		var lugPrice2 = $("#luggagePrice1_2").attr("value");
		if(lugPrice2==null){lugPrice2=0}
		var lugPriceTot = eval(lugPrice1) + eval(lugPrice2);
		
		$("#luggageQty1_1").val(lugQty1);
		$("#luggagePrice1_1").val(lugPrice1);
		$("#luggagePrice").html(lugPriceTot);
		calcTot();
		// 부가서비스 추가
		if(lugPrice1>0){
			$("#showExtra1 ul .showLug1").show();
			$("#showExtra1 ul .showLug1 span").html(lugPrice1);
		} else {
			$("#showExtra1 ul .showLug1").hide();
		}
	});
	$("#payLugBack").change(function(){
		var priceForOne = 29000;
		var lugQty2 = $("#payLugBack option:selected").val();
		var lugPrice1 = $("#luggagePrice1_1").attr("value");
		if(lugPrice1==null){lugPrice1=0}
		var lugPrice2 = eval($("#payLugBack option:selected").val())*priceForOne;
		var lugPriceTot = eval(lugPrice1) + eval(lugPrice2);
		
		$("#luggageQty1_2").val(lugQty2);
		$("#luggagePrice1_2").val(lugPrice2);
		$("#luggagePrice").html(lugPriceTot);
		calcTot();
		// 부가서비스 추가
		if(lugPrice2>0){
			$("#showExtra2 ul .showLug2").show();
			$("#showExtra2 ul .showLug2 span").html(lugPrice2);
		} else {
			$("#showExtra2 ul .showLug2").hide();
		}
	});
});


/*		좌석 선택 요금추가 이벤트	*/



/*		기내식 추가 이벤트			*/
$(function(){
	$(".eatery1").change(function(){
		var eatery1 = $(this).val();
		var eatery2 = $("#eatPrice1_2").attr("value");
		if(eatery2==null){eatery2=0}
		var eateryTot = eval(eatery1) + eval(eatery2);
		if(eatery1==3000){			
			// 부가서비스 추가
			$("#showExtra1 ul .showEat1").show();
			$("#showExtra1 ul .showEat1 span").html(eatery1);
		} else{
			$("#showExtra1 ul .showEat1").hide();
		}
		$("#eatPrice1_1").val(eatery1);
		$("#eateryPrice").html(eateryTot);
		calcTot();
	});
	$(".eatery2").change(function(){
		var eatery2 = $(this).val();
		var eatery1 = $("#eatPrice1_1").attr("value");
		if(eatery1==null){eatery1=0}
		var eateryTot = eval(eatery1) + eval(eatery2);
		if(eatery2==3000){
			// 부가서비스 추가
			$("#showExtra2 ul .showEat2").show();
			$("#showExtra2 ul .showEat2 span").html(eatery2);
		} else{
			$("#showExtra2 ul .showEat2").hide();
		}
		$("#eatPrice1_2").val(eatery2);
		$("#eateryPrice").html(eateryTot);
		calcTot();
	});
});
</script>
</head>
<body>
<div id="glayLayer"></div>
<div id="overLayer"></div>
<form action="" method="post">
	<!-- hidden input태그  -->
	<input type="hidden" id="hdep" name="hdep" value="${depName}">
	<input type="hidden" id="harr" name="harr" value="${arrName}">
	<input type="hidden" id="hdayGo" name="hdayGo" value="${dayGoAndDateGo1}">
	<input type="hidden" id="hdayGo2" name="hdayGo2" value="${dayGoAndDateGo2}">
	<input type="hidden" id="hdayCome" name="hdayCome" value="${dayGoAndDateCome1}">
	<input type="hidden" id="hdayCome2" name="hdayCome2" value="${dayGoAndDateCome2}">	
	<input type="hidden" id="totalDepPrice" name="totalDepPrice" value="${totalDepPrice}">
	<input type="hidden" id="totalDepFuelPrice" name="totalDepFuelPrice" value="${totalDepFuelPrice}">
	<input type="hidden" id="totalDepAirportPrice" name="totalDepAirportPrice" value="${totalDepAirportPrice}">
	<input type="hidden" id="finalPrice" name="finalPrice" value="${finalPrice}">
	<input type="hidden" id="hadult" name="hadult" value="${adult}">
	<input type="hidden" id="hkid" name="hkid">
	<input type="hidden" id="hbaby" name="hbaby">
</form>
<form action="step04.do" method="post" name="step03">

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
<input type="hidden" id="totalPrice" name="totalPrice">

<div id="container">
		<!--step1,2,3,4 부분  -->	
		<div id="top">
			<h1>항공권 예매</h1>
			<ul class="stepNav threeWide setp03" >
				<li><span>Step.1</span><strong>구간 및 운임 선택</strong></li>
				<li><span>Step.2</span><strong>탑승자 정보 입력</strong></li>
				<li><span class="stepNavOn1">Step.3</span><strong class="stepNavOn2">부가서비스 선택</strong></li>
				<li><span>Step.4</span> <strong>항공권 결제</strong></li> 
			</ul>
		</div>
		
		<!--수하물 선택  -->
		<div id="luggageChoice" class="choices">
			<h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>수하물 선택</strong></h4>
			<div class="small"><small>할인된 금액으로 수하물을 구매하실 수 있습니다.</small></div>
				<div class="step3_imgAanGray">
					<label class="bigImg"><img alt="bg_addition4.png" src="../img/bg_addition4.png"></label>
						<div class="step3_graysection">
							<label><img alt="bul0.png" src="../img/bul0.png">구간1</label>
							<span class="name1">${memberDTO.englishName}</span>
							<input type="hidden" name="luggageNum1" id="luggageNum1" class="luggageNum" value="1">
							<label>무료 위탁 수하물 1개, 유료 
							<select id="payLugGo">
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
							</select>개</label>
							<br><br>
							<label><img alt="bul0.png" src="../img/bul0.png">구간2
							</label>
							<span class="name1">${memberDTO.englishName}</span>
							<input type="hidden" name="luggageNum2" id="luggageNum2" class="luggageNum" value="1">
							<label>무료 위탁 수하물 1개, 유료 
							<select id="payLugBack">
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
							</select>개</label>
						</div>
						<div class="result">결제 금액 <span class="prices" id="luggagePrice" name="luggagePrice">0</span> KRW</div>
				</div>
		
		</div>
		
		<!--좌석 선택  -->
		
		<div id="seatChoice" class="choices">
			<h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>좌석 선택</strong></h4>
			<div class="small">
				<input type="button" name="seatChoice_add" id="openS" value="좌석 선택하기" onclick="openSeat()">
				<small>원하시는 좌석을 선택하실 수 있습니다.</small>
			</div>
				<div class="step3_imgAanGray">
					<label class="bigImg"><img alt="bg_addition1.png" src="../img/bg_addition1.png"></label>
						<div class="step3_graysection">
							<label><img alt="bul0.png" src="../img/bul0.png">구간1</label>
							<span class="name1" name="name1_1" id="name1_1">좌석을 선택하실 수 있습니다.</span>
							<span id="seatName1" name="seatName1_1" class="seatName1"></span>
							<br><br>
							<label><img alt="bul0.png" src="../img/bul0.png">구간2
							</label>
							<span class="name1" name="name1_2" id="name1_2">좌석을 선택하실 수 있습니다.</span>
							<span id="seatName2" name="seatName1_2" class="seatName1"></span>
						</div>
						<div class="result">결제 금액 <span class="prices" id="seatPrice" name="seatPrice">0</span> KRW</div>
				</div>
		</div>	
		<!--기내식 선택  -->
		<div id="flightMealChoice" class="choices">
			<h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>기내식 선택</strong></h4>
			<div class="small"><small>기내식을 선택하실 수 있습니다.</small></div>
				<div class="step3_imgAanGray">
					<label class="bigImg"><img alt="bg_addition2.png" src="../img/bg_addition2.png"></label>
						<div class="step3_graysection">
							<label><img alt="bul0.png" src="../img/bul0.png">구간1</label>
							<span class="name1">${memberDTO.englishName}</span>
							<input type="radio" id="eatery1_1" name="eatery1" class="eatery1" value="0" checked="checked">
							<label for="eatery1_1"> 없음</label>
							<input type="radio" id="eatery1_2" name="eatery1" class="eatery1" value="3000">
							<label for="eatery1_2">기내식 추가 ( +3000원)</label>
							<br><br>
							<label><img alt="bul0.png" src="../img/bul0.png">구간2
							</label>
							<span class="name1">${memberDTO.englishName}</span>
							<input type="radio" id="eatery2_1" name="eatery2" class="eatery2" value="0" checked="checked">
							<label for="eatery2_1"> 없음</label>
							<input type="radio" id="eatery2_2" name="eatery2" class="eatery2" value="3000">
							<label for="eatery2_2">기내식 추가 ( +3000원)</label>
						</div>
						<div class="result">결제 금액 <span class="prices" id="eateryPrice" name="eateryPrice">0</span> KRW</div>
				</div>
		
		</div>

		<div id="text">
			<ul>
				<li>항공권 예매 완료 후 별도로 추가 수하물 구매 시 할인율이 달라질 수 있습니다.</li>			
				<!--안보이다가 좌석 선택후 나타남  -->
				<li>항공기 조건에 따라 일부 창가 좌석(11,12,32열)이 창문이 없을 수 있습니다.</li>			
				<li>항공기 조건에 따라 등받이 고정좌석(14,15,16,32열)이 있습니다.</li>			
				<li>항공기 조건에 따라 1,2열의 좌우 배치가 다를 수 있습니다.</li>			
				<li>항공기의 맨 앞 좌석은 팔걸이 고정좌석입니다.</li>			
				<li>해당 서비스는 항공권 구매 후 마이페이지 상세내역에서 별도 구매 가능합니다.</li>			
				<li><font color=#4B1152>부가서비스 환불규정 </font></li>
				<li>- 사전수하물 구매, 사전 좌석 구매: 최초 출발 시간 기준 24시간 전부터 환불 불가 </li>		
				<li>- 사전 기내식 주문: 최초 출발일 기준 3일 전부터 환불 불가 </li>		
				<li>- 부가서비스 환불 시 시스템 사용료가 부과됩니다. (온라인: 1,000원/오프라인: 2,000원)</li>		
			</ul>
			<br>
			<input type="checkbox" id="ok" name="ok" value="y">
			<span><label for="ok">상기 내용을 확인하고 동의합니다.</label></span>
		</div>
		
		
	<!-- step1,2,3,4 우측 결제정보 콘솔 -->
		<div id="showConsole">
			<div id="innerConsole">
				<div id="showInfo">
					<img src="../img/showConsole/ico_silver.png">
					<div id="memInfo">
						<p><span id="memName">${memName}</span> 님</p>
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
									<span id="showTrip1">${depName}-${arrName}</span><br>
									<span id="showTime1">${dayGoAndDateGo1}${dayGoAndDateGo2}</span>
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
										<li class="showSeat1"><span class="showSeat1" id="showSeat1">0</span>KRW</li>
										<li class="showEat1"><span class="showEat1">0</span>KRW</li>
									</ul>
								</td>
							</tr>
							<tr id="showTripInfo2">
								<td colspan="2">
									<p class="gugan">구간2</p>
									<span id="showTrip2">${arrName}-${depName}</span><br>
									<span id="showTime2">{dayGoAndDateCome1}-${dayGoAndDateCome2}</span>
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
										<li class="showSeat2"><span class="showSeat2" id="showSeat2">0</span>KRW</li>
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
									<span>${totalDepPrice}</span> KRW<br>
									<span>${totalDepFuelPrice}</span> KRW<br>
									<span>${totalDepAirportPrice}</span> KRW<br>
									<span id="showServicePrice">0</span> KRW<br>
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
		<div class="submit">
			<input type="button" onclick="okChk()" value="다음">
		</div>
		<!-- right Space -->
		<div id="rightSpace">
		</div>
</div>
</form>

</body>
</html>