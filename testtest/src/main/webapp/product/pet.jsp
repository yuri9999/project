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
#airCafe p {
	margin-left: 40px;
}
.content {
	margin: 60px 0 0 0;
}
.pet {
	list-style: none;
}
.pet:after{
	display: block;
  	clear: both;
  	content: '';
}
.pet li {
	float : left;
	width: 490px;
	padding: 0 20px 0 0;
	margin-top: 10px;
}
.happypuppy,.nolga{
	width: 490px;
	height: 420px;
}
.happypuppy p,.nolga p {
	font-size: 14px;
}
.happypuppy_img, .nolga_img {
	width: 490px;
	height: 170px;
}
.happypuppy_con,.nolga_con {
	padding: 5px 0 0 5px;
	height : 100px;
	letter-spacing: -1px;
	font-size: 14px;
	margin-left: 10px;
}
.happypuppy_link a, .nolga_link a {
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
	<h3 id="airCafeNavi">HOME &gt; 여행상품 &gt; 제휴상품 &gt; 애견호텔<img alt="" src="../img/navimg.png"></h3><br>
	<h1>애견호텔</h1>
	<p>사랑스런 애(愛)견을 위한 럭셔리 애견호텔 GRAND OPEN!<br>
		호텔, 스파, 놀이터, 카페 등 반려동물 편의시설을 제주항공 특가로 이용하세요!</p>
	<div class="content">
		<ul class="pet">
			<li>
				<div class="happypuppy">
					<h3><img src="../img/title1.jpg">해피퍼피(강남권)</h3>
					<div class="happypuppy_img">
						<img alt="" src="../img/happypuppy.jpg">
					</div>
					<ul class="happypuppy_con">
						<li>애견호텔/유치원/수영장/다양한 커리큘럼 제공</li>
						<li>제주항공 회원 특혜 : 호텔 3박 이하 이용 시 20% 할인, 3박 초과 시 1일 무료,<br>
						 기타 서비스 10% 할인 강남권 픽업서비스 연계 및 픽업비용 2,000원 할인권 증정!</li>
					</ul>
					<div class="happypuppy_link">
						<a href="https://blog.naver.com/happypuppydogscare" target="_blank">신규고객 쿠폰받기</a>
					</div>
				</div>
			</li>
			<li>
				<div class="nolga">
					<h3><img src="../img/title1.jpg">놀개나개(인천공항, 김포공항)</h3>
					<div class="nolga_img">
						<img alt="" src="../img/nolga.jpg">
					</div>
					<ul class="nolga_con">
						<li>애견호텔/놀이터/카페/수영장/애견캔들판매</li>
						<li>제주항공 회원 특혜 : 호텔 3박 이하 이용 시 20% 할인, 3박 초과 시 1일 무료,<br>
						기타 서비스 10% 할인 인천공항, 김포공항 픽업서비스 지원 (인천공항 무료픽업, 김포공항 별도 비용 발생)</li>
					</ul>
					<div class="nolga_link">
						<a href="https://www.instagram.com/nolgaenagae/?utm_source=ig_profile_share&igshid=9sywtjlk5miy" target="_blank">놀개나개 바로가기</a>
					</div>
				</div>
			</li>
		</ul>	
	</div><!-- content -->
</div><!-- airCafe -->	
</body>
</html>