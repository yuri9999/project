<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#airCafe{
	width: 1200px;
	height: 1000px;
	margin: auto;
}
#airCafe #airCafeNavi{
	font-weight: normal;
	color: #353535;
}
#airCafe h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
.international,.domestic {
	overflow: scroll;
	width: 980px;
	height: 320px;
	padding: 15px;
	text-align: center;
	letter-spacing: -1px;
	background-color: #F5F5F5;
	line-height: 2em;
}
.date{
	float: right;
	margin-right: 12em;
	margin-top: -19px;
}
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".international").load("../text/international_filghts.txt").css("margin-top","10px");
		$(".domestic").load("../text/domestic_flights.txt").css("margin-top","10px");
		
	});
</script>
</head>
<body>
<div id="airCafe">
	<h3 id="airCafeNavi">JAJUAIR &gt; 여객운송약관<img alt="" src="../img/navimg.png"></h3><br>
	<h1>여객운송약관</h1>
	<h3>국제선</h3>
		<pre>
			<div class="international">
			</div>
		</pre>
	<h3>국내선</h3>
		<pre>
			<div class="domestic">
			</div>
		</pre>
		<p class="date">개정일자 : 2018년 7월 4일</p>
</div>

</body>
</html>