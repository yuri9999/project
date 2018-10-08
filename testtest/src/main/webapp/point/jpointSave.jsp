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
  .gray {
  	color: lightgray;
  	font-size: 14px;
  }
  /** 탭,내용*/
  ul.tabs {
  	position: relative; z-index: 100;
  	margin-top: 20px;
  	margin-bottom: 20px;
  	margin-left: 2.5em;
  }
  ul.tabs li {
  	width: 150px; height: 60px; float: left;
  	border: 1px solid black;
  	background-color: lightgray;
  	text-align: center;
  	line-height: 60px;
  	cursor: pointer;
  	overflow: hidden;
  }
  ul.tabs li.active{
  	border: 3px solid #4B1152;
  	background-color: white;
  	border-bottom: none;
  }
  ul.tabs:after {
  	display: block;
  	clear: both;
  	content: '';
  }
  ul.tabs li:after {
  	display: block;
  	clear: both;
  	content: '';
  }
  .tab_container {
  	margin-left: 2.5em;
  	margin-top: 20px;
  }
  .tab_content {
 	padding:20px; 
  }
  
  /** 탭,내용 */
  /* point 적립 **/
  .info {
  	width : 912px;
  	height: 250px;
  	margin-top: 30px;
  	margin-left: 2.5em;
  }
  .info:after{
  	display: block;
  	clear: both;
  	content: '';
  }
  .info ul{
  	width: 912px;
  }
  .info ul:after{
 	display: block;
  	clear: both;
  	content: '';
  }
  
  .info ul li {
  	float: left;
  	width: 297px;
  	height: 150px;
  	padding: 0px 20px 0 20px;
  	border-left: 1px solid gray;
  	text-align: center;
  	font-weight: bold;
  	letter-spacing: -1px;
  	background: 50% 6px no-repeat;
  	font-size: 20px;
  	
  }
  .info li:first-child {
	width: 297px;
	border: none;
  }
  ul.saveimg li img{
  	margin-bottom: 20px;
  }
  .buy {
  	width: 912px;
  	margin-left: 2.5em;
  }
  .buy h3 {
  	margin-top: 30px;
  	margin-bottom: 20px;
  }
  
  .imgbuy img {
	margin-left: 5em;
  	width: 700px;
  	height : 192px;
  	margin-bottom : 30px;
  	
  }
  .missimg img {
  	width: 700px;
  	margin-left: 5em;
  	height: 192px;
  	margin-bottom: 30px;
  }
  .buy ul li{
  	margin-top: 10px;
  	list-style: circle;
  	font-size: 15px;
  	color: lightgray;
  }
  .miss {
  	width: 912px;
  	margin-left: 2.5em;
  }
  .miss h3 {
  	margin-top: 40px;
  	margin-bottom: 40px;
  }
  ul.misscon li {
 	margin-top: 10px;
  	list-style: circle;
  	font-size: 15px;
  	color: gray;
  	margin-left: 1em;
  }
  /* point 적립 **/
  /* gift 적립**/
  .giftSave {
  	margin-left: 1em;
  }
  
  .gift h3 {
  	margin-top : 15px;
  	margin-bottom: 40px;
  }
  .gift ul li {
  	margin-top: 10px;
  	list-style: circle;
  	font-size: 15px;
  	color:gray;
  	margin-left: 1em;
  }
  .giftinfo {
  	margin-bottom: 15px;
  }
  ul.giftimg{
  	width: 900px;
  	height: 250px;
  }
  ul.giftimg li {
  	text-align: center;
  	font-size: 25px;
  }
  ul.giftimg li img {
  	width: 230px;
  	height: 150px;
  	margin-bottom: 20px;
  }
  /* gift 적립**/
  /* 보너스/제휴 적립 **/
  .affiliate,.bonus {
  	margin-top: 20px;
  	margin-bottom: 20px;
  	width : 912px;
  	height: 250px;
  	margin-top: 30px;
  	margin-left: 2.5em;
  }
  .affiliate:after, .bonus:after{
  	display: block;
  	clear: both;
  	content: '';
  }
  .affiliateimg, .bonusinfo {
  	width: 900px;
  	margin: 30px;
  }
  .affiliateimg:after, .bonusinfo:after{
  	display: block;
  	clear: both;
  	content: '';
  }
  .affiliateimg li, .bonusinfo li{
  	float: left;
  	width: 430px;
  	height: 250px;
  	padding: 0px 20px 0 20px;
  	border-left: 1px solid gray;
  	text-align: center;
  	font-weight: bold;
  	letter-spacing: -1px;
  	background: 50% 6px no-repeat;
  	font-size: 20px;
  }
  .affiliateimg li img, .bonusinfo li img{
    margin-bottom: 20px;
    width: 150px;
    height: 120px;
  }
  .affiliateimg li:first-child, .bonusinfo li:first-child {
	width: 430px;
	border: none
  }
  .affiliatelist li, .bonuslist li {
  	margin-top: 10px;
  	list-style: circle;
  	font-size: 15px;
  	margin-top:10px;
  	color: gray;
  	margin-left: 1em;
  }
  .bonuslist h3, .affiliate h3{
  	margin-bottom: 30px;
  	margin-top: 30px;
  }
  .bonusimg img {
  	margin: 20px 0 15px 20px;
  	width: 400px;
  	height: 70px;
  }
  /* 보너스/제휴 적립 **/
  /* 글자색상**/
  em{
  	color: red;
  }
  /* 글자색상**/
  
  #saveP{
  	height: 1600px;
  }
  #giftP{
  	height: 600px;
  }
  #bonusP{
  	height: 1000px;
  }
  #affiliateP{
  height: 600px;
  }
</style>
<script type="text/javascript">
	$(function(){
		$(".tab_content").hide();
		$(".tab_content:first").show();
		
		$("ul.tabs li").click(function(){
			$("ul.tabs li").removeClass("active").css({	"border":"1px solid black",
														"background-color":"lightgray"});
			$(this).addClass("active").css({"border":"3px solid #4B1152",
											  "background-color":"white",
											  "border-bottom": "none"});
			$(".tab_content").hide();
			var activeTab = $(this).attr("rel");
			$("#"+activeTab).fadeIn();
		});
	});
</script>
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
   		<h2>항공마일리지의 새로운 기준! <br> 항공운임 기준 5% 적립</h2>
   	</div>
  
   	<h3><img src="../img/title1.jpg">포인트 적립 안내</h3>
   	<ul class="tabs">
   		<li class="active" rel="saveP">항공권구매 적립</li>
   		<li rel="giftP">포인트 선물 적립</li>
   		<li rel="bonusP">보너스포인트 적립</li>
   		<li rel="affiliateP">제휴포인트 적립</li>
   	</ul><!-- tabs -->
	<div class="tabs_container">
		<div class="tab_content" id="saveP">
		<div class="pointsave">
			<div class="info">
	   			<ul class="saveimg">
	   				<li><img src="../img/save_1.png"><br>모든 항공권 적립<br><p class="gray">항공권의 제한 없이<br>자주항공에서 구매하신<br>항공권은 모두 적립</p> </li>
	   				<li><img src="../img/save_2.png"><br>누락 포인트 적립<br><p class="gray">이미 탑승한 항공권도<br> 한 비회원도 적립</p><br></li>
	   				<li><img src="../img/save_3.png"><br>회원가입 시 적립<br><p class="gray">탑승 후 회원가입을<br> 한 비회원도 적립</p></li>
	   			</ul>
	   		</div><!-- 이미지안내 -->
	   		<div class="buy">
		   		<h3><img src="../img/title1.jpg">항공권 구매시 포인트 적립안내</h3>
		   		<div class="imgbuy">
		   			<img src="../img/saveinfo.png">
		   		</div>
		   		<ul>
		   			<li>적립은 항공권 구매 금액 1,000원당 50 P가 적립됩니다. 해외에서 구매하신 경우 해당 국가의 정해진 환율로 적용되어 처리됩니다.</li>
		   			<li>적립노선은 국내, 국제 전 노선으로 모든 항공권을 포함합니다.</li>
		   			<li>적립은 항공권 운임에 한하며, 금액에 비례한 포인트를 적립해 드립니다.(유류세, 공항이용료, 기타 TAX는 세금으로 제외됩니다)</li>
		   			<li>자주항공 온라인 공식 웹사이트 및 모바일웹&앱에서 구매한 항공권의 경우 탑승 완료일 기준 2일 부터 적립.</li>
					<li>자주항공 온라인 공식웹사이트 및 모바일웹&앱에서 구매하지 않은 항공권(여행사, 예약센터, 카운터 등)에 대해서는 탑승 완료일 기준 40일이 소요 됩니다.</li>
	   			</ul>
	   	   	</div> <!-- 구매적립 -->
	   	   	<div class="miss">
				<h3><img src="../img/title1.jpg">누락포인트 적립 안내</h3>
			   	<div class="missimg">
			   		<img src="../img/miss.png">
			   	</div>
			   	<ul class="misscon">
			   		<li>예약발권 시 회원번호 입력을 누락한 경우 탑승 완료일로부터 60일 이내에 적립하실 수 있습니다.</li>
			   		<li>비회원의 경우 탑승 후 회원가입을 하시면 탑승 완료일로부터 60일 이내에 적립받으실 수 있습니다.</li>
			  		<li>제주항공 웹사이트 <em>리프레시 포인트 > 포인트 적립</em> 에서 누락포인트 적립하기를 이용하시기 바랍니다.</li>
			  		<li>(누락포인트 적립을 위해 탑승일, 편명, 항공권 번호를 입력하셔야 합니다.) <em>* 로그인 필수</em></li>
			  		<li>탑승 항공권의 이름과 회원정보의 이름이 동일해야 누락포인트를 적립 받으실 수 있습니다.</li>
		   			<li>누락포인트 적립은 본인만 가능합니다.</li>
		  			<li>항공권번호는 홈페이지에서 본인이 예약했을 경우 나의 탑승 내역에서 확인 가능하며, 보관하고 계신 예약발권확인서에서도 확인하실 수 있습니다.</li>		  			<li>탑승 내역이 확인되지 않는 경우, 제주항공에서 해당 회원에게 포인트를 누적하고자 하는 탑승 항공권 사본 또는 원본 제시를 요청할 수 있습니다.</li>
			   		<li>자주항공 온라인 공식 웹사이트 및 모바일웹&앱에서 구매한 항공권의 경우 탑승 완료일 기준 최소 2일 이후부터 적립 가능합니다.</li>
			   		<li>자주항공 온라인 공식웹사이트 및 모바일웹&앱에서 구매하지 않은 항공권(여행사, 예약센터,카운터 등)에 대해서는 탑승 완료일 기준 최대 40일 이후 적립 가능합니다.</li>
			   	</ul>
			   	<c:if test="${sessionScope.memId == null }">
					<input type="button" id="btn" value="회원가입" onclick="location.href='#'">
			   	</c:if>
	   		</div><!-- 누락 miss -->
		</div><!-- 포인트적립 -->
		</div><!-- 포인트탭 -->
		<div class="tab_content" id="giftP">
		<div class="giftSave" >
	   		<div>
	   			<ul class="giftimg">
	   				<li><img src="../img/gift1.png"><br>포인트 선물 적립 <br><p class="gray">대상 제한없이 	누구에게나 <br>선물 받은 포인트 적립</p></li>
	   			</ul>
	   		</div>
	   		<div class="gift">
	   			<h3><img src="../img/title1.jpg">포인트 선물을 통한 적립 안내</h3>
	   			<ul class="giftinfo">
	   				<li>포인트 선물하기, 선물받기는 최대 300,000 P 까지 양도 가능합니다.</li>
	   				<li>선물 받은 포인트는 다시 선물 하실 수 없습니다.</li>
	   				<li>선물 받은 포인트는 제휴사 사용이 불가합니다.</li>
	   				<li>자세한 양도 포인트 유의사항은 양도 페이지 내용을 확인 바랍니다.</li>
	   			</ul>
	   			<input type="button" onclick="location.href='#'" value="포인트 선물하기" id="btn">
	   		</div>
	   	</div><!-- gift content -->
	   	</div><!-- 선물 탭 -->
	   	<div class="tab_content" id="bonusP">
		<div class="bonus">
	   		<ul class="bonusinfo">
	   			<li><img src="../img/save_1.png"><br>재탑승시 보너스 적립<p class="gray">3회,11회 탑승시마다 <br>추가 보너스 포인트 적립</p></li>
	   			<li><img src="../img/save_3.png"><br>회원가입 시 보너스 적립 <p class="gray">회원 가입 시 가입 축하<br>보너스 포인트 적립</p></li>
	   		</ul>
	   		<h3><img src="../img/title1.jpg">재탑승 추가 포인트 적립 안내</h3>
	   		<div class="bonusimg">
	   			<img src="../img/bonus03.png">
	   		</div>
		   	<ul class="bonuslist">
		   		<li>연평균 편도 3회 탑승 완료시 1,500 P, 편도 11회 탑승 완료시 5,500 P 포인트를 보너스로 드립니다.</li>
		   		<li>재탑승 보너스 포인트는 1년 단위로 재산정 됩니다. (예: 2018년 01월 01일 ~ 2018년 12월 31일)</li>
		   		<li>적립포인트가 0p 인 항공권에 대해서는 회원승급 대상에서 제외됩니다.</li>
		   	</ul>
	   		<div class="bonuslist">
		   		<h3><img src="../img/title1.jpg">회원가입 보너스 포인트 적립 안내</h3>
		   		<ul>
		   			<li>제주항공 웹사이트, 모바일웹, 앱에서 회원가입 시 1,000 P 를 보너스로 드립니다.</li>
		   		</ul>
		   		<input type="button" value="회원가입" onclick="location.href='../member/memberWriteForm.do'">
	   		</div>
	   		<div class="bonuslist">
		   		<h3><img src="../img/title1.jpg">기타 이벤트 보너스 적립 안내</h3>
		   		<ul>
		   			<li>리프레시 포인트는 다양한 이벤트와 방법을 통해 상시적으로 포인트를 적립해 드리고 있습니다.<br>
						365일 진행되는 포인트 적립 이벤트 놓치지 마시기 바랍니다.</li>
		   		</ul>
		   		<input type="button" id="btn" value="이벤트 바로가기" onclick="location.href='../event/eventListC.do?pg=1'">
	   		</div>
	   	</div><!-- bonus -->
	   	</div><!-- 보너스탭 -->
	   	<div class="tab_content" id="affiliateP">
		<div class="affiliate" >
	   		<ul class="affiliateimg">
	   			<li><img src="../img/affiliate01.png"><br>제휴 신용카드 이용 시<br>포인트 적립</li>
	   			<li><img src="../img/affiliate02.png"><br>제휴 인터넷 쇼핑몰 이용 시<br>포인트 적립</li>
	   		</ul>
	   		<div>
	   		<h3><img src="../img/title1.jpg">제휴 포인트 적립 안내</h3>
		   		<ul class="affiliatelist">
		   			<li>제휴 신용카드 사용 실적에 따라 포인트가 적립됩니다.</li>
		   			<li>AK Mall에서 이용한 금액의 일정 부분을 제주항공 포인트로 추가 적립합니다.</li>
		   		</ul>
		   		<input type="button" id="btn" value="제휴 포인트 안내" onclick="location.href='#'">
	   		</div> <!-- affiliate h3/ul 태그  -->
	   	</div><!-- affiliate content-->
	   	</div><!-- 제휴탭 -->
	</div><!-- content -->   	
</div><!--  -->
</body>
</html>