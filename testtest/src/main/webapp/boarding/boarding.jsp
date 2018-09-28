<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Boarding</title>
<!-- Bootstrap파일 위치 설정 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	$(function(){
		//모든 datepicker에 대한 공통 옵션 설정
		$.datepicker.setDefaults({
		    dateFormat: 'yy-mm-dd' //Input Display Format 변경
		    ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
		    ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
		    ,changeYear: true //콤보박스에서 년 선택 가능
		    ,changeMonth: true //콤보박스에서 월 선택 가능                
		 	//,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
		 	 //,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
		    ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
		    ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
		    ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
		    ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
		    ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
		    ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
		    ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
		    ,minDate: "-50Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
		    ,maxDate: "+5M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
		      
		});

		//input을 datepicker로 선언
		$("#datepicker").datepicker({
		   numberOfMonths: [1,2] //한번에 여러 month를 표현할 때는 다음과 같이 배열 형식으로 표현할 month의 개수를 설정
		});                    
		$("#datepicker2").datepicker({
		   numberOfMonths: [1,2]
		});


		//From의 초기값을 오늘 날짜로 설정
		$('#datepicker').datepicker('setDate', '-1M'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
		//To의 초기값을 내일로 설정
		$('#datepicker2').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
		
		// 조회버튼 클릭 시 날짜값을 보냄
		$(".dateSearch").click(function(){
			var datepicker = $("#datepicker").val();
			var datepicker2 = $("#datepicker2").val();
			location.href = "boarding.do?pg=1&req=m&datepicker=" + datepicker + "&datepicker2=" + datepicker2;
			$("#datepicker").val(datepicker);
		});
		
	});
</script>
</head>
<style type="text/css">
  /* LAYOUT **/
  * {
    margin: 0;
    padding: 0;
  }
  ul {
    list-style-type: none;
  }
  td {
    padding: 0;
  }
  .table {
  	height:24px;
    margin-bottom: 0;
  }
  .container {
    max-width: none !important;
    width: 970px;
    height: 1000px;
  }
  .color_text {
    color: #4B1152;
    font-weight: bold;
  }
  .title1 {
    font-size: 1.5em;
    font-weight: bold;
  }
  .title1 img {
    margin-right: 20px;
    padding-bottom: 5px;
  }
  input[type='button'] {
    background: #4B1152;
    color: white;
    width: auto;
    padding: 5px 10px;
    border-radius: 5px;
    border: none;
  }
  input[type='text'] {
    padding: 5px;
  }
  /** a태그 초기화 **/
  .modibutton, .modibutton:hover, .modibutton:visited, .modibutton:active {
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
  /* search **/
  .search {
    margin-bottom: 10px;
  }
  .search span {
    margin-right: 20px;
  }
  .search span, .search input[type='button'] {
    font-weight: bold;
  }
  #datepicker, #datepicker2 {
    margin: 0 10px;
  }
  .buttons {
    text-align: center;
    margin: 30px 0 20px 0;
  }
  .foot {
    border: 1px solid #a1a0a0;
    background: #f6f6f6;
    margin-bottom: 10px;
  }
  .foot p {
    margin: 20px;
    font-size: 12px;
  }
  /* search **/
</style>
<body>
  <div class="container">
    <p class="text-left">JEJUAIR > 마이페이지 > 나의 탑승내역</p>
    <h2 class="text-left">탑승내역</h2>
    <table class="table">
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
                <a href="#" class="modibutton">MODIFY</a>
              </li>
            </ul>
          </div>
        </td>
      </tr>
    </table>
    <div>
      <p class="title1">
        <img src="../img/title1.jpg">탑승내역
      </p>
      <div class="search">
        <span>> 조회구간</span>
        <!-- req로 몇개월인지를 판별 -->
        <input type="button" value="1개월" onclick="location.href='boarding.do?pg=1&req=1m'">
        <input type="button" value="3개월" onclick="location.href='boarding.do?pg=1&req=3m'">
        <input type="button" value="6개월" onclick="location.href='boarding.do?pg=1&req=6m'">
        <input type="text" id="datepicker"> ~ <input type="text" id="datepicker2">
        <input type="button" value="조회" class="dateSearch">
      </div>
      <!-- req로 전체조회인지 개월조회인지 판별 -->
      <c:if test="${req == null }">
      	<jsp:include page="boardingBasic.jsp"></jsp:include>
      </c:if>
      <c:if test="${req != null }">
      	<jsp:include page="boardingBasic.jsp"></jsp:include>
      </c:if>
      <div class="foot">
        <p>º 항공권 구매 시 회원번호를 입력하지 않은 탑승내역은 조회하실 수 없습니다.</p>
        <p>º 제주항공 홈페이지에서 결제한 탑승내역만 결제정보를 조회하실 수 있습니다.</p>
        <p><span class="color_text">º 리프레시 포인트 회원가입 이후의 탑승내역만 조회하실 수 있습니다.</span></p>
        <p>º 탑승내역은 <span class="color_text">최근 3년 이내 탑승했던 본인 내역만 조회 가능</span>합니다.</p>
        <p>º 적립포인트가 0p 인 항공권에 대해서는 회원승급 대상에서 제외됩니다.</p>
      </div>
    </div>
  </div>
</body>
</html>