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
	height: 900px;
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
.content {
	margin: 60px 0 0 0;
}
.cars {
	list-style: none;
}
.cars:after{
	display: block;
  	clear: both;
  	content: '';
}
.cars li {
	float : left;
	width: 490px;
	padding: 0 20px 0 0;
	margin-top: 10px;
}
.overseas,.domestic{
	width: 490px;
	height: 420px;
}
.overseas p,.domestic p {
	font-size: 14px;
}
.overseas_img, .domestic_img {
	width: 490px;
	height: 170px;
}
.overseas_con {
	padding: 5px 0 0 5px;
	height : 100px;
	letter-spacing: -1px;
	font-size: 14px;
	margin-left: 10px;
}
.domestic_con {
	padding: 5px 0 0 5px;
	height : 60px;
	letter-spacing: -1px;
	font-size: 14px;
	margin-left: 10px;
}
.overseas_link a, .domestic_link a {
	text-decoration: none;
	background: #4B1152;
    color: white;
    width: auto;
    padding: 5px 20px;
    border-radius: 5px;
}

</style>
</head>
<body>
<div id="airCafe">
	<h3 id="airCafeNavi">HOME &gt; 여행상품 &gt; 제휴상품 &gt; 여행자 보험<img alt="" src="../img/navimg.png"></h3><br>
	<h1>여행자 보험</h1>
	<div class="content">
		<ul class="cars">
			<li>
				<div class="overseas">
					<h3><img src="../img/title1.jpg">해외여행보험 (에이스손해보험)</h3>
					<p>편안한 여행의 시작, 해외여행보험 준비는 필수.</p>
					<div class="overseas_img">
						<img alt="" src="../img/overseas.jpg">
					</div>
					<ul class="overseas_con">
						<li>해외여행, 출장 등의 목적으로 주거지를 출발하여 여행을 마치고 주거지에<br>
						 도착할 때까지 발생되는 상해사고, 질병 등 위험을 보장해주는 보험입니다.</li>
						<li>Chubb 여행보험 콜센터: 1666-5075</li>
					</ul>
					<div class="overseas_link">
						<a href="https://www.acedirect.co.kr/servlets/common/commonForward.ace?target=pc/products/out/overseas01&layout=out01&inputGroupId=700001JEJD" target="_blank">해외여행 보험료 확인</a>
					</div>
				</div>
			</li>
			<li>
				<div class="domestic">
					<h3><img src="../img/title1.jpg">국내여행보험 (에이스손해보험)</h3>
					<p>국내여행이라고 잊지마세요. 안전한 국내여행의 시작 에이스손해보험.</p>
					<div class="domestic_img">
						<img alt="" src="../img/domestic.jpg">
					</div>
					<ul class="domestic_con">
						<li>국내여행, 출장 등의 목적으로 주거지를 출발하여 여행을 마치고 주거지에<br>
						 도착할 때까지 발생되는 상해사고, 질병 등 위험을 보장해주는 보험입니다.</li>
					</ul>
					<div class="domestic_link">
						<a href="https://www.acedirect.co.kr/servlets/common/commonForward.ace?target=pc/products/out/nations01&layout=out01&inputGroupId=700001JEJD" target="_blank">국내여행 보험료 확인</a>
					</div>
				</div>
			</li>
		</ul>	
	</div><!-- content -->
</div><!-- airCafe -->	
</body>
</html>