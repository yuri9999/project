<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/seat.css">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/inputChk.js"></script>
<script type="text/javascript" src="../js/selectSeat1.js"></script>
</head>
<body>
<div class="header"><h2>좌석 선택</h2></div>
<div class="choose" id="choose1">
<form action="selectSeat2.do" name="selectSeat" method="post">
	
	<!-- 값을 넘겨주기 위한 Hidden input -->
	<input type="hidden" id="hname1" name="hname1">
	<input type="hidden" id="seatName1" name="seatName1">
	<input type="hidden" id="seatPrice1" name="seatPrice1">
	
	<div class="tagTop"><span id="tagTop1">구간 1</span></div>
	<table class="seatTable1">
		<tr id="timeNflight">
			<td colspan="3"><span id="dep">${dep}&nbsp;</span> 
			<img src="../img/airplane.png" width="50px" height="50px"> 
			<span id="arr">&nbsp;${arr}</span><br><span id="dayGo">${dayGo}-${dayCome}</span></td>
		</tr>
		<tr id="name">
			<td colspan="3"><span id="name1">${memberDTO.englishName}</span></td>
		</tr>
		<tr id="priceInfo">
			<td colspan="3">
				<img src="../img/seat/top_price_01.gif">10,000KRW 
				<img src="../img/seat/top_price_02.gif">5,000KRW 
				<img src="../img/seat/top_price_03.gif">3,000KRW 
				<img src="../img/seat/top_price_04.gif">2,000KRW 
				<img src="../img/seat/top_price_05.gif">선택한좌석 
				<img src="../img/seat/top_price_06.gif">동승객
				<img src="../img/seat/top_price_07.gif">선택불가
			</td>
		</tr>
		<tr id="abcd">
			<td colspan="3">A &nbsp;&nbsp;&nbsp; B &nbsp;&nbsp;&nbsp; C 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			D &nbsp;&nbsp;&nbsp; E &nbsp;&nbsp;&nbsp; F&nbsp;</td>
		</tr>
		<tr id="trMain1">
			<td class="empty" width="30%"></td>
			<td id="selectSeat1" width="354px">
				<table id="seatInfo1">
						<tr class="oneline" align="center">
							<td class="noNum"></td>
							<td class="seatNum0">1A</td><td class="seatNum0">1B</td><td class="seatNum0">1C</td>
							<td class="middle">01</td>
							<td class="seatNum0">1D</td><td class="seatNum0">1E</td><td class="seatNum0">1F</td>
							<td class="noNum"></td>
						</tr>
					<c:forEach var="i" begin="2" end="11">
						<tr class="oneline" align="center">
							<td class="noNum"></td>
							<td class="seatNum1">${i}A</td><td class="seatNum1">${i}B</td><td class="seatNum1">${i}C</td>
							<td class="middle"><c:if test="${i<=9}">0${i}</c:if>
											<c:if test="${i>9}">${i}</c:if></td>
							<td class="seatNum1">${i}D</td><td class="seatNum1">${i}E</td><td class="seatNum1">${i}F</td>
							<td class="noNum"></td>
						</tr>
					</c:forEach>
					<c:forEach var="i" begin="12" end="14">
						<tr class="oneline" align="center">
							<td class="noNum"></td>
							<td class="seatNum2">${i}A</td><td class="seatNum2">${i}B</td><td class="seatNum2">${i}C</td>
							<td class="middle"><c:if test="${i<=9}">0${i}</c:if>
											<c:if test="${i>9}">${i}</c:if></td>
							<td class="seatNum2">${i}D</td><td class="seatNum2">${i}E</td><td class="seatNum2">${i}F</td>
							<td class="noNum"></td>
						</tr>
					</c:forEach>
					<c:forEach var="i" begin="15" end="16">
						<tr class="oneline" align="center">
							<td class="noNum"></td>
							<td class="seatNum0">${i}A</td><td class="seatNum0">${i}B</td><td class="seatNum0">${i}C</td>
							<td class="middle">${i}<br><span class="emer">비상구좌석<span></td>
							<td class="seatNum0">${i}D</td><td class="seatNum0">${i}E</td><td class="seatNum0">${i}F</td>
							<td class="noNum"></td>
						</tr>
					</c:forEach>
					<c:forEach var="i" begin="17" end="22">
						<tr class="oneline" align="center">
							<td class="noNum"></td>
							<td class="seatNum2">${i}A</td><td class="seatNum2">${i}B</td><td class="seatNum2">${i}C</td>
							<td class="middle">${i}</td>
							<td class="seatNum2">${i}D</td><td class="seatNum2">${i}E</td><td class="seatNum2">${i}F</td>
							<td class="noNum"></td>
						</tr>
					</c:forEach>
					<c:forEach var="i" begin="23" end="32">
						<tr class="oneline" align="center">
							<td class="noNum"></td>
							<td class="seatNum3">${i}A</td><td class="seatNum3">${i}B</td><td class="seatNum3">${i}C</td>
							<td class="middle">${i}</td>
							<td class="seatNum3">${i}D</td><td class="seatNum3">${i}E</td><td class="seatNum3">${i}F</td>
							<td class="noNum"></td>
						</tr>
					</c:forEach>
				</table>
			</td>
			<td class="empty" width="30%"></td>
		</tr>
	</table>
	<div class="footer">
		<table id="tableBottom" class="seatTable1">
			<tr id="button1">
				<td width="27%"></td><td><button id="to2" onclick="select2();">구간 2 선택</button></td><td width="27%"></td>
			</tr>
			<tr id="result1">
				<td>총 결제금액</td><td><span id="showSeatPrice1">0</span></td><td align="left">KRW</td>
			</tr>
			<tr id="alert1">
				<td><span class="popUp">
						<li>항공사는 항공기 안전운항의 사유 발생 시 고객이 지정한 좌석을 변경할 수 있습니다.</li>
						<li>항공사는 항공기 안전운항의 사유 발생 시 고객이 지정한 좌석을 변경할 수 있습니다.</li>
						<li>항공기 조건에 따라 일부 창가 좌석(11,12,32열)이 창문이 없을 수 있습니다.</li>
						<li>항공기 조건에 따라 등받이 고정좌석(14,15,16,32열)이 있습니다.</li>
						<li>ABC 또는DEF 좌석당 1명의 유아만 배정가능합니다.<br>예) 10A 유아배정시 10B와 10C 는 유아 배정 불가.<br></li>
					</span><span class="seatAlert">(i) 좌석배정 제한사항 안내</span>
				</td><td></td><td></td>
			</tr>
		</table>
	</div>
</form> 
</div>
</body>
</html>