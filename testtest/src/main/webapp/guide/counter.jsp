<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#counter{
	width: 1200px;
	height: 7580px;
	margin: auto;
}
#counter #counterNavi{
	font-weight: normal;
	color: #353535;
}
#counter h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
#counter h3{
	margin-top: 30px;
}
.accent{
	color: red;
}
#counter table{
	width: 1200px;
	border-spacing: 0;
}
#counter table img{
	width: 300px;
}
#counter .counterTB{
	width: 200px;
	background-color: #EAEAEA;
	border-bottom: 1px solid #ccc;
	text-align: center;
	font-size: 13px;
}
#counter .counterTB:first-child{
	border-top: 1px solid #ccc;
}
#counter .counterTNB{
	border-bottom: 1px solid #ccc;
	font-size: 13px;
	padding-left: 40px;
}
#counter .counterTNB:first-child{
	border-top: 1px solid #ccc;
}
#counter .counterTNB a{
	text-decoration: none;
	color: black;
}
#counter .counterTNB a:hover{
	text-decoration: none;
}
.counterImgT{
	width: 350px;
}
.counterTTB{
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
	border-right: 1px solid #ccc;
	background-color: #EAEAEA;
	font-size: 13px;
}
.counterTTB:last-child {
	border-right: none;
}
.counterTTB a{
	text-decoration: none;
	color: black;
}
.counterTTB a:hover {
	text-decoration: none;
}
</style>
</head>
<body>
<div id="counter">
	<h3 id="counterNavi">JAJUAIR &gt; 서비스 안내 &gt; 공항서비스 &gt; 자주항공 카운터<img alt="" src="../img/navimg.png"></h3><br>
	<h1>자주항공 카운터</h1>
	<p><img alt="" src="../img/counterT.png" class="counterimg">자주항공이 취향중인 각 공항의 카운터 정보를 안내해 드립니다.</p>
	
	<table>
		<tr>
			<td class="counterTTB">한국</td>
			<td class="counterTTB"><a href="#counterIcn">인천(ICN)</a></td>
			<td class="counterTTB"><a href="#counterGMP">김포(GMP)</a></td>
			<td class="counterTTB"><a href="#counterTAE">대구(TAE)</a></td>
			<td class="counterTTB"><a href="#counterCJU">제주(CJU)</a></td>
		</tr>
		<tr>
			<td rowspan="3" class="counterTTB">동북아</td>
			<td class="counterTTB"><a href="#counterNGO">나고야(NGO)</a></td>
			<td class="counterTTB"><a href="#counterNRT">도쿄-나리타(NRT)</a></td>
			<td class="counterTTB"><a href="#counterHND">도쿄-하네다(HND)</a></td>
			<td class="counterTTB"><a href="#counterCTS">삿포로(CTS)</a></td>
		</tr>
		<tr>
			<td class="counterTTB"><a href="#counterKIX">오사카(KIX)</a></td>
			<td class="counterTTB"><a href="#counterFUK">후쿠오카(FUK)</a></td>
			<td class="counterTTB"><a href="#counterOKA">오키나와(OKA)</a></td>
			<td class="counterTTB"><a href="#counterMFM">마카오(MFM)</a></td>
		</tr>
		<tr>
			<td class="counterTTB"><a href="#counterPEK">베이징(PEK)</a></td>
			<td class="counterTTB"><a href="#counterTPE">타이페이(TPE)</a></td>
			<td colspan="2" class="counterTTB"><a href="#counterHKG">홍콩(HKG)</a></td>
		</tr>
		<tr>
			<td rowspan="2" class="counterTTB">동남아</td>
			<td class="counterTTB"><a href="#counterDAD">다낭(DAD)</a></td>
			<td class="counterTTB"><a href="#counterMNL">마닐라(MNL)</a></td>
			<td class="counterTTB"><a href="#counterBKK">방콕(BKK)</a></td>
			<td class="counterTTB"><a href="#counterCEB">세부(CEB)</a></td>
		</tr>
		<tr>
			<td class="counterTTB"><a href="#counterHAN">하노이(HAN)</a></td>
			<td colspan="3" class="counterTTB"><a href="#counterSGN">호치민(SGN)</a></td>
		</tr>
	</table>
	
	<div id="counterIcn">
		<h3><img alt="" src="../img/title1.jpg">서울(인천)</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="인천공항" src="../img/counter1.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">인천광역시 중구 공항고 271 인천국제공항</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.airport.kr">http://www.airport.kr</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">인천국제공항 여객터미널1 3층 F Zone</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">-</td>
			</tr>
		</table>
	</div>
	
	<div id="counterGMP">
		<h3><img alt="" src="../img/title1.jpg">서울(김포)</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="김포공항" src="../img/counter2.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">서울시 강서구 하늘기 112 김포국제공항, 국내선 청사</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.airport.co.kr/mbs/gimpo">http://www.airport.co.kr/mbs/gimpo</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">국내선 청사 2층<br>
					제주항공 카운터 <br>
 					- 74번~75번 : 짐 있는 승객 전용<br>
 					- 71번~73번 : 짐 없는 승객 전용</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">김포공항 내 무료 셔틀버스<br>
					- 운행시간 화물청사행 06:00~23:00, 여객청사행 09:00~22:00
				</td>
			</tr>
		</table>
	</div>
	
	<div id="counterTAE">
		<h3><img alt="" src="../img/title1.jpg">대구</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="대구공항" src="../img/counter3.JPG">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">대구광역시 동구 공항로 221 대구국제공항</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.airport.co.kr/mbs/daegu">http://www.airport.co.kr/mbs/daegu</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">- 대구국제공항 여객터미널 1층 카운터 19~22번<br>
					- 대구공항 공용카운터 운영에 따라 수속카운터 변동 가능
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">1층: 국내/국제 도착과 수속업무<br>
					2층: 국내/국제 출발장</td>
			</tr>
		</table>
	</div>
	
	<div id="counterCJU">
		<h3><img alt="" src="../img/title1.jpg">제주</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="제주공항" src="../img/counter4.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">제주특별자치도 제주시 공항로2 제주국제공항</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.airport.co.kr/mbs/jeju">http://www.airport.co.kr/mbs/jeju</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">국내선<br>
					- 3층 출발장 1번 GATE 정면 제주항공 1번~6번 체크인 카운터<br>
					- 1번 GATE 좌측 1번~6번 발권 카운터<br>
					국제선<br>
					- 3층 출발장 5번 GATE 정면 1번~25번 국제선 공용카운터<br>
					- 5번 GATE 우측 발권 카운터
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">-</td>
			</tr>
		</table>
	</div>
	
	<div id="counterNGO">
		<h3><img alt="" src="../img/title1.jpg">나고야</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="나고야공항" src="../img/counter5.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">일본 아이치현 도코나메시 이세만(愛知県常滑市伊勢湾)인공섬에 위치한 국제공항 나고야시에서 약 40km</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.centrair.jp">http://www.centrair.jp</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">나고야 주부 국제공항(센토레아) 국제선 3층 E카운터 E8~E12
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">UTC+9</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">- 입국 심사 시, 주소 및 체류지 명확하게 표기<br>
					- 현금 100만엔 이상 소지시 세관신고 필요</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">메이테츠(名鉄) 전철 나고야(名古屋) 역에서 공항특급 뮤스카이(ミュースカイ) 승차 28분소요/1,230엔, 주부 국제공항(中部国際空港)역 하차 시 국제선 출발층으로 바로 연결</td>
			</tr>
		</table>
	</div>
	
	<div id="counterNRT">
		<h3><img alt="" src="../img/title1.jpg">도쿄-나리타</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="나리타공항" src="../img/counter6.jpg">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">도쿄 중심가에서 북동쪽으로 약 60km</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.narita-airport.jp">http://www.narita-airport.jp</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">Narita International Airport Terminal3, 2층 A카운터
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">UTC+9</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">- 유의사항: 비행출발시간 1시간 전 탑승수속 마감<br>
					- 입국 심사 시, 주소 및 체류지 명확하게 표기<br>
					- 현금 100만엔 이상 소지시 세관신고 필요</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">- 체크인카운터에서 부가서비스 이용 시 현지 통화 JPY 현금만 가능<br>
					- 지하철 이용 시: 제2터미널역 하차 후, 1층 외부통로 도보 이동 혹은 3터미널행 셔틀버스 이용<br>
					- 리무진 버스/택시 이용 시: 제3터미널 하차</td>
			</tr>
		</table>
	</div>
	
	<div id="counterHND">
		<h3><img alt="" src="../img/title1.jpg">도쿄-하네다</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="하네다공항" src="../img/counter7.JPG">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">도쿄 중심가에서 남동쪽으로 약 20km</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="www.tokyo-airport-bldg.co.jp">www.tokyo-airport-bldg.co.jp</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">하네다 공항터미널 3층 L구역 1번~5번
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">UTC+9</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">- 입국 심사 시, 주소 및 체류지 명확하게 표기<br>
					- 현금 100만엔 이상 소지시 세관신고 필요
				</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">-</td>
			</tr>
		</table>
	</div>
	
	<div id="counterCTS">
		<h3><img alt="" src="../img/title1.jpg">삿포로</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="삿포로공항" src="../img/counter8.jpg">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">066-0012, 치토세시비비 신치토세공항 국제선 터미널 3층</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.new-chitose-airport.jp">http://www.new-chitose-airport.jp</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">신치토세공항 국제선 터미널 3층 A/B 카운터
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">UTC+9</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">- 입국 심사 시, 주소 및 체류지 명확하게 표기<br>
					- 현금 100만엔 이상 소지시 세관신고 필요
				</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">삿포로역에서 JR열차 승차 후 37분 소요, 도착 후 국제선터미널 까지 걸어서 10분 소요<br>
					삿포로-인천 노선 약 3시간 소요
 				</td>
			</tr>
		</table>
	</div>
	
	<div id="counterKIX">
		<h3><img alt="" src="../img/title1.jpg">오사카</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="오사카공항" src="../img/counter9.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">오사카 주요도시(우메다, 난바, 텐노지) 부터 약 50km</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.kansai-airport.or.jp/kr/index.asp">http://www.kansai-airport.or.jp/kr/index.asp</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">터미널 1 국제선 4층 A카운터 1~7
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">UTC+9</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">- 입국 심사 시, 주소 및 체류지 명확하게 표기<br>
					- 현금 100만엔 이상 소지시 세관신고 필요
				</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">-
 				</td>
			</tr>
		</table>
	</div>
	
	<div id="counterFUK">
		<h3><img alt="" src="../img/title1.jpg">후쿠오카</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="후쿠오카공항" src="../img/counter10.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">후쿠오카 시영지하철 후쿠오카 공항역에서 - 하카타역까지 5분<br>
					후쿠오카 시영지하철 후쿠오카 공항역에서 - 텐진까지 10분
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.fuk-ab.co.jp/korea/">http://www.fuk-ab.co.jp/korea/</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">Fukuoka Airport Building 국제선 3층 J카운터
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">UTC+9</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">- 입국 심사 시, 주소 및 체류지 명확하게 표기<br>
					- 현금 100만엔 이상 소지시 세관신고 필요
				</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">국내선 - 국제선 터미널 무료셔틀버스 운행<br>
					운행시간 : 매일 약10～15분 간격<br>
					하차 : 국내선 제2터미널 빌딩앞 버스정류장<br>
					후쿠오카 시영지하철 '후쿠오카공항'역 하차 시, 국내선 터미널에 하차,<br>
					국제선까지 걸어서는 이동하기에 다소 무리가 있음,<br>
					국제선 터미널까지 이동을 위해서 무료셔틀버스 이용해야 함<br>
 				</td>
			</tr>
		</table>
	</div>
	
	<div id="counterOKA">
		<h3><img alt="" src="../img/title1.jpg">오키나와</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="오키나와공항" src="../img/counter11.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">일본 오키나와현 나하시 카가미즈 280 나하공항국제선 터미널
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.naha-airport.co.jp/ko/terminal/international/">http://www.naha-airport.co.jp/ko/terminal/international/</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">나하공항 국제선터미널 2층 A-B카운터
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">UTC+9</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">- 입국 심사 시, 주소 및 체류지 명확하게 표기<br>
					- 현금 100만엔 이상 소지시 세관신고 필요<br>
					- 입국순서 : 항공기 도착 → 입국심사 → 수하물 수취 → 세관심사 → 입국완료
				</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">모노레일(유이레일) 나하공항(국내선터미널) 하차<br>
					국제선공항은 별도 건물에 위치하며, 도보 약 5분 소요
 				</td>
			</tr>
		</table>
	</div>
	
	<div id="counterMFM">
		<h3><img alt="" src="../img/title1.jpg">마카오</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="마카오공항" src="../img/counter12.jpg">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">마카오 시내에서 약 2km 떨어진 곳에 위치
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.macau-airport.com">http://www.macau-airport.com</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">마카오국제공항 A구역, A12-A14
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">서울 -1시간 (UTC +8)</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">-</td>
			</tr>
		</table>
	</div>
	
	<div id="counterPEK">
		<h3><img alt="" src="../img/title1.jpg">베이징</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="베이징공항" src="../img/counter13.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">중국 북경시 순의구 공항서로 베이징 수도 국제공항
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.bcia.com.cn/index.shtml">http://www.bcia.com.cn/index.shtml</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">베이징 수도 국제공항 터미널 2, D06-10
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">서울 -1시간 (UTC +8)</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">중국 입/출국시 입/출국 카드 작성 ( 단,단체 및 별지 비자 제외 )<br>
					중국방문에 유효한 사증 필히 지참</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">-</td>
			</tr>
		</table>
	</div>
	
	<div id="counterTPE">
		<h3><img alt="" src="../img/title1.jpg">타이페이</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="타이페이공항" src="../img/counter14.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">타이베이(臺北)와는 약 40km 떨어진 타오위안 현(桃園)에 위치
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.taoyuan-airport.com">http://www.taoyuan-airport.com</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">타오위안 국제공항 1터미널 11카운터 (부산/인천행 동일)
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">서울 -1시간 (UTC +8)</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">타이완 민항국 연락처 공유<br>
					Tel: 0800-211-798 (Taiwan only)<br>
					Mail: gencaa@mail.caa.gov.tw</td>
			</tr>
		</table>
	</div>
	
	<div id="counterHKG">
		<h3><img alt="" src="../img/title1.jpg">홍콩</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="홍콩공항" src="../img/counter15.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">Hong Kong 센트럴로부터 약 37km 떨어진 츠례자오(첵랍콕) 섬에 위치
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.hongkongairport.com">http://www.hongkongairport.com</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">홍콩 국제공항 2터미널 P카운터 12~14
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">서울 -1시간 (UTC +8)</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">홍콩 입국 시 작성한 입국카드를 출국 심사 시까지 소지 필수</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">- 도심공항 체크인 가능 (ITCI 홍콩/구룡역 & Skypier Ferry Terminal Counter)<br>
					- 수속 카운터와 탑승구(게이트)와의 소요시간<br>
 					: 7C2102 낮비행기편, 출국심사포함 최소 40분 이상 소요<br>
 					: 7C2108 밤비행기편, 출국심사포함 20~30분 정도 소요<br>
					- 보안 검사시 유의 물품: 치약, 보조배터리, 육포, 망고젤리, 각종 쨈류, 100ml이상의 액체/젤/크림 제형의 화장품 (인천에서 구입한 면세품 포함)
				</td>
			</tr>
		</table>
	</div>
	
	<div id="counterDAD">
		<h3><img alt="" src="../img/title1.jpg">다낭</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="다낭공항" src="../img/counter16.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">다낭 시내 중심부로부터 2km 떨어진 곳에 위치
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.danangairportonline.com">http://www.danangairportonline.com</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">2017년 5월 12일부터 신규 터미널(T2)로 이전합니다<br>
					- 7C2904 (23:00L) 항공편: CNTR 7-11 (예정)<br>
					- 7C2962 (00:00L) 항공편: CNTR 11-14 (예정)
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">서울 -2시간 (UTC +7)</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">-</td>
			</tr>
		</table>
	</div>
	
	<div id="counterMNL">
		<h3><img alt="" src="../img/title1.jpg">마닐라</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="마닐라공항" src="../img/counter17.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">마닐라와 마카티 시내로부터 약 10km
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.miaa.gov.ph">http://www.miaa.gov.ph</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">마닐라공항 터미널 1 제주항공 수속카운터
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">서울 -2시간 (UTC +7)</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">-</td>
			</tr>
		</table>
	</div>
	
	<div id="counterBKK">
		<h3><img alt="" src="../img/title1.jpg">방콕</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="방콕공항" src="../img/counter18.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">방콕 시내로부터 약 30km
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.suvarnabhumiairport.com/">http://www.suvarnabhumiairport.com/</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">공항 터미널 4층 F1~F12 카운터
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">서울 -2시간 (UTC +7)</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">주류, 담배등의 세관 매우 까다로움<br>
					여권훼손, 손상등의 경우 입국거절 (입국거절시 개인벌금 10,000 THB)</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">VAT Refund 절차: 터미널 4층 VAT 카운터에서 Stamp 확인 후 법무부 통과 후<br>
					공항내에서 VAT Refund 카운터에서 현금지급<br>
					와이파이: 안내데스크에서 여권제시 후 PW 무료지급 후 사용<br>
					Publci Taxi: 공항 1층 Public Taxi Area</td>
			</tr>
		</table>
	</div>
	
	<div id="counterCEB">
		<h3><img alt="" src="../img/title1.jpg">세부</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="세부공항" src="../img/counter19.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">막탄섬 라푸라푸시티 (세부섬과 30분거리)
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://www.mactan-cebuairport.com.ph">http://www.mactan-cebuairport.com.ph</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">2018년 7월 2일 부 신규터미널(International Terminal2)로 이동<br>
 					- 수속 카운터 위치 신규터미널(International Terminal)공항 안내판 확인 요망
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">서울 -1시간 (UTC +8)</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">- 모자/모녀만 입국시 영문등본 소지 (한국은 엄마와 자녀의 성이 달라 가족임을 증명해야 함)<br>
					- UM은 15세미만으로 규정하고 변호사 공증서류 및 영문등본 필요<br>
					- 입국시 UM Fee 징수<br>
  					(3,120페소/부모가 필리핀에서 마중나오면 면제/부모임을 증명하는 서류 필요)<br>
					- 무비자 승객은 한국 포함 타국가로 돌아가는 리턴 e-티켓 소지해야함</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">출국시 공항이용료 징수 안내<br>
					- 금액 : 850 PHP<br>
					- 납부통화 : PHP, USD 가능(환율에 따라 변동), 카드결제 불가<br>
					- 납부장소 : 탑승수속 후 출국장 입구에 위치한 공항 이용료 부스<br>
					- 유의사항 : 공항 이용료 납부 시 영수증을 탑승권 뒷면에 부착하고, 탑승구에서 재확인하며 영수증이 없는 경우 공항 이용료 재 징수<br>
					- 세관 : 규정된 면세품 외의 초과 품에 대해서는 세관 규정에 따라 관세 부과(입국시 주의 요망)</td>
			</tr>
		</table>
	</div>
	
	<div id="counterHAN">
		<h3><img alt="" src="../img/title1.jpg">하노이</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="하노이공항" src="../img/counter20.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">하노이 노이바이 국제공항 터미널 2
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://en.vietnamairport.vn">http://en.vietnamairport.vn</a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">E01-E04 카운터
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">서울 -2시간 (UTC+7)</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">출발 2시간 30분 전부터 탑승 수속, 출발 50분 전까지 탑승수속 마쳐야 탑승 가능<br>
					(베트남 교통국 항공법 2014.12.1부터 반영)</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">-입국 시: 입국신고서, 세관신고서 작성 필요 없음<br>
					-출국 시: 출국신고서 작성 필요 없음</td>
			</tr>
		</table>
	</div>
	
	<div id="counterSGN">
		<h3><img alt="" src="../img/title1.jpg">호치민</h3>
		<table>
			<tr>
				<td rowspan="7" class="counterImgT">
					<img alt="호치민공항" src="../img/counter21.png">
				</td>
			</tr>
			<tr>
				<td class="counterTB">위치</td>
				<td class="counterTNB">탄손누트국제공항 국제선 터미널 2F
				</td>
			</tr>
			<tr>
				<td class="counterTB">공항사이트</td>
				<td class="counterTNB"><a href="http://vietnamairport.vn/en/introduction/airports/tan-son-nhat-international-airport">http://vietnamairport.vn/en/introduction/airports/tan-son-nhat-international-airport </a></td>
			</tr>
			<tr>
				<td class="counterTB">카운터 정보</td>
				<td class="counterTNB">E01~E04
				</td>
			</tr>
			<tr>
				<td class="counterTB">시차정보</td>
				<td class="counterTNB">서울 -2시간 (UTC+7)</td>
			</tr>
			<tr>
				<td class="counterTB">공항별 입국정보</td>
				<td class="counterTNB">-</td>
			</tr>
			<tr>
				<td class="counterTB">기타</td>
				<td class="counterTNB">-</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>