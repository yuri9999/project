<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap파일 위치 설정 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<style type="text/css">
  /* LAYOUT **/
  * {
    margin: 0;
    padding: 0;
  }
  .container ul {
    list-style-type: none;
  }
  .table {
    margin-bottom: 0;
  }
  .container {
    max-width: none !important;
    width: 970px;
  }
  /** a태그 초기화 **/
 .container a, .container a:hover, .container a:visited, .container a:active {
    text-decoration: none;
    color: black;
  }
  /** a태그 초기화 **/
  /* LAYOUT **/
  /* INFO **/
  .userInfo {
    float: right;
    height: 100%;
  }
  .userInfo p {
    float: left;
    margin: 0;
    height: 24px;
    line-height: 1.7em;
  }
  .tab {
    float: left;
    height: 100%;
    margin: 0;
    margin-left: 10px;
    border: 1px solid #4B1152;
  }
  .grade {
    background: #4B1152;
    color: white;
  }
  .usedPoint, .modify {
    color: #4B1152;
  }
  .grade, .usedPoint, .modify {
    float: left;
    padding: 0px 20px;
    border-right: 1px solid black;
  }
  .modify {
    border-right: none;
  }
  /* INFO **/
  /* TOPBTN **/
  .topbtn {
  	width: auto;
  	height: 50px;
  }
  .reservation {
  	background: #4B1152;
  	display: inline-block;
  	float: left;
  	width: 50%;
  	height: 100%;
  }
  .reservation span {
  	color: white; 
  }
  .boarding {
    background: #d6d6d6;
    display: inline-block;
    float: left;
    width: 50%;
    height: 100%;
  }
  .topbtn > a:hover {
    cursor: pointer;
  }
  #tableTitle {
  	height: 49px;
  }
  .reqSection {
  	margin-bottom: 20px;
  }
  /* TOPBTN **/
  /* INPUT **/
 .container input[type='button'] {
    background: #4B1152;
    color: white;
    width: auto;
    padding: 5px 20px;
    border-radius: 5px;
  }
 .container input[type="text"] {
    padding: 5px;
  }
  /* INPUT **/
  /* 배너**/
  .banner { 
	width: 1000px;
	height: 160px;
	background-color: #4B1152;
	margin-bottom: 25px;
  }
  .banner h2{
 	margin-left: 3em;
 	padding-top : 45px;
 	color: white;  
  }
  /* 배너**/
  /* 등급별 제목줄**/
  .vipimg {
  	margin: 20px 0 10px 0;
  	border-bottom: 3px solid black;
  }
  .goldimg {
  	margin: 20px 0 10px 0;
  	border-bottom: 3px solid #F58220;
  }
  .silpimg {
 	margin: 20px 0 0 0;
  	border-bottom: 3px solid #00A7E1;
  }
  .silimg {
 	margin: 20px 0 0 0;
  	border-bottom: 3px solid #A5A3A3;
  }
  .vipimg img, .goldimg img, .silpimg img, .silimg img{
  	float: left;
  	height: 39px;
  }
  /* 등급별 제목줄**/
  /* 내용 **/
  .content {
  	margin: 20px;
  }
  
  .gradeinfo {
  	background-color: #FAFAFA;
  	border: 1px solid lightgray;
  	margin-left: 0.5em;
  }
  .gradinfo ul{
  	padding: 30px;
  }
  .gradeinfo ul li {
  	margin-top: 10px;
  	font-size : 13px;
  	list-style: circle;
  	letter-spacing:-1px;
  	color: #666666;
  	margin-left: 1.7em; 
  }
  
  .silcontent {
  	margin-top: 70px;
  	margin-bottom: 70px;
  }
  .silcontent p{
  	margin-left: 0.5em;
  	font-size: 22px;
  	font-weight: bold;
  }
  .vip {
  	width: 910px;
  	height: 600px;
  	margin-top: 30px;
  }
  .goldP {
  	width: 910px;
  	height: 500px;
  	margin-top : 30px;
  }
  .vip:after, .goldP:after{
  	display: block;
  	clear: both;
  	content: '';
  }
  .vip ul, .goldP ul {
  	width: 910px;
  }
  .vip ul:after, .goldP ul:after{
  	display: block;
  	clear: both;
  	content: '';
  }
  .vip ul li, .goldP ul li {
  	float: left;
  	width: 295px;
  	height: 200px;
  	padding: 0 20px 0 20px;
  	border-left: 1px solid gray;
  	text-align: center;
  	font-weight: bold;
  	letter-spacing: -1px;
  	font-size: 20px;
  	margin: 30px 0 20px 0;
  	line-height: 20px;
  }
  .vip ul li:first-child, .goldP ul li:first-child {
  	width: 295px;
  	border: none;
  }
  .vip ul li img, .goldP ul li img {
  	margin-bottom: 20px;
  }
  .vip ul li span, .goldP ul li span {
  	font-size: 14px;
  }
  .gold1 img {
  	float: left;
  	margin :20px;
  }
  .gold1 p {
  	font-size: 20px;
  	vertical-align: middle;
  	padding-top: 40px;
  	padding-left: 200px;
  }
  .gold1:after {
  	display: block;
  	clear: both;
  	content: '';
  }
  .silverplus {
  	width: 910px;
  	height: 350px;
  	margin-top: 30px;
  }
  .silverplus:after {
  	display: block;
  	clear: both;
  	content: '';
  }
  .silverPcontent {
  	width: 910px;
  	margin-top: 30px;
  }
  .silverPcontent ul {
  	width: 910px;
  }
  .silverPcontent ul:after {
  	display: block;
  	clear: both;
  	content: '';
  }
  .silverPcontent ul li {
  	float: left;
  	width: 295px;
  	height: 200px;
  	padding: 0 20px 0 20px;
  	border-left: 1px solid gray;
  	text-align: center;
  	font-weight: bold;
  	letter-spacing: -1px;
  	font-size: 20px;
  	margin: 30px 0 20px 0;
  	line-height: 20px;
  }
  .silverPcontent ul li:first-child {
  	width: 295px;
  	border: none;
  }
  .silverPcontent ul li img {
  	margin-bottom: 20px;
  }
  .silverPcontent ul li span {
  	font-size: 14px;
  }
  .goldcontent1 li img{
  	width: 100px;
  	height: 80px;	
  }
  /* 내용**/
  .content span {
  	color: red;
  }
  .lastUl li:last-child{
  	border: none;
  }
  .aaa {
  	text-align:center;
  	height: 120px;
  	width: 295px;
  	margin: 0 auto;
  }
</style>
</head>
<body>
<div class="container">
    <p class="text-left">HOME > 리프레시 포인트 > 리프레시 포인트 > 포인트 적립</p>
    <h2 class="text-left">포인트 적립</h2>
    <c:if test="${sessionScope.memId == memberDTO.id }">
    <hr>
	    <table class="table">
	      <tr>
	        <td>${sessionScope.memId }님, 안녕하세요!</td>
	        <td>
	          <div class="userInfo">
	            <ul class="saveTab">
	              <li class="grade">
	                <span>${memberDTO.grade }</span>
	              </li>
	              <li class="usedPoint">
	                <span>${memberDTO.totalPoint }P</span>
	              </li>
	              <li class="modify">
	                <a href="../member/memberModifyForm.do?id=${sessionScope.memId }">MODIFY</a>
	              </li>
	            </ul>
	          </div>
	        </td>
	      </tr>
	   	</table>
   	</c:if>
   	<c:if test="${sessionScope.memId != memberDTO.id }">
    <hr>
   	</c:if>
   	<div class="banner">
   		<h2>차별화된 회원등급을 확인하세요!</h2>
   	</div><!-- banner -->
   	<div class="content">
  	 	<h3><img src="../img/title1.jpg">등급별 혜택</h3>
  	 	<div class="vip">
  	 		<div class="vipimg">
  	 			<img src="../img/grade01.png">
  	 			<h4>리프레시 포인트 <span>250,000 P </span> 적립 or <span>50회</span> 탑승횟수 누적</h4>
  	 		</div>
  	 		<ul>
  	 			<li><img src="../img/grade01_1.png"><br>+10%적립<br>(항공운임 5%기본적립 + 5%추가 적립)</li>
  	 			<li><img src="../img/grade01_2.png"><br>수하물 우선처리</li>
  	 			<li><img src="../img/grade01_3.png"><br>추가 수하물 2개 무료<br>(2PC,각 15KG)<br><span>*찜 특가는 제외</span><br><span>*국내선의 경우, 무게로만 적용 (30KG)</span><br><span>*추가 수하물 서비스는 수속카운터에서만 진행가능합니다.</span></li>
  	 		</ul>
  	 		<ul class="lastUl">
  	 			<li><img src="../img/grade01_4.png"><br>사전 좌석 지정</li>
  	 			<li><img src="../img/grade01_5.png"><br>우선 탑승 <br><span>※공항 카운터에서 발권 시<br> 모바일APP 회원카드 제시 인증</span> </li>
  	 			<li></li>
  	 		</ul>
  	 	</div><!-- vip -->
  	 	<div class="goldP">
  	 		<div class="goldimg">
  	 			<img src="../img/grade02.png">
  	 			<h4> 리프레시 포인트<span> 100,000 P</span> 적립 or <span>20회</span> 탑승횟수 누적</h4>
  	 		</div>
  	 		<div class="gold1">
  	 			<img src="../img/grade02_0.png"/><p>6%적립(항공운임 5%기본적립 + 1%추가 적립)</p>
  	 		</div>
  	 		<ul>
  	 			<li>
  	 				<img src="../img/grade02_1.png"><br>
  	 				추가 수하물 1개 무료<br>
  	 				(1PC,15KG)<br>
  	 				<span>*찜 특가는 제외<br>
  	 				*국내선의 경우, 무게로만 적용 (15KG)<br>
  	 				*추가 수하물 서비스는 수속카운터에서만 진행가능합니다.</span>
  	 			</li>
  	 			<li><img src="../img/grade01_2.png"><br>수하물 우선 처리</li>
  	 			<li><img src="../img/grade01_5.png"><br>우선 탑승<br><span>※공항 카운터에서 발권 시<br>모바일APP 회원카드 제시 인증</span></li>
  	 		</ul>
  	 		
  	 	</div><!-- gold -->
  	 	<div class="silverplus">
  	 		<div class="silpimg">
  	 			<img src="../img/grade03.png"><h4>리프레시 포인트 <span>50,000 P</span> 적립 or <span>10회</span> 탑승횟수 누적</h4>
  	 		</div>
  	 		<div class="silverPcontent">
  	 			<ul class="lastUl">
	  	 			<li><img src="../img/grade02_0.png"><br>5.5% 적립<br>(항공운임 5%기본적립 + 0.5%추가적립)</li>
	  	 			<li><img src="../img/grade01_5.png"><br>우선 탑승 <br><span>※공항 카운터에서 발권 시<br> 모바일APP 회원카드 제시 인증</span> </li>
	  	 			<li></li>
  	 			</ul>
  	 		</div>
  	 	</div><!-- silverplus -->
  	 	<div class="silver">
  	 		<div class="silimg">
  	 			<img src="../img/grade04.png"><h4>리프레시 포인트 <span>가입 회원 모두</span></h4>
  	 		</div>
  	 		<div class="silcontent">
  	 			<p>리프레시 포인트 가입 회원 모두 제주항공만의 차별화된 멤버쉽 혜택을 누려보세요!</p>
  	 		</div>
  	 	</div><!-- silver -->
  	 	<div class="gradeinfo">
 			<ul>
 				<li>등급 산정에 반영되는 포인트는 탑승 시 적립되는 포인트 및 등급 별 추가 적립 포인트만 해당 됩니다.<br>
					포인트 적립은 일반 항공권 결제 후 탑승시에만 적립되며, 포인트 항공권 탑승 시에는 적립 되지 않습니다.</li>
 				<li>등급 유지 기간은 3년이며, 등급 변경은 승급된 날로 부터 3년 뒤 승급 심사를 통해 재 산정 됩니다.</li>
 				<li>승급 심사는 승급일 전월 마지막 일로부터 이전 3년 간의 실적으로 심사되며, 등급별 기준에 맞추어 재 산정 됩니다.<br>
					(예 : 2018년 7월 10일 승급심사 , 승급 집계 기간 2015년 7월 1일 ~ 2018년 6월 30일)</li>
 				<li>승급의 경우 각 등급 별 승급 조건이 충족될 경우 자동 승급 처리됩니다.(승급 심사는 매월 10일이며 1달에 한번 진행됩니다.)</li>
 				<li>위탁 수하물 추가 및 수하물 우선 처리는 공항 카운터에서 발권 시 리프레시 포인트 카드 인증 후 처리됩니다.</li>
 				<li>사전 좌석 지정은 일반 좌석에 한해 제공됩니다. (앞 좌석/비상구 좌석 제외)</li>
 				<li>찜 특가는 구매시 무료 수하물 추가 서비는 제외 됩니다.</li>
 				<li>추가 수하물 서비스는 수속카운터에서만 진행가능합니다.</li>
 				<li>우선탑승은 공항탑승구(탑승GATE)에서 탑승 시작 알림시 항공기에 우선적으로 탑승함을 말하며, 현지 공항사정에 따라 제한이 있을 수 있으니 사전 양해 바랍니다.<br>
 					(서비스 이용시 공항카운터에서 모바일 APP카드 제시 , 키오스크/웹체크인시 자동인증)</li>
 			</ul> 	
  	 	</div><!-- gradeinfo  -->
   	</div><!-- content -->
</div><!-- container -->
</body>
</html>