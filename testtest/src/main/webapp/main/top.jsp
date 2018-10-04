<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
nav{
	margin:0;
	margin-bottom: 0;
	padding:0;
	width: 1900px;
	height: 100px;
	background: #4B1152;
	text-align: center;
	vertical-align: middle;
}
.logo{
	float: left;
	width: 300px;
	height: 300px;
	color: white;
	text-align:center;
	font-size: 50px;
	font-weight: bold;
}
.logo img{
	margin-right: -10px;
	margin-left:30px;
	margin-top: 10px;
	width: 60px;
	height: 60px;
	float: left;
}
.logo a{
	text-decoration: none;
	color: white;
	vertical-align: middle;
}
#etc{
	position: absolute;
	top: 3px;
	right: 0;
	text-align: right;
}
.etcMenu{
	color: white;
	display: inline;
	text-align: right;
	font-size: 10px;
}
.etcMenu a{
	color: white;	
	border-left: 1px solid #ccc;
	padding-right: 3px;
	text-decoration: none;
}
.etcMenu a:hover{
	color: white;	
	border-left: 1px solid #ccc;
	padding-right: 3px;
	text-decoration: underline;
}
#menu{
	position: absolute;
	top: 80px;
	right: 0;
}
.mainMenu{
	margin-right: 30px;	
	display: inline;
}
.mainMenu a{
	color: white;
	height: 30px;
	text-align: center;
	padding: 12px 0px;
	text-decoration: none;
}
.mainMenu a:hover{
	color: #4B1152;
	background-color: white;
	text-decoration: none;
}
#slide div{
	position: absolute;
	top: 100px;
	right:0;
	list-style: none;
	background-color: white;
	margin: 0 0 20px 20px;
	display: none;
	width: 1200px;
	height: 160px;
	border: 1px solid #ccc;
}

#slide div .details1{
	width: 90px;
}
#slide div .details1 a{
	color: #8C8C8C;
	font-size: 15px;
	text-decoration: none;
}
#slide div .details1 a:active{
	color: #8C8C8C;
	font-size: 15px;
	text-decoration: none;
}
#slide div .details2 a{
	text-decoration: none;
	color: #8C8C8C;
	font-size: 10px;
}
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).on('mouseover', '.mainMenu:eq(0)', function () {
    $('.detailMenu1').slideDown(200);
});
$(document).on('mouseleave', 'div', function () {
    if (!$(this).hasClass('.mainMenu:eq(0)')) {
        $('.detailMenu1').slideUp(1);
    }
});

$(document).on('mouseover', '.mainMenu:eq(1)', function () {
    $('.detailMenu2').slideDown(200);
});
$(document).on('mouseleave', 'div', function () {
    if (!$(this).hasClass('.mainMenu:eq(1)')) {
        $('.detailMenu2').slideUp(1);
    }
});

$(document).on('mouseover', '.mainMenu:eq(2)', function () {
    $('.detailMenu3').slideDown(200);
});
$(document).on('mouseleave', 'div', function () {
    if (!$(this).hasClass('.mainMenu:eq(2)')) {
        $('.detailMenu3').slideUp(1);
    }
});

$(document).on('mouseover', '.mainMenu:eq(3)', function () {
    $('.detailMenu4').slideDown(200);
});
$(document).on('mouseleave', 'div', function () {
    if (!$(this).hasClass('.mainMenu:eq(3)')) {
        $('.detailMenu4').slideUp(1);
    }
});

$(document).on('mouseover', '.mainMenu:eq(4)', function () {
    $('.detailMenu5').slideDown(200);
});
$(document).on('mouseleave', 'div', function () {
    if (!$(this).hasClass('.mainMenu:eq(4)')) {
        $('.detailMenu5').slideUp(1);
    }
});

$(document).on('mouseover', '.mainMenu:eq(5)', function () {
    $('.detailMenu6').slideDown(200);
});
$(document).on('mouseleave', 'div', function () {
    if (!$(this).hasClass('.mainMenu:eq(5)')) {
        $('.detailMenu6').slideUp(1);
    }
});

$(document).on('mouseover', '.mainMenu:eq(6)', function () {
    $('.detailMenu7').slideDown(200);
});
$(document).on('mouseleave', 'div', function () {
    if (!$(this).hasClass('.mainMenu:eq(6)')) {
        $('.detailMenu7').slideUp(1);
    }
});
</script>
</head>
<body>
<nav>
	<h2 class="logo"><a href="../main/main.jsp"><img src="../img/toplogo.png"><i>JAJUAIR</i></a></h2>
	<div id="etc">
		<ul>
		<c:if test="${sessionScope.memId==null }">
			<li class="etcMenu"><a href="../member/loginForm.do">로그인</a></li>
			<li class="etcMenu"><a href="../member/memberWriteForm.do">회원가입</a></li>
		</c:if>
		<c:if test="${sessionScope.memId!=null }">
			<li class="etcMenu"><a href="../member/logout.do">로그아웃</a></li>
		</c:if>
			<li class="etcMenu"><a href="../qna/qnaMain.do?pg=1">고객센터</a></li>
		</ul>
	</div>
	<br><br>
	<div>
		<ul id="menu">
			<li class="mainMenu"><a href="../book/goAvail.do">항공권 예매</a></li>
			<li class="mainMenu"><a href="#">마이페이지</a></li>
			<li class="mainMenu"><a href="#">서비스 안내</a></li>
			<li class="mainMenu"><a href="../event/eventListC.do?pg=1">이벤트/새소식</a></li>
			<li class="mainMenu"><a href="#">여행상품</a></li>
			<li class="mainMenu"><a href="#">포인트/마일리지</a></li>
			<li class="mainMenu"><a href="#">회사소개</a></li>
		</ul>
		<div id="slide">
			<div class="detailMenu1">
				<table>
					<tr>
						<td class="details1"><a href="../book/goAvail.do">항공권예매</a></td>
						<td class="details1"><a href="#">운항일정</a></td>
						<td class="details1"><a href="#">운임안내</a></td>
						<td class="details1"><a href="#">단체예약신청</a></td>
						<td class="details1"><a href="#">온라인 탑승권</a></td>
					</tr>
					<tr>
						<td></td>
						<td class="details2"><a href="#">운항스케줄</a></td>
						<td class="details2"><a href="#">국제선운임</a></td>
						<td class="details2"></td>
						<td class="details2"><a href="#">국제선</a></td>
					</tr>
					<tr>
						<td class="details2"></td>
						<td class="details2"><a href="#">출발/도착조회</a></td>
						<td class="details2"><a href="#">국내선운임</a></td>
						<td class="details2"></td>
						<td class="details2"><a href="#">국내선</a></td>
					</tr>
				</table>
			</div>
			<div class="detailMenu2">
				<table>
					<tr>
						<td class="details1"><a href="#">나의 예약</a></td>
						<td class="details1"><a href="#">나의 포인트</a></td>
						<td class="details1"><a href="#">나의 쿠폰</a></td>
						<td class="details1"><a href="../boarding/boarding.do?pg=1">나의 탑승내역</a></td>
						<td class="details1"><a href="#">나의 문의 내역</a></td>
						<td class="details1"><a href="../member/memberModifyForm.do?id=${sessionScope.memId }">나의 정보수정</a></td>
					</tr>
					<tr>
						<td class="details2"><a href="#">나의 예약 조회</a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"></td>
						<td class="details2"><a></a></td>
						<td class="details2"></td>
					</tr>
					<tr>
						<td class="details2"><a href="#">나의 예약 변경</a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"></td>
						<td class="details2"><a></a></td>
						<td class="details2"></td>
					</tr>
					<tr>
						<td class="details2"><a href="#">나의 예약 취소</a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"></td>
						<td class="details2"><a></a></td>
						<td class="details2"></td>
					</tr>
				</table>
			</div>
			<div class="detailMenu3">
				<table>
					<tr>
						<td class="details1"><a href="#">예약안내</a></td>
						<td class="details1"><a href="#">기내서비스</a></td>
						<td class="details1"><a href="#">부가서비스</a></td>
						<td class="details1"><a href="#">공항서비스</a></td>
						<td class="details1"><a href="#">제휴할인</a></td>
					</tr>
					<tr>
						<td class="details2"><a href="../guide/airReservation.do">항공권예매</a></td>
						<td class="details2"><a href="../guide/innerService.do">기내서비스</a></td>
						<td class="details2"><a href="../guide/item.do">유료아이템</a></td>
						<td class="details2"><a href="../guide/boardingRule.do">탑승수속절차</a></td>
						<td class="details2"><a></a></td>

					</tr>
					<tr>
						<td class="details2"><a href="../guide/airRefund.do">항공권 환불</a></td>
						<td class="details2"><a href="../guide/airCafe.do">air cafe</a></td>
						<td class="details2"><a href="../guide/lounge.do">자주항공 라운지</a></td>
						<td class="details2"><a href="../guide/onlineTicket.do">온라인 탑승권</a></td>
						<td class="details2"><a></a></td>
					</tr>
					<tr>
						<td class="details2"><a></a></td>
						<td class="details2"><a href="../guide/dutyFree.do">기내면세품판매</a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a href="../guide/cityAirport.do">도심공항이용안내</a></td>
						<td class="details2"><a></a></td>
					</tr>
					<tr>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a href="../guide/luggage.do">수하물</a></td>
						<td class="details2"><a></a></td>
					</tr>
					<tr>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a href="#">자주항공 카운터</a></td>
						<td class="details2"><a></a></td>
					</tr>
					<tr>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a href="../guide/help.do">도움이필요한 고객</a></td>
						<td class="details2"><a></a></td>
					</tr>
				</table>
			</div>
			<div class="detailMenu4">
				<table>
					<tr>
						<td class="details1"></td>
						<td class="details1"><a href="../event/eventListC.do?pg=1">이벤트</a></td>
						<td class="details1"></td>
						<td class="details1"><a href="../notice/noticeList.do?pg=1">새소식</a></td>
						<td class="details1"></td>
					</tr>
					<tr>
						<td class="details2"><a></a></td>
						<td class="details2"><a href="../event/eventListC.do?pg=1">진행중인 이벤트</a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
					</tr>
					<tr>
						<td class="details2"><a></a></td>
						<td class="details2"><a href="../event/eventListE.do?pg=1">종료된 이벤트</a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
						<td class="details2"><a></a></td>
					</tr>
				</table>
			</div>
			<div class="detailMenu5">
				<table>
					<tr>
						<td class="details1"></td>
						<td class="details1"><a href="#">숙소</a></td>
						<td class="details1"></td>
						<td class="details1"><a href="#">렌터카</a></td>
						<td class="details1"></td>
						<td class="details1"><a href="#">제휴상품</a></td>
						<td class="details1"></td>
					</tr>
					<tr>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
					</tr>
					<tr>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
					</tr>
					<tr>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
					</tr>
				</table>
			</div>
			<div class="detailMenu6">
				<table>
					<tr>
						<td class="details1"><a href="../point/jpointInfo.do">자주포인트</a></td>
						<td class="details1"><a href="#">포인트 내역 조회</a></td>
						<td class="details1"><a href="#">포인트 선물</a></td>
						<td class="details1"><a href="#">포인트 양도</a></td>
						<td class="details1"><a href="#">제휴포인트</a></td>
					</tr>
					<tr>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
					</tr>
					<tr>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
					</tr>
					<tr>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
					</tr>
					<tr>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
					</tr>
				</table>
			</div>
			<div class="detailMenu7">
				<table>
					<tr>
						<td class="details1"></td>
						<td class="details1"><a href="#">자주항공 소개</a></td>
						<td class="details1"></td>
						<td class="details1"><a href="#">취항노선</a></td>
						<td class="details1"></td>
						<td class="details1"><a href="#">항공기 소개</a></td>
					</tr>
					<tr>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
					</tr>
					<tr>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
					</tr>
					<tr>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
						<td class="details1"><a href="#"></a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</nav>


</body>
</html>



