<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>회원가입</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<style type="text/css">
#memberWriteForm .table {
    margin-bottom: 0;
  }
 #memberWriteForm .container {
    max-width: none !important;
    width: 970px;
  }
 #memberWriteForm .color_text {
    color: #4B1152;
    font-weight: bold;
  }
  /** a태그 초기화 **/
 #memberWriteForm a, a:hover, a:visited, a:active {
    text-decoration: none;
  }
  /** a태그 초기화 **/
  /* LAYOUT **/
  /* INFO **/
 #memberWriteForm .userInfo {
    float: right;
    height: 100%;
  }
  .userInfo p {
    float: left;
    margin: 0;
    height: 24px;
    line-height: 1.7em;
  }
  
 #memberWriteForm .tab {
    float: left;
    height: 100%;
    margin: 0;
    margin-left: 10px;
    border: 1px solid #4B1152;
  }
 #memberWriteForm .grade {
    background: #4B1152;
    color: white;
  }
 #memberWriteForm .usedPoint, .modify {
    color: #4B1152;
  }
 #memberWriteForm .grade, .usedPoint, .modify {
    float: left;
    padding: 0px 20px;
    border-right: 1px solid black;
  }
 #memberWriteForm .modify {
    border-right: none;
  }
  /* INFO **/
 #memberWriteForm .star {
    color: #4B1152;
    font-weight: bold;
    font-size: 20px;
  }
  /* MODIFY **/
 #memberWriteForm .writeTop {
    margin-writeTop: 30px;
  }
  
 #memberWriteForm .writeTop .title1 {
    float: left;
    font-size: 1.5em;
    font-weight: bold;
  }
 #memberWriteForm .title1 img {
    margin-right: 20px;
    padding-bottom: 5px;
    width: 60px;
    height: 60px;
  }
  .writeTop p {
    float: right;
  }
 #memberWriteForm .memberWriteTable {
    width: 938px;
    margin: 0 auto;
    border-left: none;
    border-right: none;
  }
 #memberWriteForm .mt_left {
    width: 20%;
    padding: 10px 20px;
    background: #f0f0f0;
  }
 #memberWriteForm .mt_right {
    width: 80%;
    padding: 10px 20px;
  }
 #memberWriteForm .mt_right p, .mt_right span{
    font-size: 14px;
    margin-bottom: 8px;
  }
  /* MODIFY **/
  /* INPUT **/
 #memberWriteForm input[type='button'] {
    background: #4B1152;
    color: white;
    width: auto;
    padding: 5px 20px;
    border-radius: 5px;
    border: none;
  }
 #memberWriteForm .mt_right input[type="text"], select {
    padding: 5px;
  }
 #memberWriteForm .engFirstName {
    width: 130px;
  }
 #memberWriteForm .engLastName {
    width: 150px;
  }
 #memberWriteForm .gender {
    width: 100px;
  }
 #memberWriteForm .foot {
    text-align: center;
    padding: 15px 0;
  }
 #memberWriteForm .foot input {
    background: #4B1152;
    color: white;
    width: auto;
    padding: 10px 30px;
    border-radius: 5px;
  }
  /* INPUT **/
</style>
<script type="text/javascript">
function checkId() {
	var sId = document.WriteForm.id.value;
	if(sId == "") {
		alert("먼저 아이디를 입력하세요.");
		document.WriteForm.id.focus();
	} else {
		window.open("../member/checkId.do?id=" + sId, "", "width=350 height=100 left=500 top=200");
	}
}
</script>
<body>
<div id="memberWriteForm">
  <div class="container">
    <p class="text-left">JEJUAIR > 회원가입</p>
    <h2 class="text-left">회원가입</h2>
    <div class="writeTop">
      <p class="title1">
        <img src="../img/logo.png">정보 입력
      </p>
      <p>
        <span class="star">*</span> 항목은 필수입력 사항입니다.
      </p>
    </div>
    <form class="" action="memberWrite.do" method="post" name="WriteForm">
      <table class="memberWriteTable" border="1">
        <tr>
          <td class="mt_left">아이디<span class="star"> *</span></td>
          <td class="mt_right">
            <input type="text" placeholder="아이디 입력" name="id" required="required">
            <input type="button" value="중복체크" onclick="checkId()">
          </td>
        </tr>
        <tr>
          <td class="mt_left">비밀번호<span class="star"> *</span></td>
          <td class="mt_right">
           	<input type="password" name="pwd" required="required">
          </td>
        </tr>
        <tr>
          <td class="mt_left">비밀번호 재확인<span class="star"> *</span></td>
          <td class="mt_right">
           	<input type="password" name="repwd" required="required">
          </td>
        </tr>
        <tr>
          <td class="mt_left">한글성명<span class="star"> *</span></td>
          <td class="mt_right">
            <input type="text" name="koreanName" placeholder="한글 이름" required="required">
          </td>
        </tr>
        <tr>
          <td rowspan="2" class="mt_left">영문성명<span class="star"> *</span></td>
          <td class="mt_right">
            <input type="text" name="englishName" placeholder="영문 이름" required="required">
          </td>
        </tr>
        <td class="mt_right">
          <p>회원가입시 영문명은 <span class="color_text">여권 상의 성과 이름</span>을 구분하여 기재하여 주시기 바랍니다.</p>
          <p>회원가입후 <span class="color_text">정보변경</span>을 위해서는 해당 <span class="color_text">증빙서류(주민등록등본, 여권사본)를 제출</span>해 주셔야 하며,
             <span class="color_text">담당 직원(1599-1500 / 08시~19시)</span>을 통해 확인 후 수정 가능합니다. 또한 홈페이지 및 모바일 앱 1:1문의로도 증빙서류 첨부 후 신청 가능합니다.</p>
          <p>- 회원님의 개인정보보호를 위하여 증빙서류에 주민등록번호가 포함되어 있는 경우, 반드시 주민등록번호 뒷자리는 보이지 않도록 가려서 (마스킹 처리) 제출하여 주시기 바랍니다.</p>
        </td>
        <tr>
          <td class="mt_left">실제 생년월일<span class="star"> *</span></td>
          <td class="mt_right">
            <input type="text" name="birthday" placeholder="생년월일 8자리" required="required">
          </td>
        </tr>
        <tr>
			<td class="mt_left">성별</td>
			<td class="mt_right">
				<input type="radio" name="gender" value="0" checked>남
				<input type="radio" name="gender" value="1">여
			</td>
		</tr>
        <tr>
          <td class="mt_left">여권번호</td>
          <td class="mt_right">
            <input type="text" name="passportNum" placeholder="여권번호" required="required">   
            <input type="button" value="내용보기">
          </td>
        </tr>
        <tr>
          <td class="mt_left">국적(여권)<span class="star"> *</span></td>
          <td class="mt_right">
            <input type="text" name="nation" placeholder="국적" required="required">
            <span>외국인 회원인 경우 <span class="color_text">국가</span>를 입력해 주세요.</span>
          </td>
        </tr>
        <tr>
          <td class="mt_left">거주국가<span class="star"> *</span></td>
          <td class="mt_right">
            <input type="text" name="country" placeholder="거주 국가" required="required">
            <span>외국인 회원인 경우 <span class="color_text">거주국가</span>를 입력해 주세요.</span>
          </td>
        </tr>
        <tr>
          <td class="mt_left">e-mail 주소<span class="star"> *</span></td>
          <td class="mt_right">
           <input type="text" name="email1" required="required"> @
            <select name="email2">
				<option value="naver.com">naver.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="gmail.com">gmail.com</option>
			</select>
            <p>이메일 주소를 등록하시면 회원번호, 예약정보 및 쿠폰 등을 받아보실 수 있습니다.</p>
          </td>
        </tr>
        <tr>
          <td class="mt_left">전화번호<span class="star"> *</span></td>
          <td class="mt_right">
            <select name="tel1" style="width: 70px;">
				<option value="82">82대한민국</option>
				<option value="81">81일본</option>
				<option value="86">86중국</option>
				<option value="852">852홍콩</option>
				<option value="84">84베트남</option>
				<option value="66">66태국</option>
				<option value="886">886대만</option>
				<option value="60">60말레이시아</option>
				<option value="65">65싱가포르</option>
			</select>
            <select name="tel2" style="width: 70px;">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="019">019</option>
			</select> - <input type="text" name="tel3" required="required"> - <input type="text" name="tel4" required="required">
          </td>
        </tr>
      </table>
     	<div class="foot">
    		<input type="submit" value="회원가입">
			<input type="reset" value="다시 작성">
    	</div>
    </form>
  </div>
</div>
</body>

</html>