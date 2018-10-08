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
  /* 탭, 탭내용 **/
  .container ul.tabs {
  	position: relative; z-index: 100;
  	margin-top: 20px;
  	margin-bottom: 20px;
  	margin-left: 2.5em;
  }
  .container ul.tabs li {
  	width: 150px; height: 60px; float: left;
  	border: 1px solid black;
  	background-color: lightgray;
  	text-align: center;
  	line-height: 60px;
  	cursor: pointer;
  	overflow: hidden;
  }
  .container ul.tabs li.active{
  	border: 3px solid #4B1152;
  	background-color: white;
  	border-bottom: none;
  }
  .container ul.tabs:after {
  	display: block;
  	clear: both;
  	content: '';
  }
  .container ul.tabs li:after {
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
  .save_content1 {
  	float:left;
  	margin-left: 0.5em;
  	width: 250px;
  	text-align : center;
  	padding-left: 25px;
  }
  .save_content1 #btn {
  	margin-left : -7.5px;
  	margin-top: 20px;
  }
  .save_content2 {
  	margin-left: 0.5em;
  }
  .save_content2 th{
  	text-align: left;
  	width: 100px;
  }
  .save_content2 td{
  	text-align: left;
  }
 
  .card1 {
  	margin : 20px 0 20px 0;
  	height: 200px;
  	border-bottom: 1px solid gray;
  }
  .card2 {
  	margin: 20px 0 20px 0;
  	height: 300px;
  	border-bottom: 1px solid gray;
  }
  .card3 {
  	margin: 20px 0 20px 0;
  	height: 300px;
  	border-bottom: 1px solid gray;
  }
  .card4 {
  	margin: 20px 0 20px 0;
  	height: 300px;
  	border-bottom: 1px solid gray;
  }
  .card5 {
  	margin: 20px 0 20px 0;
  	height: 400px;
  }
  
  .jpointinfo {
  	margin-top: 30px;
  }
  .jpointinfo li {
  	list-style: circle;
  	margin-top: 10px;
  	color: gray; 
  	margin-left: 1em;
  }
  .card6 {
 	margin: 20px 0 20px 0;
  	height: 300px;
  }
  .card6 h3 {
	margin: 10px 10px 20px 0;  
	padding-bottom: 20px;
	
  }
  .card7 h3 {
  	float: left;
  	text-align: center;
  	padding-top: 50px;
  }
  .card7 {
  	height: 200px;
  	text-align: center;
  	border-bottom: 1px solid gray;
  }
  #use_img {
  	margin-left: 2em;
  	width: 200px;
  	height: 180px;
  }
  .cardtable {
	margin-left: 20px;
	border-spacing: 3px;
  }
  .cardtable th,.cardtable td{
  	padding: 3px;
  }
  .cardtable th {
    width: 160px;
  }
  /* 탭, 탭내용**/
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
   		<h2> 필요한 곳에서 포인트를 쌓고 쓰세요!</h2>
   	</div>
   	<div class="title">
   		<h2>제휴 포인트 적립 & 사용</h2>
   	</div>
   	<ul class="tabs">
   		<li class="active" rel="saveP">제휴 포인트 적립</li>
   		<li rel="useP">제휴 포인트 사용</li>
   	</ul>
   	<div class="tab_container">
   		<div class="tab_content" id="saveP">
   			<h3><img src="../img/title1.jpg">제휴사별 포인트 적립안내</h3>
   			<div class="card1">
	   			<div class="save_content1">
	   				<img src="../img/kbcard.jpg"><br>
	   				<input type="button" id="btn" value="KB국민카드 새창열기" onclick="" >
	   			</div>
	   			<div class="save_content2">
	   				<table class="cardtable">
	   					<tr>
	   						<th valign="top">KB국민카드</th>
	   						<td valign="top">이용금액 1,200원 당 10P 적립<br>
	   							제주항공 서비스 이용금액 1,200원 당 20P 적립
	   						</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">대상</th>
	   						<td valign="top">제주항공 리프레시 포인트 KB국민카드 가입 고객</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">참고사항</th>
							<td valign="top">김포, 인천공항 라운지 무료 이용 <br>
							자세한 사항은 KB국민카드 사이트 접속 후 확인</td>
	   					</tr>
	   				</table>
	   			</div>
   			</div>
   			<div class="card2">
	   			<div class="save_content1">
	   				<img src="../img/scard.png"><br>
	   				<input type="button" id="btn" value="신한카드 새창열기" onclick="" >
	   			</div>
	   			<div class="save_content2">
	   				<table class="cardtable">
	   					<tr>
	   						<th valign="top">신한카드</th>
	   						<td valign="top">이용금액 1,200원 당 10P 적립<br>
	   							제주항공 서비스 이용금액 1,200원 당 20P 적립
	   						</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">대상</th>
	   						<td valign="top">신한 리프레시 포인트 가입고객</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">참고사항</th>
							<td valign="top" >김포, 인천공항 라운지 각 1개소<br>
							URS(JCB) 플래티넘 서비스<br>
							JDC면세점 할인<br>
							보다 자세한 사항은 신한카드 사이트 접속 후 확인</td>
	   					</tr>
	   				</table>
	   			</div>
   			</div>
   			<div class="card3">
	   			<div class="save_content1">
	   				<img src="../img/kt.jpg"><br>
	   				<input type="button" id="btn" value="Kt M mobile 새창열기" onclick="" >
	   			</div>
	   			<div class="save_content2">
	   				<table class="cardtable">
	   					<tr>
	   						<th valign="top">kt M mobile</th>
	   						<td valign="top">매월 최대 9,000P 적립 (사용요금제에 따라 적립포인트 상이)</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">대상</th>
	   						<td valign="top">M 제주항공 요금제 사용 고객 중, Refresh Point 회원</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">참고사항</th>
							<td valign="top">매월 M 제주항공 요금제 별 포인트 적립<br>
								가입월(M) 기준, M+3개월 후 최초 적립<br>
								<p class="gray">(예. 1월 가입시, 4월부터 적립)</p><br>
								M 제주항공 요금제 상세는 제휴 사 바로가기 접속 후 확인하실 수 있습니다.
							</td>
	   					</tr>
	   				</table>
	   			</div>
   			</div>
   			<div class="card4">
	   			<div class="save_content1">
	   				<img src="../img/akmall.png"><br>
	   				<input type="button" id="btn" value="AK MALL 새창열기" onclick="" >
	   			</div>
	   			<div class="save_content2">
	   				<table class="cardtable">
	   					<tr>
	   						<th valign="top">AK MALL</th>
	   						<td valign="top">구매액의 2% 적립</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">대상</th>
	   						<td valign="top">리프레시 포인트 전체 회원</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">참고사항</th>
							<td valign="top"></td>
	   					</tr>
	   				</table>
	   			</div>
   			</div>
   			<div class="card5">
	   			<div class="save_content1">
	   				<img src="../img/Lpoint.png"><br>
	   			</div>
	   			<div class="save_content2">
	   				<table class="cardtable">
	   					<tr>
	   						<th valign="top">L.POINT</th>
	   						<td valign="top">L.POINT를 리프레시포인트로 전환 적립<br>
	   							100 L.POINT는 100 리프레시포인트 전환<br>
	   							전환 포인트의 2% L.POINT로 재적립
	   						</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">대상</th>
	   						<td valign="top">L.POINT 보유 제주항공 회원 (내국인 인증회원)</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">참고사항</th>
							<td valign="top">최소 전환 요청 단위는 100 L.POINT이며, 100 리프레시 포인트 단위로 전환 적립됩니다.<br>
								연간 전환 한도는 300,000 L.POINT 입니다.<br>
								전환 이후 취소나 현금환급은 불가합니다.<br>
								L.POINT 및 제주항공 리프레시포인트는 현금영수증 발행 대상이 아닙니다.<br>
								전환된 리프레시포인트의 사용기한은 전환일로부터 2년입니다.<br>
								전환된 리프레시포인트는 자주항공 온라인 채널에서 포인트 항공권 및 사전 부가서비스 구매에 이용 가능합니다.
							</td>
	   					</tr>
	   				</table>
	   			</div>
   			</div>
   			<div>
   				<h3>제휴 포인트 적립 안내</h3>
   				<ul class="jpointinfo">
   					<li>포인트 혜택을 제공받기 위해 제휴사를 이용하실 경우 해당 제휴사의 규정을 따라야 합니다.</li>
   					<li>리프레시 포인트 회원과 제휴사간의 개별적인 계약 조건은 제주항공과 무관합니다.</li>
   					<li>제휴사를 통해 적립한 리프레시 포인트는 제주항공이 제시하는 서비스로만 사용될 수 있습니다.</li>
   					<li>리프레시 포인트의 제휴사 프로그램은 제휴사의 사정에 따라 사전 통보 없이 변경되거나 중단 될 수 있습니다.</li>
   				</ul>
   			</div>
   		</div>
   		<div class="tab_content" id="useP">
   			<div class="card7">
   				<h3>제휴 가맹점 이용시 포인트 사용</h3>
   				<img src="../img/use001.png" id="use_img">
   			</div>
   			<div class="card6">
   				<h3> <img src="../img/title1.jpg">제휴사별 포인트 사용 안내</h3>
   				<div class="save_content1">
   					<img src="../img/spc.png">
   				</div>
   				<div class="save_content2">
	   				<table class="cardtable">
	   					<tr>
	   						<th valign="top">해피포인트</th>
	   						<td valign="top">상품구매액의 최대 100% 포인트 차감할인</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">대상</th>
	   						<td valign="top">리프레시 포인트 전체 회원</td>
	   					</tr>
	   					<tr>
	   						<th valign="top">참고사항</th>
	   						<td valign="top">
	   							제주항공 모바일웹&앱 로그인 후 제휴 사 바로가기 접속<br>
								SPC 제품 결제 시 보유하신 리프레시 포인트를 사용하여 차감 할인<br>
								PC 홈페이지에서는 이용이 불가 하니 모바일을 통해 접속해 주시기 바랍니다.
							</td>
	   					</tr>
	   				</table>
   				</div>
   			</div>
   			<div>
   				<h3> <img src="../img/title1.jpg">제휴 포인트 사용 안내</h3>
   				<ul class="jpointinfo">
   					<li>포인트 사용은 본인의 포인트로만 사용하실 수 있습니다.</li>
   					<li>양도 및 이벤트로 적립 하신 포인트는 제휴처를 통한 포인트 사용이 불가능합니다.</li>
   					<li>포인트 혜택을 제공받기 위해 제휴 사를 이용하실 경우 해당 제휴사의 규정을 따라야 합니다.</li>
   					<li>리프레시 포인트 회원과 제휴사간의 개별적인 계약 조건은 자주항공과 무관합니다.</li>
   					<li>리프레시 포인트의 제휴사 프로그램은 제휴사의 사정에 따라 사전 통보 없이 변경되거나 중단 될 수 있습니다.</li>
					<li>양수 포인트는 제휴사 사용이 불가 합니다.</li>   					
   				</ul>
   			</div>
   		</div>
   	</div><!-- content -->
</div><!-- container -->   	
</body>
</html>