<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>항공권 예매</title>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"><!--달력  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="../js/datepicker.js"></script>
<link rel="stylesheet" href="../css/tab.css">
<link rel="stylesheet" href="../css/datepicker.css">
<link rel="stylesheet" href="../css/step1.css">
<script type="text/javascript">
	function inputChk(){
		var depName = $("#start").attr("value");
		var arrName = $("#end").attr("value");
		var dayGo = $("#datepicker").attr("value");
		var dayCome = $("#datepicker2").attr("value");
		var adult = $("#adult").attr("value");
		var kid = $("#child").attr("value");
		var baby = $("#baby").attr("value");
		
		$("#hdep").val(depName);
		$("#harr").val(arrName);
		$("#hdayGo").val(dayGo);
		$("#hdayCome").val(dayCome);
		$("#hadult").val(adult);
		$("#hkid").val(kid);
		$("#hbaby").val(baby);
		document.step01.submit();
	}
	window.onload=$(function(){
		$("#tab1").click();
	});
	function fnAirTicketSearch(){
	   $(".part_container").show();
	 }
</script>
</head>
<body>
	<form action="../book/step03.do" method="post" name="step01">
	
	<div id="container">
		<!--step1,2,3,4 부분  -->	
		<div id="top">
		<h1>항공권 예매</h1>
		<ul class="stepNav threeWide setp01" >
			<li><span class="stepNavOn1">Step.1</span><strong class="stepNavOn2">구간 및 운임 선택</strong></li>
			<li><span>Step.2</span><strong>탑승자 정보입력</strong></li>
			<li><span>Step.3</span><strong>부가서비스 선택</strong></li>
			<li><span>Step.4</span> <strong>항공권 결제</strong></li> 
		</ul>
		</div>
		
		<!--구간 선택 부분  -->
		<h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>구간선택</strong></h4>
		<input id="tab1" type="radio" name="tabs" checked="checked"> 
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
			<div id="part1">
				<label><img alt="bul0.png" src="../img/bul0.png">구간1</label> 
				<select  name="start">
					<option>${dep}</option>
					<option value="ICN">서울(인천)</option>
					<option value="GMP">서울(김포)</option>
					<option value="PUS">부산</option>
					<option value="CIU">제주</option>
					<option value="KWJ">광주</option>
				</select> <select  name="end">
					<option>${arr}</option>
					<option value="FUK">${arr}</option>
					<option value="OKA">오키나와</option>
					<option value="DAD">다낭</option>
					<option value="PEK">베이징</option>
					<option value="MNL">마닐라</option>
				</select>
					<input type="text" id="datepicker" onclick="datepicker()" value="${dayGo}">
				</div>

			
			<div id="part2">
			<label><img alt="bul0.png" src="../img/bul0.png">구간2</label> 
			<select name="start">
				<option>${arr}</option>
				<option value="FUK">후쿠오카</option>
				<option value="OKA">오키나와</option>
				<option value="DAD">다낭</option>
				<option value="PEK">베이징</option>
				<option value="MNL">마닐라</option>
			</select> 
			<select name="end">
				<option>${dep}</option>
				<option value="ICN">서울(인천)</option>
				<option value="GMP">서울(김포)</option>
				<option value="PUS">부산</option>
				<option value="CIU">제주</option>
				<option value="KWJ">광주</option>
			</select>

			<input type="text" id="datepicker2" onclick="datepicker()" value="${dayCome}">
			</div>
			
			<div  id="part3">
			 	<label><img alt="bul0.png" src="../img/bul0.png">인원</label> 
				<select name="adult">
					<option id="adult" value="${adult}">${adult}</option>
					<option id="adult" value="adult_num1">성인 1명</option>
					<option id="adult" value="adult_num2">성인 2명</option>
					<option id="adult" value="adult_num3">성인 3명</option>
					<option id="adult" value="adult_num4">성인 4명</option>
				</select> 
				<select name="child" >
					<option>${kid}</option>
					<option value="child_num0">아동 0명</option>
					<option value="child_num1">아동 1명</option>
					<option value="child_num2">아동 2명</option>
					<option value="child_num3">아동 3명</option>
					<option value="child_num4">아동 4명</option>
				</select> 
				<select name="baby" >
					<option>${baby}</option>
					<option value="baby_num0">소아 0명</option>
					<option value="baby_num1">소아 1명</option>
					<option value="baby_num2">소아 2명</option>
					<option value="baby_num3">소아 3명</option>
					<option value="baby_num4">소아 4명</option>
				</select>
			</div>
			
			<!--검색 버튼  -->
			<div id="selectBtn">
				<button type="button" class="btn btn-primary btn-lg" id="airBtn" onclick="fnAirTicketSearch()">항공권검색</button>
			</div>
		</section>

		<!-- ===================section: 편도========================== -->
		<section id="content2">
			구간1 <select name="start">
				<option>---출발지 ---</option>
				<option>서울(인천)</option>
				<option>서울(김포)</option>
				<option>부산</option>
				<option>제주</option>
				<option>광주</option>
			</select> <select name="end">
				<option>---도착지 ---</option>
				<option>후쿠오카</option>
				<option>오키나와</option>
				<option>다낭</option>
				<option>베이징</option>
				<option>마닐라</option>
			</select> From: <input type="text" class="datepicker" onclick="datepicker()">

			<br> 구간2 <select name="start">
				<option>---출발지 ---</option>
				<option value="FUK">후쿠오카</option>
				<option value="OKA">오키나와</option>
				<option value="DAD">다낭</option>
				<option value="PEK">베이징</option>
				<option value="MNL">마닐라</option>
			</select> <select name="end">
				<option>---도착지 ---</option>
				<option value="ICN">서울(인천)</option>
				<option value="GMP">서울(김포)</option>
				<option value="PUS">부산</option>
				<option value="CIU">제주</option>
				<option value="KWJ">광주</option>
			</select> To: <input type="text" class="datepicker2" onclick="datepicker()">
			<br> 인원 <select name="adult">
				<option value="adult_num1">성인 1명</option>
				<option value="adult_num2">성인 2명</option>
				<option value="adult_num3">성인 3명</option>
				<option value="adult_num4">성인 4명</option>
			</select> <select name="child">
				<option value="child_num0">아동 0명</option>
				<option value="child_num1">아동 1명</option>
				<option value="child_num2">아동 2명</option>
				<option value="child_num3">아동 3명</option>
				<option value="child_num4">아동 4명</option>
			</select>
			<select name="baby" >
					<option value="baby_num0">소아 0명</option>
					<option value="baby_num1">소아 1명</option>
					<option value="baby_num2">소아 2명</option>
					<option value="baby_num3">소아 3명</option>
					<option value="baby_num4">소아 4명</option>
				</select>
		<!--검색 버튼  -->
			<div id="selectBtn">
				<button type="button" class="btn btn-primary btn-lg" id="airBtn">항공권검색</button>
			</div>
		</section>
		      
       <!--=====================part1===========================  -->
       
   <div class="part_container" style="display:none;">
   <!--구간1 제목  -->
   <h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>구간1:서울(인천) - 다낭 </strong></h4>
      <br>
   
   <!--tabs 날짜 부분  -->
   <input id="part_tab1" type="radio" name="tabs" checked>
   <label for="part_tab1" class="part_label">
   9-13(목)<br>
   <strong>69,000</strong>
   </label>
   <input id="part_tab2" type="radio" name="tabs">
   <label for="part_tab2" class="part_label">
   9-14(금)<br>
   <strong>70,000</strong>
   </label>
   <input id="part_tab3" type="radio" name="tabs">
   <label for="part_tab3" class="part_label">
   9-15(토)<br>
   <strong>73,000</strong>
   </label>
   <input id="part_tab4" type="radio" name="tabs">
   <label for="part_tab4" class="part_label">
   9-16(일)<br>
   <strong>56,000</strong>
   </label>
   <input id="part_tab5" type="radio" name="tabs">
   <label for="part_tab5" class="part_label">
   9-17(월)<br>
   <strong>80,000</strong>
   </label>
   <input id="part_tab6" type="radio" name="tabs">
   <label for="part_tab6" class="part_label">
   9-18(화)<br>
   <strong>45,000</strong>
   </label>
   <input id="part_tab7" type="radio" name="tabs">
   <label for="part_tab7" class="part_label">
   9-19(수)<br>
   <strong>50,000</strong>
   </label>

<!--해당 날짜에 대한 sectiton부분  -->   
<section id="part_content1">
<table class="table table-bordered">
  <tr>
     <td>1편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>

</section>

 <section id="part_content2">
 <table class="table table-bordered">
  <tr>
     <td>2편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section>

<section id="part_content3">
<table class="table table-bordered">
  <tr>
     <td>3편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section>

<section id="part_content4">
<table class="table table-bordered">
  <tr>
     <td>편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section>

<section id="part_content5">
<table class="table table-bordered">
  <tr>
     <td>편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section>

<section id="part_content6">
<table class="table table-bordered">
  <tr>
     <td>편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section>

<section id="part_content7">
<table class="table table-bordered">
  <tr>
     <td>편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section> 


<div id="text">
<ul>
   <li><strong>출·도착 시각은 현지 시각 기준이며 항공기 스케줄은 정부인가 조건으로, 예고 없이 변경 될 수 있습니다.</strong></li>
   <li><strong><font color=#4B1152>+1</font></strong>은 다음날 도착을, <strong><font color=#4B1152>+2</font></strong>는 2일 뒤 도착을 의미합니다.</li>
   <li>예약과 동시에 구매 하셔야 하며 유류할증료와 해외공항시설사용료는 발권 일에 따라 변경될 수 있습니다.</li>
   <li>항공운임 등 총액은 여정 별 운임 선택 후 우측에 자세히 표시 됩니다.</li>
   <li>포인트 항공권은 조기 마감 될 수 있습니다.</li>
   <li>적립 예정 리프레시 포인트는 할인쿠폰 사용, 환율 적용 등 최종 항공권 결제금액에 따라 실제 적립되는 포인트와 상이할 수 있습니다.</li>
   <li>해외에서 항공권을 구매하신 경우 해당 국가의 정해진 환율로 원(KRW)화 환산되어 적립됩니다.</li>
   <li>실제 결제한 항공운임에 한해 리프레시 포인트가 적립되며, 부가서비스 및 세금 등은 적립대상에서 제외됩니다.</li>
</ul>

</div>

</div>

 <!--=====================part2===========================  -->
   <div class="part_container" style="display:none;">
   <!--구간1 제목  -->
   <h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>구간2:다낭 - 서울(인천)</strong></h4>
      <br>
   
   <!--tabs 날짜 부분  -->
   <input id="part_tab1" type="radio" name="tabs" checked>
   <label for="part_tab1" class="part_label">
   9-13(목)<br>
   <strong>69,000</strong>
   </label>
   <input id="part_tab2" type="radio" name="tabs">
   <label for="part_tab2" class="part_label">
   9-14(금)<br>
   <strong>70,000</strong>
   </label>
   <input id="part_tab3" type="radio" name="tabs">
   <label for="part_tab3" class="part_label">
   9-15(토)<br>
   <strong>73,000</strong>
   </label>
   <input id="part_tab4" type="radio" name="tabs">
   <label for="part_tab4" class="part_label">
   9-16(일)<br>
   <strong>56,000</strong>
   </label>
   <input id="part_tab5" type="radio" name="tabs">
   <label for="part_tab5" class="part_label">
   9-17(월)<br>
   <strong>80,000</strong>
   </label>
   <input id="part_tab6" type="radio" name="tabs">
   <label for="part_tab6" class="part_label">
   9-18(화)<br>
   <strong>45,000</strong>
   </label>
   <input id="part_tab7" type="radio" name="tabs">
   <label for="part_tab7" class="part_label">
   9-19(수)<br>
   <strong>50,000</strong>
   </label>

<!--해당 날짜에 대한 sectiton부분  -->   
<section id="part_content1">
<table class="table table-bordered">
  <tr>
     <td>1편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>

</section>

 <section id="part_content2">
 <table class="table table-bordered">
  <tr>
     <td>2편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section>

<section id="part_content3">
<table class="table table-bordered">
  <tr>
     <td>3편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section>

<section id="part_content4">
<table class="table table-bordered">
  <tr>
     <td>편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section>

<section id="part_content5">
<table class="table table-bordered">
  <tr>
     <td>편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section>

<section id="part_content6">
<table class="table table-bordered">
  <tr>
     <td>편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section>

<section id="part_content7">
<table class="table table-bordered">
  <tr>
     <td>편명</td>
     <td>출발시간</td>
     <td>도착시간</td>
     <td>특가운임</td>
     <td>정규운임</td>
  </tr>
  <tr>
     <td>7C2903</td>
     <td>21:20</td>
     <td>23:59</td>
     <td><input type="checkbox" name="pay1">7,000KRW</td>
     <td><input type="checkbox" name="pay2">637,800KRW</td>
  </tr>
  <tr>
    <td>7C2907</td>
     <td>22:40</td>
     <td>01:30</td>
     <td><input type="checkbox" name="pay3">7,000KRW</td>
     <td><input type="checkbox" name="pay4">637,800KRW</td>
  </tr>
</table>
</section> 


<div id="text">
<ul>
   <li><strong>출·도착 시각은 현지 시각 기준이며 항공기 스케줄은 정부인가 조건으로, 예고 없이 변경 될 수 있습니다.</strong></li>
   <li><strong><font color=#4B1152>+1</font></strong>은 다음날 도착을, <strong><font color=#4B1152>+2</font></strong>는 2일 뒤 도착을 의미합니다.</li>
   <li>예약과 동시에 구매 하셔야 하며 유류할증료와 해외공항시설사용료는 발권 일에 따라 변경될 수 있습니다.</li>
   <li>항공운임 등 총액은 여정 별 운임 선택 후 우측에 자세히 표시 됩니다.</li>
   <li>포인트 항공권은 조기 마감 될 수 있습니다.</li>
   <li>적립 예정 리프레시 포인트는 할인쿠폰 사용, 환율 적용 등 최종 항공권 결제금액에 따라 실제 적립되는 포인트와 상이할 수 있습니다.</li>
   <li>해외에서 항공권을 구매하신 경우 해당 국가의 정해진 환율로 원(KRW)화 환산되어 적립됩니다.</li>
   <li>실제 결제한 항공운임에 한해 리프레시 포인트가 적립되며, 부가서비스 및 세금 등은 적립대상에서 제외됩니다.</li>
</ul>

</div>
	<!-- hidden input태그  -->
	<input type="hidden" id="hdep" name="hdep">
	<input type="hidden" id="harr" name="harr">
	<input type="hidden" id="hdayGo" name="hdayGo">
	<input type="hidden" id="hdayCome" name="hdayCome">
	<input type="hidden" id="hadult" name="hadult">
	<input type="hidden" id="hkid" name="hkid">
	<input type="hidden" id="hbaby" name="hbaby">
	<input type="button" value="구간 및 운임 선택 완료" onclick="inputChk();">
	</div>   
</div>
</form>
</body>
</html>











