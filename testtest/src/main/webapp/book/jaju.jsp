<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/airport.css">
<link rel="stylesheet" type="text/css" href="../css/flightBooking.css">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript">
	function inputChk(){
		if(document.round.dep.value=="출발지"){
			alert("출발지를 선택해주세요");
			document.round.dep.focus();
			return false;
		} else if(document.round.arr.value=="도착지"){
			alert("도착지를 선택해주세요");
			document.round.arr.focus();
			return false;
		} else if(document.round.dayGo.value=="가는 날"){
			alert("가는 일정을 선택해주세요");
			document.round.dayGo.focus();
			return false;
		} else if(document.round.dayCome.value=="오는 날"){
			alert("오는 일정을 선택해주세요");
			document.round.dayCome.focus();
			return false;
		}
		
		var dayGo = $("#datepicker").attr("value");
		var dayCome = $("#datepicker2").attr("value");
		var adult = $("#adult").attr("value");
		var kid = $("#kid").attr("value");
		var baby = $("#baby").attr("value");
		
		$("#hdayGo").val(dayGo);
		$("#hdayCome").val(dayCome);
		$("#hadult").val(adult);
		$("#hkid").val(kid);
		$("#hbaby").val(baby);
		document.round.submit();
	}
	// datepicker
	$(function() {
	    //모든 datepicker에 대한 공통 옵션 설정
	    $.datepicker.setDefaults({
	        dateFormat: 'yy-mm-dd' //Input Display Format 변경
	        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
	        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
	        ,changeYear: true //콤보박스에서 년 선택 가능
	        ,changeMonth: true //콤보박스에서 월 선택 가능                
	        ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
	        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
	        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
	        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
	        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
	        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
	        ,minDate: "-1D" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
	        ,maxDate: "+5M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
	    });
	
	    //input을 datepicker로 선언
	    $("#datepicker").datepicker({
	    	numberOfMonths: [1,2] //한번에 여러 month를 표현할 때는 다음과 같이 배열 형식으로 표현할 month의 개수를 설정
	    });                    
	    $("#datepicker2").datepicker({
	    	numberOfMonths: [1,2]
	    });
	    
	});
	
	// 출발지 도착지 탭.
	$(function(){
		$(".container").hide();
		$("#selectArr").hide();
		$("#seelectDep").hide();
	});
	
	$(function(){
		// 출발지
		$("#dep").click(function(){
			$("#selectArr").hide();
			$(".container").show(200);
			$("#selectDep").show();
		});
		$("#close1").click(function(){
			$(".container").hide();
			$("#selectDep").hide();
		});
		// 도착지
		$("#arr").click(function(){
			$("#selectDep").hide();
			$(".container").show(200);
			$("#selectArr").show();	
		});
		$("#close2").click(function(){
			$(".container").hide();
			$("#selectArr").hide();
		});
	});
	
	// 출발지 도착지 입력
	$(function(){
		$("#selectDep .navAirports .column li").click(function(){
			var depName = $(this).attr("value");
			$("input[name='dep']").val(depName);
			$("#hdep").val(depName);
			$(".container").hide();
			$("#arr").click();
		});
		
		$("#selectArr .navAirports .column li").click(function(){
			var arrName = $(this).attr("value");
			$("input[name='arr']").val(arrName);
			$("#harr").val(arrName);
			$("#close2").click();
			document.round.dayGo.focus();
		});
	});
</script>

</head>
<body>
<div class="container">
	<div id="selectDep" class="airTab">
		<div id="headerDep">
			<h2>출발지 선택</h2>
			<a id="close1" href="#"><img alt="x" src="../img/close.png" width="20px" height="20px"></a>
		</div>
		<hr id="headerEnd">
		<ul class="nav">
			<div class="navAirports">
				<div id="navKor" class="column">
					<h3>한국</h3>
					<ul>
						<li value="인천(ICN)"><a href="#">인천(ICN)</a></li>
						<li value="김포(GMP)"><a href="#">김포(GMP)</a></li>
						<li value="대구(TAE)"><a href="#">대구(TAE)</a></li>
						<li value="제주(CJU)"><a href="#">제주(CJU)</a></li>
					</ul>
				</div>
				
				<div id="navNea" class="column">
					<h3>동북아</h3>
					<ul>
						<li value="나고야(NGO)"><a href="#">나고야(NGO)</a></li>
						<li value="도쿄-나리타(NRT)"><a href="#">도쿄-나리타(NRT)</a></li>
						<li value="도쿄-하네다(HND)"><a href="#">도쿄-하네다(HND)</a></li>
						<li value="삿포로(CTS)"><a href="#">삿포로(CTS)</a></li>
						<li value="오사카(KIX)"><a href="#">오사카(KIX)</a></li>
						<li value="후쿠오카(FUK)"><a href="#">후쿠오카(FUK)</a></li>
						<li value="오키나와(OKA)"><a href="#">오키나와(OKA)</a></li>
						<li value="마카오(MFM)"><a href="#">마카오(MFM)</a></li>
						<li value="베이징(PEK)"><a href="#">베이징(PEK)</a></li>
						<li value="홍콩(HKG)"><a href="#">홍콩(HKG)</a></li>
						<li value="타이페이(TPE)"><a href="#">타이페이(TPE)</a></li>
					</ul>
				</div>
				
				<div id="navSea" class="column">
					<h3>동남아</h3>
					<ul>
						<li value="다낭(DAD)"><a href="#">다낭(DAD)</a></li>
						<li value="마닐라(MNL)"><a href="#">마닐라(MNL)</a></li>
						<li value="방콕(BKK)"><a href="#">방콕(BKK)</a></li>
						<li value="세부(CEB)"><a href="#">세부(CEB)</a></li>
						<li value="하노이(HAN)"><a href="#">하노이(HAN)</a></li>
						<li value="호치민(SGN)"><a href="#">호치민(SGN)</a></li>
					</ul>
				</div>
			</div>
		</ul>
	</div>
	
	<div id="selectArr" class="airTab">
		<div id="headerDep">
			<h2>도착지 선택</h2>
			<a id="close2" href="#"><img alt="x" src="../img/close.png" width="20px" height="20px"></a>
		</div>
		<hr id="headerEnd">
		<ul class="nav">
			<div class="navAirports">
				<div id="navKor" class="column">
					<h3>한국</h3>
					<ul>
						<li value="인천(ICN)"><a href="#">인천(ICN)</a></li>
						<li value="김포(GMP)"><a href="#">김포(GMP)</a></li>
						<li value="대구(TAE)"><a href="#">대구(TAE)</a></li>
						<li value="제주(CJU)"><a href="#">제주(CJU)</a></li>
					</ul>
				</div>
				
				<div id="navNea" class="column">
					<h3>동북아</h3>
					<ul>
						<li value="나고야(NGO)"><a href="#">나고야(NGO)</a></li>
						<li value="도쿄-나리타(NRT)"><a href="#">도쿄-나리타(NRT)</a></li>
						<li value="도쿄-하네다(HND)"><a href="#">도쿄-하네다(HND)</a></li>
						<li value="삿포로(CTS)"><a href="#">삿포로(CTS)</a></li>
						<li value="오사카(KIX)"><a href="#">오사카(KIX)</a></li>
						<li value="후쿠오카(FUK)"><a href="#">후쿠오카(FUK)</a></li>
						<li value="오키나와(OKA)"><a href="#">오키나와(OKA)</a></li>
						<li value="마카오(MFM)"><a href="#">마카오(MFM)</a></li>
						<li value="베이징(PEK)"><a href="#">베이징(PEK)</a></li>
						<li value="홍콩(HKG)"><a href="#">홍콩(HKG)</a></li>
						<li value="타이페이(TPE)"><a href="#">타이페이(TPE)</a></li>
					</ul>
				</div>
				
				<div id="navSea" class="column">
					<h3>동남아</h3>
					<ul>
						<li value="다낭(DAD)"><a href="#">다낭(DAD)</a></li>
						<li value="마닐라(MNL)"><a href="#">마닐라(MNL)</a></li>
						<li value="방콕(BKK)"><a href="#">방콕(BKK)</a></li>
						<li value="세부(CEB)"><a href="#">세부(CEB)</a></li>
						<li value="하노이(HAN)"><a href="#">하노이(HAN)</a></li>
						<li value="호치민(SGN)"><a href="#">호치민(SGN)</a></li>
					</ul>
				</div>
			</div>
		</ul>
	</div>
</div>
<div class="console">
	<div id="selectWay">
		<ul class="tabWay">
			<li><a href="#">왕복</a></li>
			<li><a href="#">편도</a></li>
			<li><a href="#">다구간</a></li>
			<li><a href="#">단체구매</a></li>
		</ul>
		<div class="payWay">
			<input type="radio" name="payment" value="normal" checked="checked">
			<label for="payment">일반결제</label>
			<input type="radio" name="payment" value="point">
			<label for="payment">포인트결제</label>
			<a href="#"><img alt="!" src="../img/chat.png" width="15px" height="15px"></a>
		</div>
	</div>
	<hr id="selectWayEnd">
	<div class="roundtrip">
		<form action="../book/goAvail.do" name="round" method="post">
			<table id="flightInput">
				<tr id="mybutton">
					<td>
						<div class="btn"><input type="button" class="location" name="dep" id="dep" value="출발지"></div>
						<a class="inputImg" href="#"><img alt="dep1" src="../img/dep.jpg" height="30px" width="30px"></a>
					</td>
					<td>
						<div class="btn"><input type="button" class="location" name="arr" id="arr" value="도착지"></div>
						<a class="inputImg" href="#"><img alt="arr1" src="../img/arr.jpg" height="30px" width="30px"></a>
					</td>
					<td id="dayGo">
						<div class="btn"><input type="button" class="calendar" id="datepicker" name="dayGo" value="가는 날"></div>
						<a class="inputImg"><img alt="dep2" src="../img/cal.jpg" height="30px" width="30px"></a>
					</td>
					<td id="dayCome">
						<div class="btn"><input type="button" class="calendar" id="datepicker2" name="dayCome" value="오는 날"></div>
						<a class="inputImg"><img alt="arr2" src="../img/cal.jpg" height="30px" width="30px"></a>
					</td>
					<td>
						<div class="btn"><input type="button" class="ppl" name="adult" id="adult" value="성인 1명"></div>
						<a class="inputImg" href="#"><img alt="adlt" src="../img/ppl.jpg" height="30px" width="30px"></a>
					</td>
					<td>
						<div class="btn"><input type="button" class="ppl" name="kid" id="kid" value="소아 0명"></div>
						<a class="inputImg" href="#"><img alt="kid" src="../img/ppl.jpg" height="30px" width="30px"></a>
					</td>
					<td>
						<div class="btn"><input type="button" class="ppl" name="baby" id="baby" value="유아 0명"></div>
						<a class="inputImg" href="#"><img alt="bby" src="../img/ppl.jpg" height="30px" width="30px"></a>
					</td>
					<td>
						<!-- hidden input태그  -->
						<input type="hidden" id="hdep" name="hdep">
						<input type="hidden" id="harr" name="harr">
						<input type="hidden" id="hdayGo" name="hdayGo">
						<input type="hidden" id="hdayCome" name="hdayCome">
						<input type="hidden" id="hadult" name="hadult">
						<input type="hidden" id="hkid" name="hkid">
						<input type="hidden" id="hbaby" name="hbaby">
						<input type="button" class="submit" value="예매하기" onclick="inputChk();">
					</td>
				</tr>
				
				<tr id="trInfo">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td><a id="calcAge" href="#">나이계산기</a></td>
					<td><a href="#"><img alt="!" src="../img/chat.png" width="15px" height="15px"></a></td>
					<td><a href="#"><img alt="!" src="../img/chat.png" width="15px" height="15px"></a></td>
					<td></td>
				</tr>
			</table>
		</form>
	</div>
</div>
</body>
</html>