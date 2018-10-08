<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>항공권 예매</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!--달력  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="../js/datepicker.js"></script>
<link rel="stylesheet" href="../css/tab.css">
<link rel="stylesheet" href="../css/datepicker.css">
<link rel="stylesheet" href="../css/step1.css">
<!--=====전진씨 CSS=========  -->
<!--sidebar  -->
<link rel="stylesheet" type="text/css" href="../css/showConsole.css">
<link rel="stylesheet" type="text/css" href="../css/airport.css">
<link rel="stylesheet" type="text/css" href="../css/flightBooking.css">
<script src="../js/inputChk.js"></script>
<!--sidebar  -->
<script src="../js/showConsole.js"></script>


<script type="text/javascript">

	window.onload = $(function() {
		$("#tab1").click();
		

	});
	


</script>

</head>
<body>
	<form action="../book/step1.do" method="post" name="stepForm1">

		<div id="container">
			<!--step1,2,3,4 부분  -->
			<div id="top">
				<h1>항공권 예매</h1>
				<ul class="stepNav threeWide setp01">
					<li><span class="stepNavOn1">Step.1</span><strong class="stepNavOn2">구간 및 운임 선택</strong></li>
					<li><span>Step.2</span><strong>탑승자 정보입력</strong></li>
					<li><span>Step.3</span><strong>부가서비스 선택</strong></li>
					<li><span>Step.4</span> <strong>항공권 결제</strong></li>
				</ul>
			</div>
			<!-- left Space -->
  			 <div id="leftSpace">

			<!--구간 선택 부분  -->
			<h4>
				<img alt="title1.jpg" src="../img/title1.jpg"><strong>구간선택</strong>
			</h4>
			<input id="tab1" type="radio" name="tabs" checked> 
			<label for="tab1" class="tabClass">왕복</label> 
			<input id="tab2" type="radio" name="tabs"> 
			<label for="tab2" class="tabClass">편도</label>



			<!-- ===================section: 왕복========================== -->
			<section id="content1">
				<!--
			part1: 구간1
			part2: 구간2
			part3: 인원
			part4: 결제
		 -->
		 	<!--===========출발지팝업창 ============ -->
			<!--  <div class="container"> -->
					<div id="selectDep" class="airTab">
						<div id="headerDep">
							<h2>출발지 선택</h2>
							<a id="close1" href="#"><img alt="x" src="../img/close.png" width="20px" height="20px"></a>
						</div>
						<hr id="headerEnd">
						<ul class="nav">
						<div class="navAirports">
						<div id="navKor" class="column">
							<h3>한국</h3>
							<ul>
								<li value="인천(ICN)"><a href="#">인천(ICN)</a></li>
								<li value="김포(GMP)"><a href="#">김포(GMP)</a></li>
								<li value="대구(TAE)"><a href="#">대구(TAE)</a></li>
								<li value="제주(CJU)"><a href="#">제주(CJU)</a></li>
							</ul>
						</div>
						
						<div id="navNea" class="column">
							<h3>동북아</h3>
							<ul>
								<li value="나고야(NGO)"><a href="#">나고야(NGO)</a></li>
								<li value="도쿄-나리타(NRT)"><a href="#">도쿄-나리타(NRT)</a></li>
								<li value="도쿄-하네다(HND)"><a href="#">도쿄-하네다(HND)</a></li>
								<li value="삿포로(CTS)"><a href="#">삿포로(CTS)</a></li>
								<li value="오사카(KIX)"><a href="#">오사카(KIX)</a></li>
								<li value="후쿠오카(FUK)"><a href="#">후쿠오카(FUK)</a></li>
								<li value="오키나와(OKA)"><a href="#">오키나와(OKA)</a></li>
								<li value="마카오(MFM)"><a href="#">마카오(MFM)</a></li>
								<li value="베이징(PEK)"><a href="#">베이징(PEK)</a></li>
								<li value="홍콩(HKG)"><a href="#">홍콩(HKG)</a></li>
								<li value="타이페이(TPE)"><a href="#">타이페이(TPE)</a></li>
							</ul>
						</div>
						
						<div id="navSea" class="column">
							<h3>동남아</h3>
							<ul>
								<li value="다낭(DAD)"><a href="#">다낭(DAD)</a></li>
								<li value="마닐라(MNL)"><a href="#">마닐라(MNL)</a></li>
								<li value="방콕(BKK)"><a href="#">방콕(BKK)</a></li>
								<li value="세부(CEB)"><a href="#">세부(CEB)</a></li>
								<li value="하노이(HAN)"><a href="#">하노이(HAN)</a></li>
								<li value="호치민(SGN)"><a href="#">호치민(SGN)</a></li>
							</ul>
						</div>
					</div>
					</ul>
			</div>

	<!--===========도착지팝업창 ================ -->
					<div id="selectArr" class="airTab">
						<div id="headerDep">
							<h2>도착지 선택</h2>
							<a id="close2" href="#"><img alt="x" src="../img/close.png" width="20px" height="20px"></a>
						</div>
						<hr id="headerEnd">
						<ul class="nav">
							<div class="navAirports">
								<div id="navKor" class="column">
									<h3>한국</h3>
									<ul>
										<li value="인천(ICN)"><a href="#">인천(ICN)</a></li>
										<li value="김포(GMP)"><a href="#">김포(GMP)</a></li>
										<li value="대구(TAE)"><a href="#">대구(TAE)</a></li>
										<li value="제주(CJU)"><a href="#">제주(CJU)</a></li>
									</ul>
								</div>

								<div id="navNea" class="column">
									<h3>동북아</h3>
									<ul>
										<li value="나고야(NGO)"><a href="#">나고야(NGO)</a></li>
										<li value="도쿄-나리타(NRT)"><a href="#">도쿄-나리타(NRT)</a></li>
										<li value="도쿄-하네다(HND)"><a href="#">도쿄-하네다(HND)</a></li>
										<li value="삿포로(CTS)"><a href="#">삿포로(CTS)</a></li>
										<li value="오사카(KIX)"><a href="#">오사카(KIX)</a></li>
										<li value="후쿠오카(FUK)"><a href="#">후쿠오카(FUK)</a></li>
										<li value="오키나와(OKA)"><a href="#">오키나와(OKA)</a></li>
										<li value="마카오(MFM)"><a href="#">마카오(MFM)</a></li>
										<li value="베이징(PEK)"><a href="#">베이징(PEK)</a></li>
										<li value="홍콩(HKG)"><a href="#">홍콩(HKG)</a></li>
										<li value="타이페이(TPE)"><a href="#">타이페이(TPE)</a></li>
									</ul>
								</div>

								<div id="navSea" class="column">
									<h3>동남아</h3>
									<ul>
										<li value="다낭(DAD)"><a href="#">다낭(DAD)</a></li>
										<li value="마닐라(MNL)"><a href="#">마닐라(MNL)</a></li>
										<li value="방콕(BKK)"><a href="#">방콕(BKK)</a></li>
										<li value="세부(CEB)"><a href="#">세부(CEB)</a></li>
										<li value="하노이(HAN)"><a href="#">하노이(HAN)</a></li>
										<li value="호치민(SGN)"><a href="#">호치민(SGN)</a></li>
									</ul>
								</div>
							</div>
						</ul>
					</div>
				<!-- </div> -->


		<!--========================구간1 ================================= -->

				<div id="part1">
					<label><img alt="bul0.png" src="../img/bul0.png">구간1</label>
					<div class="roundtrip">
	<!-- 	<form action="goAvail.do" name="round" method="post"> -->
			<table id="flightInput">
				<tr id="mybutton">
					<td>
						<div class="btn"><input type="button" class="location" name="dep" id="dep" value="출발지" ></div>
						<a class="inputImg" href="#"><img alt="dep1" src="../img/dep.jpg" height="30px" width="30px"></a>
					</td>
					<td>
						<div class="btn"><input type="button" class="location" name="arr" id="arr" value="도착지"></div>
						<a class="inputImg" href="#"><img alt="arr1" src="../img/arr.jpg" height="30px" width="30px"></a>
					</td>
					<td id="dayGo">
						<div class="btn"><input type="button" class="calendar" id="datepicker" name="dayGo" value="가는 날"></div>
						<a class="inputImg"><img alt="dep2" src="../img/cal.jpg" height="30px" width="30px"></a>
					</td>
					
					
					<td>
						<!-- hidden input태그  -->
						<!--hdep와 harr는   -->
						<input type="hidden" id="hdep" name="hdep">
						<input type="hidden" id="harr" name="harr">
						
						<input type="hidden" id="hdayGo" name="hdayGo">
						<input type="hidden" id="hdayCome" name="hdayCome">
						<input type="hidden" id="hadult" name="hadult">
						<input type="hidden" id="hkid" name="hkid">
						<input type="hidden" id="hbaby" name="hbaby">
						
					</td>
				</tr>
				
					<!-- <div class="roundtrip">
						<table id="flightInput">
							<tr id="mybutton">
								<td id="dep">
									<div class="btn">
										<input type="button" class="location" name="dep" value="출발지">
									</div> 
									<a class="inputImg" href="#"><img alt="dep1" src="../img/dep.jpg" height="30px" width="30px"></a>
								</td>
								<td id="arr">
									<div class="btn">
										<input type="button" class="location" name="arr" value="도착지">
									</div> 
									<a class="inputImg" href="#"><img alt="arr1" src="../img/arr.jpg" height="30px" width="30px"></a>
								</td>
							</tr>
						</table>
					</div>

					
					<input type="text" id="datepicker" onclick="datepicker()"> -->
				</table>
				</div>
			</div>
			<!--========================구간2 ================================= -->
				<div id="part2">
					<label><img alt="bul0.png" src="../img/bul0.png">구간2</label>
					<div class="roundtrip">
	<!-- 	<form action="goAvail.do" name="round" method="post"> -->
			<table id="flightInput">
				<tr id="mybutton">
					<td>
						<div class="btn"><input type="button" class="location" name="arr" id="arr" value="출발지" ></div>
						<a class="inputImg" href="#"><img alt="dep1" src="../img/dep.jpg" height="30px" width="30px"></a>
					</td>
					<td>
						<div class="btn"><input type="button" class="location" name="dep" id="dep" value="도착지"></div>
						<a class="inputImg" href="#"><img alt="arr1" src="../img/arr.jpg" height="30px" width="30px"></a>
					</td>
					<td id="dayCome">
						<div class="btn"><input type="button" class="calendar" id="datepicker2" name="dayCome" value="오는 날"></div>
						<a class="inputImg"><img alt="arr2" src="../img/cal.jpg" height="30px" width="30px"></a>
					</td>
					
					<td>
						<!-- hidden input태그  -->
						<!--hdep와 harr는   -->
						<input type="hidden" id="hdep" name="hdep">
						<input type="hidden" id="harr" name="harr">
						
						<input type="hidden" id="hdayGo" name="hdayGo">
						<input type="hidden" id="hdayCome" name="hdayCome">
						<input type="hidden" id="hadult" name="hadult">
						<input type="hidden" id="hkid" name="hkid">
						<input type="hidden" id="hbaby" name="hbaby">
						
					</td>
				</tr>
				
					
				</table>
				</div>
				</div>


				<div id="part3">
					<label><img alt="bul0.png" src="../img/bul0.png">인원</label> 
					<table>
					 <td>
						<div class="btn"><input type="button" class="ppl" name="adult" id="adult" value="성인1명"></div>
						<a class="inputImg" href="#"><img alt="adlt" src="../img/ppl.jpg" height="30px" width="30px"></a>
					</td>
					<td>
						<div class="btn"><input type="button" class="ppl" name="kid" id="kid" value="소아0명"></div>
						<a class="inputImg" href="#"><img alt="kid" src="../img/ppl.jpg" height="30px" width="30px"></a>
					</td>
					<td>
						<div class="btn"><input type="button" class="ppl" name="baby" id="baby" value="유아0명"></div>
						<a class="inputImg" href="#"><img alt="bby" src="../img/ppl.jpg" height="30px" width="30px"></a>
					</td>
					</table>
					
					<select name="adult">
						<option value="adult_num1">성인 1명</option>
						<option value="adult_num2">성인 2명</option>
						<option value="adult_num3">성인 3명</option>
						<option value="adult_num4">성인 4명</option>
					</select> <select name="child">
						<option value="child_num1">아동 1명</option>
						<option value="child_num2">아동 2명</option>
						<option value="child_num3">아동 3명</option>
						<option value="child_num4">아동 4명</option>
					</select> <select name="baby">
						<option value="baby_num1">소아 1명</option>
						<option value="baby_num2">소아 2명</option>
						<option value="baby_num3">소아 3명</option>
						<option value="baby_num4">소아 4명</option>
					</select>
				</div>

			<!--========================결제, 검색버튼 ================================= -->
				<div id="part3">
					<label><img alt="bul0.png" src="../img/bul0.png">결제</label> 
					<input type="radio" id="pay" name="radio" value="1" checked>일반결제
				</div>


				<!--검색 버튼  -->
				<div id="selectBtn">
				<!-- <input type="button" class="submit" value="예매하기" onclick="inputChk();"> -->
					<input type="button" class="submit" id="airBtn" onclick="inputChk()" value="항공권검색"></input><!--파트1,2가 나온다  -->
				</div>

			</section>

			<!-- ===================section: 편도========================== -->
			<section id="content2">
				구간1 
				<select name="start">
					<option>---출발지 ---</option>
					<option>서울(인천)</option>
					<option>서울(김포)</option>
					<option>부산</option>
					<option>제주</option>
					<option>광주</option>
				</select> 
				<select name="end">
					<option>---도착지 ---</option>
					<option>후쿠오카</option>
					<option>오키나와</option>
					<option>다낭</option>
					<option>베이징</option>
					<option>마닐라</option>
				</select> 
				<input type="text" class="datepicker" onclick="datepicker()">

				<br> 
				구간2 
				<select name="start">
					<option>---출발지 ---</option>
					<option value="FUK">후쿠오카</option>
					<option value="OKA">오키나와</option>
					<option value="DAD">다낭</option>
					<option value="PEK">베이징</option>
					<option value="MNL">마닐라</option>
				</select> 
				<select name="end">
					<option>---도착지 ---</option>
					<option value="ICN">서울(인천)</option>
					<option value="GMP">서울(김포)</option>
					<option value="PUS">부산</option>
					<option value="CIU">제주</option>
					<option value="KWJ">광주</option>
				</select> 
				<input type="text" class="datepicker2" onclick="datepicker()">
				<br> 
				인원 
				<select name="adult">
					<option value="adult_num1">성인 1명</option>
					<option value="adult_num2">성인 2명</option>
					<option value="adult_num3">성인 3명</option>
					<option value="adult_num4">성인 4명</option>
				</select> <select name="child">
					<option value="child_num1">아동 1명</option>
					<option value="child_num2">아동 2명</option>
					<option value="child_num3">아동 3명</option>
					<option value="child_num4">아동 4명</option>
				</select> 
				<br>
				 결제 
				 <input type="radio" id="pay" name="radio" value="1" checked>일반결제 
				 

				<!--검색 버튼  -->
				<div id="selectBtn">
					<button type="button" class="btn btn-primary btn-lg" id="airBtn">항공권검색</button>
				</div>

			</section>


			<!--=====================part1===========================  -->

			<div class="part_container" style="display: none;">
				<!--구간1 제목  -->
				<h4>
			
					<img alt="title1.jpg" src="../img/title1.jpg"><strong>구간1:인천->다낭</strong>

				
				</h4>
				<br>

				<!--tabs 날짜 부분  -->
				
				<div id="boardTab"></div>

				<!--해당 날짜에 대한 sectiton부분  -->
				<section id="part_content1">

					<div><table id = "boardList" class="table table-bordered" border = "1" >
						<thead>
							<tr>
								<td>편명</td>
								<td>출발시간</td>
								<td>도착시간</td>
								<td>정규운임</td>
							</tr>
						</thead>
						<tbody id ="boardListTr">
						</tbody>
					</table></div>	

				</section>


				<div id="text">
					<ul>
						<li><strong>출·도착 시각은 현지 시각 기준이며 항공기 스케줄은 정부인가 조건으로,
								예고 없이 변경 될 수 있습니다.</strong></li>
						<li><strong><font color=#4B1152>+1</font></strong>은 다음날 도착을,
							<strong><font color=#4B1152>+2</font></strong>는 2일 뒤 도착을 의미합니다.</li>
						<li>예약과 동시에 구매 하셔야 하며 유류할증료와 해외공항시설사용료는 발권 일에 따라 변경될 수 있습니다.</li>
						<li>항공운임 등 총액은 여정 별 운임 선택 후 우측에 자세히 표시 됩니다.</li>
						<li>포인트 항공권은 조기 마감 될 수 있습니다.</li>
						<li>적립 예정 리프레시 포인트는 할인쿠폰 사용, 환율 적용 등 최종 항공권 결제금액에 따라 실제 적립되는
							포인트와 상이할 수 있습니다.</li>
						<li>해외에서 항공권을 구매하신 경우 해당 국가의 정해진 환율로 원(KRW)화 환산되어 적립됩니다.</li>
						<li>실제 결제한 항공운임에 한해 리프레시 포인트가 적립되며, 부가서비스 및 세금 등은 적립대상에서
							제외됩니다.</li>
					</ul>

				</div>

			</div>

			<!--=====================part2===========================  -->
			<div class="part_container" style="display: none;">
				<!--구간1 제목  -->
				<h4>
					<img alt="title1.jpg" src="../img/title1.jpg"><strong>구간2:다낭- 서울(인천)</strong>
				</h4>
				<br>

				<!--tabs 날짜 부분  -->
				<div id="boardTab2"></div>
				<!-- <input id="part_tab1" type="radio" name="tabs" checked> 
				<label for="part_tab1" class="part_label"> 9-13(목)<br> <strong>69,000</strong></label> 
 -->
				<!--해당 날짜에 대한 sectiton부분  -->
				<section id="part_content2">
						<div><table id = "boardList2" class="table table-bordered" border = "1" >
						<thead>
							<tr>
								<td>편명</td>
								<td>출발시간</td>
								<td>도착시간</td>
								<td>정규운임</td>
							</tr>
						</thead>
						<tbody id ="boardListTr2">
						</tbody>
					</table></div>
				</section>


				<div id="text">
					<ul>
						<li><strong>출·도착 시각은 현지 시각 기준이며 항공기 스케줄은 정부인가 조건으로,
								예고 없이 변경 될 수 있습니다.</strong></li>
						<li><strong><font color=#4B1152>+1</font></strong>은 다음날 도착을,
							<strong><font color=#4B1152>+2</font></strong>는 2일 뒤 도착을 의미합니다.</li>
						<li>예약과 동시에 구매 하셔야 하며 유류할증료와 해외공항시설사용료는 발권 일에 따라 변경될 수 있습니다.</li>
						<li>항공운임 등 총액은 여정 별 운임 선택 후 우측에 자세히 표시 됩니다.</li>
						<li>포인트 항공권은 조기 마감 될 수 있습니다.</li>
						<li>적립 예정 리프레시 포인트는 할인쿠폰 사용, 환율 적용 등 최종 항공권 결제금액에 따라 실제 적립되는
							포인트와 상이할 수 있습니다.</li>
						<li>해외에서 항공권을 구매하신 경우 해당 국가의 정해진 환율로 원(KRW)화 환산되어 적립됩니다.</li>
						<li>실제 결제한 항공운임에 한해 리프레시 포인트가 적립되며, 부가서비스 및 세금 등은 적립대상에서
							제외됩니다.</li>
					</ul>

				</div>
				<input type="hidden" id="hiddenGetChecked" name="hiddenGetChecked" value=" ">
				<input type="hidden" id="hiddenGetChecked2" name="hiddenGetChecked2" value=" ">
				<input type="submit" value="구간 및 운임 선택 완료" onclick="getChecked()" >
			</div>
	</div>
	</div>
	<div id="rightSpace"></div>
	
	<!-- step1,2,3,4 우측 결제정보 콘솔 -->
		<div id="showConsole">
			<div id="innerConsole">
				<div id="showInfo">
					<img src="../img/ico_silver.png">
					<div id="memInfo">
						<p><span id="memName">${memName}</span> 님</p>
						<span id="memId">ID: ${memId}</span>
					</div>
				</div>
				<div id="showPoint">
					<span id="pointHead">가용포인트</span>
					<span id="memPoint" class="pointRight">${memPoint}50000</span>					
					<span id="pointFoot" class="pointRight">P</span>
				</div>
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
									<%-- <span id="showTrip1">간다${arr}</span><br>
									<span id="showTime1">${dayGo}+출시 ~ 도시</span> --%>
								</td>
							</tr>
							<tr id="showTripInfo2">
								<td colspan="2">
									<p class="gugan">구간2</p>
									<div id="guganDate2"></div>
									<%-- <span id="showTrip2">${arr}온다${dep}</span><br>
									<span id="showTime2">${dayCome}+출시 ~ 도시</span> --%>
								</td>
							</tr>
							<tr class="showPay" id="showPayJs">
								<!-- <td class="showPayL">
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
								</td> -->
							</tr>
						</tbody>
						<tfoot id="tfootShowTotal" >
							 <tr>
								<td colspan="2">
									<h4>항공운임 등 총액</h4>
									<div id="showTotal">
										 <span id="showTotalNum"></span><span id="tfootKrw">KRW</span> 
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











