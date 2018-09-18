<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>


<script type="text/javascript">
$(function () {
  $('.code1').show();
  $('.content-panel').hide();
  $('.d1').show();

  $('#code1').on("change",function () {
    $('.content-panel').hide();
    $('.d'+$(this).val()).show();
  });
});
</script>
</head>
<body>
<h1>고객센터</h1>
<p>@@@님의 문의사항을 남겨주세요.</p>

<form action="#" name="qnaWriteForm" method="get">
<div class="QnA">
	<table id="qnaTab" border="1">
		<tr>
			<td>
				<h1>고객정보</h1>	
			</td>
		</tr>
		<tr>
			<td>
				<label>이름 *</label>
				<input type="text" name="koreanName">
			</td>
		</tr>
		<tr>
			<td>
				<label>전화번호 *</label>
				<select name="tel1">
					<option value="010">010</option>
					<option value="010">011</option>
					<option value="010">019</option>
				</select>
				<input type="text" name="tel2">-<input type="text" name="tel3">
			</td>
		</tr>
		<tr>
			<td>
				<label>이메일 *</label>
				<input type="text" name="email1">@
				<select>
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="gmail.com">gmail.com</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<h1>문의정보</h1>	
			</td>
		</tr>
		<tr>
			<td>
				<label>문의유형 *</label>			
				<select id="code1" name="code1" class="code1">
				  <option value="1">QnA</option>
				  <option value="2">항공권영문 정정</option>
				  <option value="3">수하물파손</option>
				  <option value="4">유실물</option>
				</select>
				<label class="content-panel d1">분류 *</label>
				<select name="code2" class="content-panel d1">
					<option value="항공권예약발권/변경/취소">항공권예약발권/변경/취소</option>
					<option value="포인트">포인트</option>
					<option value="홈페이지&모바일 이용">홈페이지&모바일 이용</option>
					<option value="공항서비스">공항서비스</option>
					<option value="이벤트">이벤트</option>
					<option value="기타">기타</option>
				</select>
			</td>
		</tr>
		<tr class="content-panel d2">
			<td>예약번호 *</td>
			<td>
				<input type="text" name="reservNum">
				<label>탑승자명 *</label>
				<input type="text" name="boardName">
			</td>
		</tr>
		<tr class="content-panel d2">
			<td>변경할 영문 이름 *</td>
			<td>
				<input type="text" name="englishName">
			</td>
		</tr>
		<tr class="content-panel d3">
		  <td>탑승일 *</td>
		  <td>
		  	<input type="text" name="boardDate">
		  </td>
		</tr>
		<tr class="content-panel d3">
		  <td>
		  <label>출발지 *</label>
		  	<select name="airportName1">
		  		<option value="인천(icn)">인천(icn)</option>
		  		<option value="김포(gmp)">김포(gmp)</option>
		  		<option value="부산(pus)">부산(pus)</option>
		  		<option value="제주(cju)">제주(cju)</option>
		  		<option value="광주(kwj)">광주(kwj)</option>
		  		<option value="대구(tae)">대구(tae)</option>
		  		<option value="청주(cjj)">청주(cjj)</option>
		  		<option value="나고야(ng0)">나고야(ng0)</option>
		  		<option value="도쿄(나리타)(nrt)">도쿄(나리타)(nrt)</option>
		  		<option value="도쿄(하네다)(hnd)">도쿄(하네다)(hnd)</option>
		  		<option value="삿포로(cts)">삿포로(cts)</option>
		  		<option value="오사카(kix)">오사카(kix)</option>
		  		<option value="후쿠오카(fuk)">후쿠오카(fuk)</option>
		  		<option value="오키나와(oka)">오키나와(oka)</option>
		  		<option value="마카오(mfm)">마카오(mfm)</option>
		  		<option value="베이징(pek)">베이징(pek)</option>
		  		<option value="홍콩(hkg)">홍콩(hkg)</option>
		  		<option value="타이베이(tpe)">타이베이(tpe)</option>
		  		<option value="다낭(dad)">다낭(dad)</option>
		  		<option value="마닐라(mnl)">마닐라(mnl)</option>
		  		<option value="방콕(bkk)">방콕(bkk)</option>
		  		<option value="세부(ceb)">세부(ceb)</option>
		  		<option value="하노이(han)">하노이(han)</option>
		  		<option value="호치민(sgn)">호치민(sgn)</option>
		  	</select>
		  	<label>도착지 *</label>
		  	<select name="airportName2">
		  		<option value="인천(icn)">인천(icn)</option>
		  		<option value="김포(gmp)">김포(gmp)</option>
		  		<option value="부산(pus)">부산(pus)</option>
		  		<option value="제주(cju)">제주(cju)</option>
		  		<option value="광주(kwj)">광주(kwj)</option>
		  		<option value="대구(tae)">대구(tae)</option>
		  		<option value="청주(cjj)">청주(cjj)</option>
		  		<option value="나고야(ng0)">나고야(ng0)</option>
		  		<option value="도쿄(나리타)(nrt)">도쿄(나리타)(nrt)</option>
		  		<option value="도쿄(하네다)(hnd)">도쿄(하네다)(hnd)</option>
		  		<option value="삿포로(cts)">삿포로(cts)</option>
		  		<option value="오사카(kix)">오사카(kix)</option>
		  		<option value="후쿠오카(fuk)">후쿠오카(fuk)</option>
		  		<option value="오키나와(oka)">오키나와(oka)</option>
		  		<option value="마카오(mfm)">마카오(mfm)</option>
		  		<option value="베이징(pek)">베이징(pek)</option>
		  		<option value="홍콩(hkg)">홍콩(hkg)</option>
		  		<option value="타이베이(tpe)">타이베이(tpe)</option>
		  		<option value="다낭(dad)">다낭(dad)</option>
		  		<option value="마닐라(mnl)">마닐라(mnl)</option>
		  		<option value="방콕(bkk)">방콕(bkk)</option>
		  		<option value="세부(ceb)">세부(ceb)</option>
		  		<option value="하노이(han)">하노이(han)</option>
		  		<option value="호치민(sgn)">호치민(sgn)</option>
		  	</select>
		  </td>
		</tr>
		<tr class="content-panel d4">
		  <td>
		   <label>물품명 *</label>
		  	<input type="text" name="goodsName">
		  </td>
		  <td>
		  	<label>색상 *</label>
		  	<input type="text" name="goodsColor">
		  </td>
		</tr>
		<tr class="content-panel d4">
		  <td>
		  	<label>탑승일 *</label>
		  	<input type="text" name="boardDate">
		  </td>
		</tr>
		<tr class="content-panel d4">
		  <td>
		  	<label>출발지 *</label>
		  	<select name="airportName1">
		  		<option value="인천(icn)">인천(icn)</option>
		  		<option value="김포(gmp)">김포(gmp)</option>
		  		<option value="부산(pus)">부산(pus)</option>
		  		<option value="제주(cju)">제주(cju)</option>
		  		<option value="광주(kwj)">광주(kwj)</option>
		  		<option value="대구(tae)">대구(tae)</option>
		  		<option value="청주(cjj)">청주(cjj)</option>
		  		<option value="나고야(ng0)">나고야(ng0)</option>
		  		<option value="도쿄(나리타)(nrt)">도쿄(나리타)(nrt)</option>
		  		<option value="도쿄(하네다)(hnd)">도쿄(하네다)(hnd)</option>
		  		<option value="삿포로(cts)">삿포로(cts)</option>
		  		<option value="오사카(kix)">오사카(kix)</option>
		  		<option value="후쿠오카(fuk)">후쿠오카(fuk)</option>
		  		<option value="오키나와(oka)">오키나와(oka)</option>
		  		<option value="마카오(mfm)">마카오(mfm)</option>
		  		<option value="베이징(pek)">베이징(pek)</option>
		  		<option value="홍콩(hkg)">홍콩(hkg)</option>
		  		<option value="타이베이(tpe)">타이베이(tpe)</option>
		  		<option value="다낭(dad)">다낭(dad)</option>
		  		<option value="마닐라(mnl)">마닐라(mnl)</option>
		  		<option value="방콕(bkk)">방콕(bkk)</option>
		  		<option value="세부(ceb)">세부(ceb)</option>
		  		<option value="하노이(han)">하노이(han)</option>
		  		<option value="호치민(sgn)">호치민(sgn)</option>
		  	</select>
		  </td>
		  <td>
		  	<label>도착지 *</label>
		  	<select name="airportName2">
		  		<option value="인천(icn)">인천(icn)</option>
		  		<option value="김포(gmp)">김포(gmp)</option>
		  		<option value="부산(pus)">부산(pus)</option>
		  		<option value="제주(cju)">제주(cju)</option>
		  		<option value="광주(kwj)">광주(kwj)</option>
		  		<option value="대구(tae)">대구(tae)</option>
		  		<option value="청주(cjj)">청주(cjj)</option>
		  		<option value="나고야(ng0)">나고야(ng0)</option>
		  		<option value="도쿄(나리타)(nrt)">도쿄(나리타)(nrt)</option>
		  		<option value="도쿄(하네다)(hnd)">도쿄(하네다)(hnd)</option>
		  		<option value="삿포로(cts)">삿포로(cts)</option>
		  		<option value="오사카(kix)">오사카(kix)</option>
		  		<option value="후쿠오카(fuk)">후쿠오카(fuk)</option>
		  		<option value="오키나와(oka)">오키나와(oka)</option>
		  		<option value="마카오(mfm)">마카오(mfm)</option>
		  		<option value="베이징(pek)">베이징(pek)</option>
		  		<option value="홍콩(hkg)">홍콩(hkg)</option>
		  		<option value="타이베이(tpe)">타이베이(tpe)</option>
		  		<option value="다낭(dad)">다낭(dad)</option>
		  		<option value="마닐라(mnl)">마닐라(mnl)</option>
		  		<option value="방콕(bkk)">방콕(bkk)</option>
		  		<option value="세부(ceb)">세부(ceb)</option>
		  		<option value="하노이(han)">하노이(han)</option>
		  		<option value="호치민(sgn)">호치민(sgn)</option>
		  	</select>
		  </td>
		</tr>
		<tr class="qnaContent">
			
			<td>
				<label>문의내용 *</label>
				<textarea rows="5" cols="50" name="content"></textarea>
			</td>
		</tr>
		<tr class="content-panel d1">
			<td rowspan="3">첨부파일</td>
			<td>
		  		<input type="file" name="file1">
			</td>
		</tr>
		<tr class="content-panel d1">
			<td>
		  		<input type="file" name="file1">
			</td>
		</tr>
		<tr class="content-panel d1">
			<td>
		  		<input type="file" name="file1">
			</td>
		</tr>
		<tr class="content-panel d3">
		  <td rowspan="3">첨부파일</td>
			<td>
		  		<input type="file" name="file1">
			</td>
		</tr>
		<tr class="content-panel d3">
			<td>
		  		<input type="file" name="file1">
			</td>
		</tr>
		<tr class="content-panel d3">
			<td>
		  		<input type="file" name="file1">
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="문의하기">
			</td>
		</tr>
	</table>
	</div>
</form>
</body>
</html>