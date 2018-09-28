<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style type="text/css">
  	  /* LAYOUT **/
  * {
    margin: 0;
    padding: 0;
  }
  .jpinfocontainer{
  	margin-left: 450px;
  }
  ul {
    list-style-type: none;
  }
  td {
    padding: 0;
  }
  .jpinfotable {
    margin-bottom: 40px;
    height: 24px;
  }
  .jpinfocontainer {
    max-width: none !important;
    width: 970px;
  }
  .color_text {
    color: #4B1152;
    font-weight: bold;
  }
  /** a태그 초기화 **/
  .jpinfocontainer a, .jpinfocontainer a:hover, .jpinfocontainer a:visited, .jpinfocontainer a:active {
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
  /* INPUT **/
  input[type='button'] {
    background: #4B1152;
    color: white;
    width: auto;
    padding: 5px 20px;
    border-radius: 5px;
  }
  input[type="text"] {
    padding: 5px;
  }
  /* INPUT **/
  /* 배너 **/
  .banner { 
	width: 1000px;
	height: 160px;
	background-color: #4B1152;  
  }
  .banner h2{
 	margin-left: 3em;
 	padding-top : 45px;
 	color: white;  
  }
  .content{
	width: 1000px; 
  }
  .join {
  	margin-left : 5.5em;
  	height: 213px;
  	margin-top: 30px;
  }
  .join h2 {
  	margin-bottom: 25px;
  }
  .join p {
  	margin-bottom: 5px;
  }
  .join em{
  	color: orange;
  }
  .gray {
  	color : lightgray;
  	font-size: 14px;
  }
  #joinBtn {
  	margin-top: 15px;
  	float: right;
  	margin-right: 7em;
  	background: #4B1152;
    color: white;
    width: auto;
    padding: 5px 20px;
    border-radius: 5px;
    text-decoration: none;
  }
  
  .pointCard ,.pointUse,.pointWay,.pointMember,.pointSave {
  	margin-top: 30px;
  	margin-left: 5.5em; 
  }
  .pointCard:after ,.pointUse:after,.pointWay:after,.pointMember:after,.pointSave:after{
  	display: block;
  	clear: both;
  	content: '';
  }
  .pointWay li {
  	float: left;
  	width: 218px;
  	height: 70px;
  	padding: 0 20px 0 20px;
  	text-align: center;
  	letter-spacing: -1px;
  	background: 50% 6px no-repeat;
  }
  .pointWay li:first-child {
  	width: 160px;
  	margin: 0;
  }
  .pointWay ul {
  	margin: 0;
  }
  .pointWay ul:after {
  	display: block;
  	clear: both;
  	content: '';
  }
  .pointWay ul li {
  	width: 160px;
  	height: auto;
  	padding: 0 10px 0 10px;
  	margin-left : 20px;
  	border: 0;
  	font-weight : bold;
  	background: left 0 no-repeat;
  }
  .pointWay ul li img{
	margin-left: -30px;
	padding: 10px 0 13px 0;   
  }
  
  .pointWay ul li p {
  	font-size: 13px;
  }
  .pointSave{
  	width: 912px;
  }
  
  .point01:after{
  	display: block;
  	clear: both;
  	content: '';
  }
  
  .pointSave li  {
  	float: left;
  	width: 297px;
  	height: 150px;
  	padding: 0px 20px 0 20px;
  	border-left: 1px solid gray;
  	text-align: center;
  	font-weight:bold;
  	font-size: 15px;
  	letter-spacing: -1px;
  	background: 50% 6px no-repeat;
  }
  
  .pointSave li:first-child{
  	width: 297px;
  	border: none;
  }
  .point01 {
  	padding: 10px 10px 40px 10px;
  }
  .pointSave ul li img{
  	padding: 10px 0 15px 0;
  }
  .pointSave h3 {
  	margin-bottom: 15px;
  }	
  .pointUse {
  	width: 912px;
  }
  .pointUse ul {
  	width: 912px;
  }
  .pointUse ul:after {
  	display: block;
  	clear: both;
  	content: '';
  }
  .pointUse li {
  	float: left;
  	width: 297px;
  	height: 70px;
  	padding: 0 10px 0 10px;
  	border-left: 1px solid gray;
  	text-align: center;
  	font-weight: bold;
  	font-size: 14px;
  	letter-spacing: -1px;
  	background: 50% 6px no-repeat;
  }
  .pointUse li:first-child{
  	width: 297px;
  	border: none;
  }
  .pointUse ul li img{
  	padding: 10px 0 15px 0;
  }
  .pointUse h3 {
  	margin-bottom: 15px;
  }	

  .pointCard ul li {
  	list-style: circle;
  	font-size: 14px;
  	margin-top: 10px;
  	color: gray;
  }
  .cardimg {
  	width: 912px;
  	text-align: center;
  }
  .pointCard h3 {
  	margin-bottom: 30px;
  }
  .pointCard ul {
  	margin-top: 20px;
  }

  .pointMember ul li {
  	list-style: circle;
  	font-size: 14px;
  	margin-top : 10px;
  	color: gray;
  }
  .pointMember ul {
  	margin-top: 20px;
  }
  .memberImg img {
  	width:912px;
  	text-align: center;
  }
  .pointMember h3 {
  	margin-bottom: 30px;
  }
  </style>
</head>
<body>
<div class="jpinfocontainer">
    <p class="text-left">HOME > 리프레시 포인트 > 리프레시 포인트 > 소개</p>
    <h2 class="text-left">Refresh point</h2>
    <c:if test="${sessionScope.memId != null }">
	    <table class="jpinfotable">
	      <tr>
	        <td>${sessionScope.memName }(${sessionScope.memId })님, 안녕하세요!</td>
	        <td>
	          <div class="userInfo">
	            <ul class="tab">
	              <li class="grade">
	                <span>SILVER</span>
	              </li>
	              <li class="usedPoint">
	                <span>1000P</span>
	              </li>
	              <li class="modify">
	                <a href="#">MODIFY</a>
	              </li>
	            </ul>
	          </div>
	        </td>
	      </tr>
	   	</table>
   	</c:if>
   	<div class="banner">
   		<h2>항공마일리지의 새로운 기준! <br> 항공운임 기준 5% 적립</h2>
   	</div>
   	<div class="content">
	   	<div class="join">
	  		<h2>JAJUairrefresh Point</h2>
	  		<p>리프레시 포인트는 <em>순수 항공 운임 기준5%</em>가 적립되며,가족,친구에게</p>
	  		<p><em>포인트 선물,합산을 통해 포인트항공권 구매</em>가 가능한 제주항공의 마일리지 프로그램입니다.</p>
	  		<p class="gray">(1천원당 50P 적립, 1P=1원가치)</p>
	  		<c:if test="${sessionScope.memId==null }">
	  			<a id="joinBtn" href="../member/memberWriteForm.do">회원 가입하기</a>
	  		</c:if>
	  	</div>
	  	<div class="pointWay">
	  		<h3>리프레시 포인트 보너스항공권 이용 방법</h3>
	  		<ul class="pointWay1">
	  			<li class="way1"><img alt="way1" src="../img/way1.png"><br>항공권 구매/탑승<br><p class="gray">(홈페이지/모바일)</p></li>
	  			<li class="way2"><img alt="way2" src="../img/way2.png"><br>리프레시 포인트<br> 적립<p class="gray">(1천원당 50P, 1P=1원)</p></li>
				<li class="way3"><img alt="way3" src="../img/way3.png"><br>포인트 조회</li>	
				<li class="way4"><img alt="way4" src="../img/way4.png"><br>부족 포인트 구매<br>or 가족,친구 선물<br>합산</li>
				<li class="way5"><img alt="way5" src="../img/way5.png"><br>포인트 항공권 구매</li>  		
	  		</ul>
	  	</div>
	  	<div class="pointSave">
	  		<h3>리프레시 포인트 적립</h3>
	  		<ul class="point01">
	  			<li class="save1"><img alt="save1" src="../img/save01.png"><br>회원가입 시 1,000P 적립</li>
	  			<li class="save2"><img alt="save2" src="../img/save02.png"><br>순수 항공운임 기준 5% 적립<br><p class="gray">(단,유류세,공항이용세 및 TAX 제외)</p></li>
	  			<li class="save3"><img alt="save3" src="../img/save03.png"><br>3회, 11회 탑승<br>추가 포인트 적립</li>
	  		</ul>
	  		<ul class="point01">	
	  			<li class="save4"><img alt="save4" src="../img/save04.png"><br>포인트 구매</li>
	  			<li class="save5"><img alt="save5" src="../img/save05.png"><br>가족, 친구에게 포인트 선물</li>
	  			<li class="save6"><img alt="save6" src="../img/save06.png"><br>60일 이내 누락포인트 적립	</li>
	  		</ul>
	  	</div>
	  	<div class="pointUse">
	  		<h3>리프레시 포인트 사용</h3>
	  		<ul class="point01">	
	  			<li class="use01"><img alt="use01" src="../img/use01.png"><br>포인트 항공권 구매<br><p class="gray">(노선,좌석,운임에따라 일부 제한)</p></li>
	  			<li class="use01"><img alt="use02" src="../img/use02.png"><br>사전좌석 이용 시 포인트 결제</li>
	  			<li class="use01"><img alt="use01" src="../img/use03.png"><br>가족, 친구 포인트 선물/합산<br><p class="gray">(보너스항공권 구매)</p></li>
	  		</ul>
	  		<ul class="point01">
	  			<li class="use04"><img alt="use04" src="../img/use04.png"><br>사전 수하물 구매</li>
	  			<li class="use05"><img alt="use05" src="../img/use05.png"><br>사전 기내식 주문</li>
	  		</ul>
	  	</div>
	  	<div class="pointCard">
	  		<h3>리프레시 포인트 회원 카드 발급 안내</h3>
	  		<div class="cardimg">
	  			<img alt="pointCard" src="../img/pointcard.png">
	  		</div>
	  		<ul>
		  		<li>제주항공 웹사이트 회원가입 시 자동으로 발급됩니다.</li>
		  		<li>온라인 카드는 제주항공 웹사이트 리프레시 포인트 메뉴 내 회원등급 페이지에서 확인하실 수 있습니다. <br>
						제주항공 멤버십 카드는 실물로 발급되지 않으며, 온라인 카드로만 발급됩니다.</li>
	  		</ul>
	  	</div>
	  	<div class="pointMember">
	  		<h3>회원 가입 및 탈퇴 안내</h3>
	  		<div class="memberImg">
	  			<img alt="memberimg" src="../img/memberimg.png">
	  		</div>
	  		<ul>
	  			<li>만 2세 이상 ~ 14세 미만 - 법정대리인(부모 등)의 동의가 필요합니다.<br> 
						- 어린이 본인 명의의 휴대폰이 없을 시에는 I-PIN을 발급 받으신 후에 제주항공에 가입을 하실 수 있습니다.
	  			</li>
	  			<li>만 14세 이상 - 본인 명의의 휴대폰이 없을 시에는 I-PIN을 발급 받으신 후에 제주항공에 가입을 하실 수 있습니다.</li>
	  			<li>자주항공 웹사이트 회원가입 시, 리프레시 포인트 이용약관에 동의 하시면 자동으로 가입됩니다.</li>
	  			<li>리프레시 포인트 가입시에 기입하시는 영문명은 본인의 여권 영문명과 동일하여야 합니다.<br>
								- 기존에 등록된 영문명이 여권 영문명과 다를 시에는 탈퇴 후 재가입 또는 고객센터(1599-1500)으로 연락주시기 바랍니다.</li>
	  			<li>회원탈퇴는 마이페이지 내 나의 정보수정 페이지에서 이용하실 수 있습니다.</li>
	  			<li>회원탈퇴 시 적립 포인트는 모두 소멸됩니다.</li>
	  		</ul>
	  	</div>
  	</div>
</div>
</body>
</html>