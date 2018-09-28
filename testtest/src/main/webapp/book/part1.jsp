<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../part1.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<body>
<div id="container">
	<!--구간1 제목  -->
	<h4><img alt="title1.jpg" src="../img/title1.jpg"><strong>구간1:서울(인천) - 다낭 </strong></h4>
		<br>
	
	<!--tabs 날짜 부분  -->
	<input id="tab1" type="radio" name="tabs" checked>
	<label for="tab1">
	9-13(목)<br>
	<strong>69,000</strong>
	</label>
	<input id="tab2" type="radio" name="tabs">
	<label for="tab2">
	9-14(금)<br>
	<strong>70,000</strong>
	</label>
	<input id="tab3" type="radio" name="tabs">
	<label for="tab3">
	9-15(토)<br>
	<strong>73,000</strong>
	</label>
	<input id="tab4" type="radio" name="tabs">
	<label for="tab4">
	9-16(일)<br>
	<strong>56,000</strong>
	</label>
	<input id="tab5" type="radio" name="tabs">
	<label for="tab5">
	9-17(월)<br>
	<strong>80,000</strong>
	</label>
	<input id="tab6" type="radio" name="tabs">
	<label for="tab6">
	9-18(화)<br>
	<strong>45,000</strong>
	</label>
	<input id="tab7" type="radio" name="tabs">
	<label for="tab7">
	9-19(수)<br>
	<strong>50,000</strong>
	</label>

<!--해당 날짜에 대한 sectiton부분  -->	
<section id="content1">
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

 <section id="content2">
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

<section id="content3">
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

<section id="content4">
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

<section id="content5">
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

<section id="content6">
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

<section id="content7">
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
</body>
</html>









