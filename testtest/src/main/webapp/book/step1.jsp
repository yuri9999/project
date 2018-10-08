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

</head>
<body>
	<form action="" method="post" name="index">
	
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
		<input id="tab1" type="radio" name="tabs" checked> 
		<label for="tab1" class="tabClass">왕복</label> 
		<input id="tab2" type="radio" name="tabs">
		<label for="tab2" class="tabClass">편도</label> 
		<input id="tab3" type="radio" name="tabs">
		<label for="tab3" class="tabClass">다구간</label>

		 
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
					<option>---출발지 ---</option>
					<option value="ICN">서울(인천)</option>
					<option value="GMP">서울(김포)</option>
					<option value="PUS">부산</option>
					<option value="CIU">제주</option>
					<option value="KWJ">광주</option>
				</select> <select  name="end">
					<option>---도착지 ---</option>
					<option value="FUK">후쿠오카</option>
					<option value="OKA">오키나와</option>
					<option value="DAD">다낭</option>
					<option value="PEK">베이징</option>
					<option value="MNL">마닐라</option>
				</select>
					<input type="text" id="datepicker" onclick="datepicker()">
				</div>

			
			<div id="part2">
			<label><img alt="bul0.png" src="../img/bul0.png">구간2</label> 
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

			<input type="text" id="datepicker2" onclick="datepicker()">
			</div>
			
			<div  id="part3">
			 	<label><img alt="bul0.png" src="../img/bul0.png">인원</label> 
				<select name="adult">
					<option value="adult_num1">성인 1명</option>
					<option value="adult_num2">성인 2명</option>
					<option value="adult_num3">성인 3명</option>
					<option value="adult_num4">성인 4명</option>
				</select> 
				<select name="child" >
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
			</div>
			
			<div id="part3"> 
			<label><img alt="bul0.png" src="../img/bul0.png">결제</label> 
			<input type="radio" id="pay" name="radio" value="1" checked>일반결제 
			<input type="radio" id="pintPay" name="radio" value="2">포인트결제
			</div>
			
			<!--검색 버튼  -->
			<div id="selectBtn">
				<button type="button" class="btn btn-primary btn-lg" id="airBtn">항공권검색</button>
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
				<option value="child_num1">아동 1명</option>
				<option value="child_num2">아동 2명</option>
				<option value="child_num3">아동 3명</option>
				<option value="child_num4">아동 4명</option>
			</select> <br> 결제 <input type="radio" id="pay" name="radio" value="1"
				checked>일반결제 <input type="radio" id="pintPay" name="radio"
				value="2">포인트결제

		</section>

		<!-- ===================section: 다구간========================== -->
		<section id="content3">
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
				<option value="child_num1">아동 1명</option>
				<option value="child_num2">아동 2명</option>
				<option value="child_num3">아동 3명</option>
				<option value="child_num4">아동 4명</option>
			</select> <br> 결제 <input type="radio" id="pay" name="radio" value="1"
				checked>일반결제 <input type="radio" id="pintPay" name="radio"
				value="2">포인트결제

		</section>
		
		part1, part2 불러오기
		<br>
		<br>
		
		<input type="submit" value="구간 및 운임 선택 완료">
		
		</div>
		
		</form>
</body>
</html>











