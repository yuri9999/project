function select2(){
	var seatPrice1 = $("#seatPrice1").val();
	System.out.print(seatPrice1);
	document.selectSeat.submit();
}

function chkEmer(){
//	if(!confirm("비상구 좌석에 대한 안내"+"<br>"+"국토교통부 고시에 의거 비상구 좌석에 착석한 승객들이 비상시에 비상구 개방, 승무원의 지시에 따라 임무 수행 등 승무원을 돕도록 되어 있어 아래에 규정된 승객에게는 비상구 좌석 배정을 제한하고 있습니다." +
//			"<br>"+"1. 활동성, 체력 또는 양팔이나 두 손 및 양다리의 민첩성이 승무원의 지시를 수행하기에 충분치 않은 승객" +
//			"<br>"+"2. 만 15세 미만이거나 동반자의 도움 없이 승무원의 지시를 수행하기에 불충분한 승객" +
//			"<br>"+"3. 글 또는 그림으로 제공된 비상탈출에 관한 지시를 읽고 이해하지 못하거나 승무원의 구두지시를 이해하지 못하는 승객" +
//			"<br>"+"4. 콘텍트 렌즈나 안경을 제외한 다른 시력보조장비 없이는 승무원의 지시를 수행할 수 없는 승객" +
//			"<br>"+"5. 일반적인 보청기를 제외한 다른 청력보조장비 없이는 승무원의 탈출지시를 듣고 이해 할 수 없는 승객" +
//			"<br>"+"6. 다른 승객들에게 정보를 적절하게 전달할 수 있는 능력이 부족한 승객" +
//			"<br>"+"7. 승객의 상태나 책임(유소아 동반 승객, 임산부 승객, 노약자 등)이 비상시 승무원의 지시를 수행하는데 방해가 되거나 수행할 경우 해를 입게 되는 승객" +
//			"<br>"+"상기 규정된 승객에게는 비상구 좌석 배정을 제한 하고 있사오니, 제한 사항 확인 후 구매를 부탁드립니다." +
//			"<br>"+"비상구 좌석 구매 후 출발지 공항에서 비상구 착석 불가능한 승객이라고 판단될 경우 현장에서 임의로 취소될 수 있으며, 비상구 구매 승객에 한하여 웹 체크인 및 모바일 체크인이 불가능 합니다.")){
//		return false;
//	}
	var name2 = $("#name2").html();
	var seatPrice1 = $("#seatPrice1").val();
	var seatPrice2 = $("#seatPrice2").val();
	var seatPrice = eval(seatPrice1) + eval(seatPrice2);
	var seatName1 = $("#seatName1").attr("value");
	var seatName2 = $("#seatName2").attr("value");
	opener.document.getElementById('name1_1').innerHTML = name2;					// 이름
	opener.document.getElementById('seatName1').innerHTML = seatName1;		 	// 구간 1 좌석
	opener.document.getElementById('seatName2').innerHTML = seatName2; 			// 구간 2 좌석
	opener.document.getElementById('seatPrice').innerHTML = seatPrice; 			// 좌석 요금
	window.close();
}