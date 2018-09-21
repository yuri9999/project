function checkWrite() {
	if(document.WriteForm.id.value == "") {
		alert("아이디를 입력하세요.");
		document.WriteForm.id.focus();
	} else if(document.WriteForm.pwd.value == "") {
		alert("비밀번호를 입력하세요.");
		document.WriteForm.pwd.focus();
	} else if(document.WriteForm.pwd.value != document.writeForm.repwd.value) {
		alert("비밀번호가 맞지 않습니다.")
	} else if(document.WriteForm.koreanName.value == "") {
		alert("한글성명을 입력하세요.");
		document.WriteForm.koreanName.focus();
	}else if(document.WriteForm.englishName.value == "") {
		alert("영문성명을 입력하세요.");
		document.WriteForm.englishName.focus();
	}else if(document.WriteForm.birthday.value == "") {
		alert("생년월일을 입력하세요.");
		document.WriteForm.birthday.focus();
	}else if(document.WriteForm.passportNum.value == "") {
		alert("여권번호를 입력하세요.");
		document.WriteForm.passportNum.focus();
	}else if(document.WriteForm.nation.value == "") {
		alert("국적을 입력하세요.");
		document.WriteForm.nation.focus();
	}else if(document.WriteForm.country.value == "") {
		alert("거주 국가를 입력하세요.");
		document.WriteForm.country.focus();
	}else if(document.WriteForm.email1.value == "") {
		alert("email주소를 입력하세요.");
		document.WriteForm.email1.focus();
	}else if(document.WriteForm.pwd.value == "") {
		alert("전화번소 입력하세요.");
		document.WriteForm.pwd.focus();
	}else if(document.WriteForm.tel3.value == "") {
		alert("전화번호 앞자리를 입력하세요.");
		document.WriteForm.tel3.focus();
	}else if(document.WriteForm.tel3.value == "") {
		alert("전화번호 뒷자리 입력하세요.");
		document.WriteForm.tel4.focus();
	} else {
		document.WriteForm.submit();
	}
}

function checkModify() {
	if(document.modifyForm.name.value == "") {
		alert("이름을 입력하세요.");
		document.modifyForm.name.focus();
	} else if(document.modifyForm.id.value == "") {
		alert("아이디를 입력하세요.");
		document.modifyForm.id.focus();
	} else if(document.modifyForm.pwd.value == "") {
		alert("비밀번호를 입력하세요.");
		document.modifyForm.pwd.focus();
	} else if(document.modifyForm.pwd.value != document.modifyForm.repwd.value) {
		alert("비밀번호가 맞지 않습니다.")
	} else {
		document.modifyForm.submit();
	}
}

function checkLogin() {
	if(document.loginForm.id.value == "") {
		alert("아이디를 입력하세요.");
		document.loginForm.id.focus();
	} else if(document.loginForm.pwd.value == "") {
		alert("비밀번호를 입력하세요.");
		document.loginForm.pwd.focus();
	} else {
		document.loginForm.submit();
	}
}

function checkId() {
	var sId = document.WriteForm.id.value;
	if(sId == "") {
		alert("먼저 아이디를 입력하세요.");
		document.WriteForm.id.focus();
	} else {
		window.open("../member/checkId.do?id=" + sId, "", "width=350 height=100 left=500 top=200");
	}
}

















