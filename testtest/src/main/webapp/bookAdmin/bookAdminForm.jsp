<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#formwidth{
width: 700px !important;
  text-align: center;
}
.inputWidth {
	width:150px;
}

</style>
</head>
<body>
	<form action="bookAdmin.do" method="post">
		<h3>왕복편</h3>
				<label>구간1</label>
		<table border="1" id="formwidth">
			<tr>
				<td>출발공항: </td>
				<td><input type="text" name="depAirport1" class="inputWidth"></td>
			</tr>
			<tr>
				<td>출발공항코드: </td>
				<td><input type="text" name="depAirCode1" class="inputWidth"></td>
			</tr>
			<tr>	
				<td>도착공항: </td>
				<td><input type="text" name="arrAirport1" class="inputWidth"></td>
			
			</tr>
			<tr>	
				<td>도착공항코드: </td>
				<td><input type="text" name="arrAirCode1" class="inputWidth"></td>
			</tr>
			<tr>	
				<td>출발날짜: </td>
				<td><input type="text" name="depDate1" class="inputWidth"></td>
			</tr>
			<tr>	
				<td>도착날짜: </td>
				<td><input type="text" name="arrDate1" class="inputWidth"></td>
			</tr>
			<tr>	
				<td>편명: </td>
				<td><input type="text" name="flightName1" class="inputWidth"></td>
			</tr>
			<tr>	
				<td>가는시간: </td>
				<td><input type="text" name="depTime1" class="inputWidth"></td>
			</tr>
			<tr>	
				<td>도착시간: </td>
				<td><input type="text" name="arrTime1" class="inputWidth"></td>
			</tr>
			<tr>	
				<td>정규운임요금:</td>
				<td> <input type="text" name="depPrice1" class="inputWidth"></td>
			</tr>
			<tr>	
				<td>유류할증료:</td>
				<td> <input type="text" name="depFuelPrice1" class="inputWidth"></td>
			</tr>
			<tr>	
				<td>공항시설사용료:</td>
				<td> <input type="text" name="depAirportPrice1" class="inputWidth"></td>
			
			</tr>
			
				
			
			
			<!-- <tr>
				<td><lable>구간2</lable></td>
				<td>출발공항: <input type="text" name="depAirport2"></td>
				<td>도착공항: <input type="text" name="arrAirport2"></td>
				<td>출발날짜: <input type="text" name="depDate2"></td>
				<td>편명: <input type="text" name="flightName2"></td>
				<td>가는시간: <input type="text" name="depTime2"></td>
				<td>도착시간: <input type="text" name="arrTime2"></td>
				<td>정규운임요금: <input type="text" name="depPrice2"></td>
				<td>유류할증료: <input type="text" name="depFuelPrice2"></td>
				<td>공항시설사용료: <input type="text" name="depAirportPrice2"></td>
			</tr> -->
			<tr><td colspan="2"><input type="submit" value="왕복편  저장하기"><td></tr>
			
		</table>
			
		
	</form>
</body>
</html>