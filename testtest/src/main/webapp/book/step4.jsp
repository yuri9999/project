<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/step1.css">
<link rel="stylesheet" href="../css/tab.css">
</head>
<body>
<form action="" method="post" name="step4">
<div id="container">
		<!--step1,2,3,4 부분  -->	
		<div id="top">
		<h1>항공권 예매</h1>
		<ul class="stepNav threeWide setp04" >
			 <li><span>Step.1</span><strong>구간 및 운임 선택</strong></li>
			<li><span>Step.2</span> <strong>탑승자 정보입력</strong></li> 
			<li><span>Step.3</span><strong>부가서비스 선택</strong></li>
			<li><span class="stepNavOn1">Step.4</span><strong class="stepNavOn2">항공권 결제</strong></li>
		</ul>
		</div>
		
		<!--일반 결제 정보  -->
		<div id="paymentInfo">
			<h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>일반 결제 정보</strong></h4>
		<!--결제수단  -->
		<div id="payMeans">
			<label><img alt="bul0.png" src="../img/bul0.png">결제수단</label> 
			<input type="button" name="" value="신용카드">
			<input type="button" name="" value="해외신용카드">
			<input type="button" name="" value="계좌이체">
		</div>
		<!--카드 종류 -->
		<div id="cardType">
			<label><img alt="bul0.png" src="../img/bul0.png">카드종류</label> 
			<select name="card">
				<option>카드종류</option>
				<option value="신한카드">신한카드</option>
				<option value="삼성카드">삼성카드</option>
				<option value="현대카드">현대카드</option>
			</select>
		</div>
		<!--할부선택  -->
		<div id="discountChoice">
			<label><img alt="bul0.png" src="../img/bul0.png">할부선택</label> 
			<select name="card">
				<option value="0">일시불</option>
				<option value="2">2개월</option>
				<option value="3">3개월</option>
				<option value="4">4개월</option>
			</select>
		</div>
	<input type="submit" value="결제하기">
</div>
</div>
</form>

</body>
</html>