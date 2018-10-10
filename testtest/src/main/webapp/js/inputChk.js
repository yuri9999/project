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
	// seat2 정보 가져오기
	var name1 = $("#name2").html();
	var name2 = $("#name2").html();
	var seatPrice1 = $("#seatPrice1").val();
	if(seatPrice1==""){seatPrice1=0;}
	var seatPrice2 = $("#seatPrice2").val();
	if(seatPrice2==""){seatPrice2=0;}
	var seatPrice = eval(seatPrice1) + eval(seatPrice2);
	var seatName1 = $("#seatName1").attr("value");
	var seatName2 = $("#seatName2").attr("value");
	
	
	// 부모창으로 정보 전달
	if(seatName1!=""){
		opener.document.getElementById('name1_1').innerHTML = name1;				// 이름1
		opener.document.getElementById('seatName1').innerHTML = seatName1;		 	// 구간 1 좌석
		opener.document.getElementById('seatNum1_1').value = seatName1;				// 구간 1 좌석값
	} else if(seatName1==""){
		opener.document.getElementById('name1_1').innerHTML = "좌석을 선택하실 수 있습니다.";		// 이름1
		opener.document.getElementById('seatName1').innerHTML = null;		 	// 구간 1 좌석
		opener.document.getElementById('seatNum1_1').value = null;				// 구간 1 좌석값
	}
	
	if(seatName2!=null){
		opener.document.getElementById('name1_2').innerHTML = name2;				// 이름2
		opener.document.getElementById('seatName2').innerHTML = seatName2; 			// 구간 2 좌석
		opener.document.getElementById('seatNum1_2').value = seatName2;				// 구간 2 좌석값
	} else if(seatName2==null){
		opener.document.getElementById('name1_2').innerHTML = "좌석을 선택하실 수 있습니다.";		// 이름2
		opener.document.getElementById('seatName2').innerHTML = null; 			// 구간 2 좌석
		opener.document.getElementById('seatNum1_2').value = null;				// 구간 2 좌석값
	}
	
	opener.document.getElementById('seatPrice').innerHTML = seatPrice; 			// 좌석 요금
	opener.document.getElementById('seatPrice1_1').value = seatPrice1;			// 좌석1 요금값
	opener.document.getElementById('seatPrice1_2').value = seatPrice2;			// 좌석2 요금값
	opener.document.getElementById('showSeat1').innerHTML = seatPrice1;			// 좌석1 요금
	opener.document.getElementById('showSeat2').innerHTML = seatPrice2;			// 좌석1 요금
	opener.calcTot();
	
	window.close();

}


//항공권 검색 버튼 이벤트
var addPrice=0;  
var addFuelPrice =0; //가는편 유류할증료
var addAirportPrice=0; //가는편 공항시설사용료
var addTotal =0; //가는편 정규운임요금 

var addPrice2=0;  
var addFuelPrice2 =0; //가는편 유류할증료
var addAirportPrice2=0; //가는편 공항시설사용료
var addTotal2 =0; //가는편 정규운임요금 

var goToComeCheck ;

var test; //flightName+'/'+goToComeCheck; Go부분 합치기
function inputChk(){
	
		var depName = $("#hdep").val();
		var arrName = $("#harr").val();
		var dayGo = $("#datepicker").val();
		var dayCome = $("#datepicker2").val();
		var adult = $("#adult").val();
		var kid = $("#kid").val();
		var baby = $("#baby").val();
		alert(dayGo +", "+ dayCome +", "+adult+", "+kid+", "+baby);
		$("#content1").css("display", "block");
		
		
		
		$.ajax({
			
			url:"/book/step1.do",
			cache : false,
			async: false,
			data:{depName: depName,
				arrName: arrName,
				dayGo: dayGo,
				dayCome: dayCome,
				adult: adult,
				kid:kid,
				baby:baby
				
			},
			dataType:"json",
			success: function(data) {
			  var results = data.list;
			  var results2 = data.list2;
			  
			  /*results.forEach(function(currentValue){
				  console.log(currentValue);
				  });*/
			  
			  var strong ='구간1: '+ data.depName+" - "+data.arrName;
			  $("#strong").html(strong); 
			  
			  var strong2 ='구간2: '+ data.arrName+" - "+data.depName;
			  $("#strong2").html(strong2); 
			  
			  
			  if (results != '') {
				 
				  var arr1 = dayGo.split('-');
				  var week = new Array('일','월','화','수','목','금','토');
				  var d = new Date(arr1[0], arr1[1], arr1[2]);
				  var month = d.getMonth() -1;//원래날짜
					  d.setMonth(month);
					  
					  var  partTabStr='';
					  
					  for(var i=1;i<=7;i++){
						  var monthStr = d.getMonth() +1; // 0부터 시작해서 11 
						
						  if (i==1) {
							  partTabStr += '  <input id="part_tab'+i+'" type="radio" name="tabs" value="'+d.getFullYear()+'-'+monthStr+'-'+d.getDate()+'" checked> '
							  +'<label for="part_tab'+i+'" class="part_label">'+monthStr+'-'+d.getDate()+'('+week[d.getDay()]+')'+'</label> '
						}else{
							partTabStr += '  <input id="part_tab'+i+'" type="radio" name="tabs" value="'+d.getFullYear()+'-'+monthStr+'-'+d.getDate()+'">'
							+'<label for="part_tab'+i+'" class="part_label">'+monthStr+'-'+d.getDate()+'('+week[d.getDay()]+')'+'</label> '
							
						}
						  
						  d.setDate(d.getDate()+1);
					  }
					  $("#boardTab").html(partTabStr); 
					
					 
					  $("#part_content1").css("display", "block");
				  
				  var str  = '<TR>';
				  $.each(results , function(i){
					  str += '<TD>' + results[i].flightName1 + '</TD><TD>' + results[i].depTime1 + '</TD><TD>' 
					  + results[i].arrTime1 + '</TD><TD>'+'<input type="checkbox" id="pay" name="pay" value="'+results[i].flightName1+'" >' + results[i].depPrice1 + '</TD>';
					  str += '</TR>';
				  });
				  $("#boardListTr").html(str); 
				  
				 
				  
			  }
			  
			  if (results2 != '') {
					 
				  var arrz = dayCome.split('-');
			 		var weekz = new Array('일','월','화','수','목','금','토');
					  var dz = new Date(arrz[0], arrz[1], arrz[2]);
					  var monthz = dz.getMonth() -1;//원래날짜
					  dz.setMonth(monthz);
					  
					  var  partTabStrz='';
					  
					  for(var i=1;i<=7;i++){
						  var monthStrz = dz.getMonth() +1; // 0부터 시작해서 11 
						
						  if (i==1) {
							  partTabStrz += ' <input id="part_tab_come'+i+'" type="radio" name="tabs2" value="'+dz.getFullYear()+'-'+monthStrz+'-'+dz.getDate()+'" checked> '
							  +'<label for="part_tab_come'+i+'" class="part_label_come">'+monthStrz+'-'+dz.getDate()+'('+weekz[dz.getDay()]+')'+'</label> '
						}else{
							partTabStrz += ' <input id="part_tab_come'+i+'" type="radio" name="tabs2" value="'+dz.getFullYear()+'-'+monthStrz+'-'+dz.getDate()+'">'
							+'<label for="part_tab_come'+i+'" class="part_label_come">'+monthStrz+'-'+dz.getDate()+'('+weekz[dz.getDay()]+')'+'</label> '
							
						}
						  
						  dz.setDate(dz.getDate()+1);
					  }
					  $("#boardTab2").html(partTabStrz); 
					
					 
					  $("#part_content2").css("display", "block");
				  
				  var str  = '<TR>';
				  $.each(results2 , function(i){
					  str += '<TD>' + results2[i].flightName1 + '</TD><TD>' + results2[i].depTime1 + '</TD><TD>'
					  + results2[i].arrTime1 + '</TD><TD>'+'<input type="checkbox" id="pay2" name="pay2" value="'+results2[i].flightName1+'">' + results2[i].depPrice1 + '</TD>';
					  str += '</TR>';
				  });
				  $("#boardListTr2").html(str); 
				  
			  }
				  
			  
			  $(".part_container").show();
			 
			  $('input:checkbox[name="pay"]').click(function(){
			  
			  
			  	var str  = '<span id="showTrip1">';
				
				var rowData = new Array();
				var tdArr = new Array();
				var checkbox = $("input[name=pay]:checked");
				var str  = '<span id="showTrip1">';
	            
				if($('input:checkbox[name="pay"]').is(":checked") == true){ 
	            	checkbox.each(function(i) {
	            
	            	var tr = checkbox.parent().parent().eq(i);
	                var td = tr.children();
	                // 체크된 row의 모든 값을 배열에 담는다.
	                rowData.push(tr.text());
	                
	                var flightName = td.eq(0).text();
	                var depTime = td.eq(1).text();
	                var arrTime = td.eq(2).text();
	                var price = td.eq(3).text();

	                // 가져온 값을 배열에 담는다.
	                tdArr.push(flightName);
	                tdArr.push(depTime);
	                tdArr.push(arrTime);
	                tdArr.push(price);
	            	
	                
	                console.log("flightName : " + flightName);
	                console.log("depTime : " + depTime);
	                console.log("arrTime : " + arrTime);
	                console.log("price : " + price);
	                 
	                goToComeCheck = "go";
	                test =flightName+'/'+goToComeCheck;
	               /* getPassengerCharge(flightName,goToComeCheck);*/
	                 
	    			str +=depName + '~'+ arrName+'<br>';
	                	
	                	var arr1 = dayGo.split('-');
	 		 		var week = new Array('일','월','화','수','목','금','토');
	 				  var d = new Date(arr1[0], arr1[1], arr1[2]);
	 				  var month = d.getMonth() -1;//원래날짜
	 				  d.setMonth(month);
	 				 var monthStr = d.getMonth() +1; // 0부터 시작해서 11 
	 				 
	 				 var dayGoToDate = d.getFullYear()+'-'+monthStr+'-'+d.getDate()+'('+week[d.getDay()]+')'+depTime + '~'+ arrTime;
	 				 $("#dayGoAndDateGo1").val(dayGoToDate);
	 				
	 				 
	 				 str += d.getFullYear()+'-'+monthStr+'-'+d.getDate()+'('+week[d.getDay()]+')'+depTime + '~'+ arrTime+ '</span>';
	 				 d.setDate(d.getDate()+1);
	 				 
  				
	 				 $("#guganDate1").html(str); 
				
	 				 
	            	}); 
			  }else{
				  str+= " "+'</span>';
				  $("#guganDate1").html(str); 
				  
				  var showPayJs = '<td class="showPayL"></td>';
				  var showTotalNum='<lable></lable>';
				   $("#showPayJs").html(showPayJs); 
				  $("#showTotalNum").html(showTotalNum); 
				  //다시체크할경우에는?
			  }
			  });
			  
			  
			  
			  //pay2
			  $('input:checkbox[name="pay2"]').click(function(){
				  
				  
				  var str  = '<span id="showTrip2">';
				  
				  var rowData = new Array();
				  var tdArr = new Array();
				  var checkbox = $("input[name=pay2]:checked");
				  var str  = '<span id="showTrip2">';
				  
				  if($('input:checkbox[name="pay2"]').is(":checked") == true){ 
					  checkbox.each(function(i) {
						  
						  
						  var tr = checkbox.parent().parent().eq(i);
						  var td = tr.children();
						  // 체크된 row의 모든 값을 배열에 담는다.
						  rowData.push(tr.text());
						  
						  var flightName = td.eq(0).text();
						  var depTime = td.eq(1).text();
						  var arrTime = td.eq(2).text();
						  var price = td.eq(3).text();
						  
						  // 가져온 값을 배열에 담는다.
						  tdArr.push(flightName);
						  tdArr.push(depTime);
						  tdArr.push(arrTime);
						  tdArr.push(price);
						  
						  
						  console.log("flightName : " + flightName);
						  console.log("depTime : " + depTime);
						  console.log("arrTime : " + arrTime);
						  console.log("price : " + price);
						 
						  	goToComeCheck = "come";
			                getPassengerCharge(flightName,goToComeCheck,test);
						  
						  str +=arrName + '~'+ depName+'<br>';
						  
						  var arr1 = dayCome.split('-');
						  var week = new Array('일','월','화','수','목','금','토');
						  var d = new Date(arr1[0], arr1[1], arr1[2]);
						  /*http://treasurebear.tistory.com/26  참조*/
						  var month = d.getMonth() -1;//원래날짜
						  d.setMonth(month);
						  var monthStr = d.getMonth() +1; // 0부터 시작해서 11 
						 
						  var dayGoToDate = d.getFullYear()+'-'+monthStr+'-'+d.getDate()+'('+week[d.getDay()]+')'+depTime + '~'+ arrTime;
						  $("#dayGoAndDateCome2").val(dayGoToDate);
						  
						  str += d.getFullYear()+'-'+monthStr+'-'+d.getDate()+'('+week[d.getDay()]+')'+depTime + '~'+ arrTime+ '</span>';
						  d.setDate(d.getDate()+1);
						  
						  $("#guganDate2").html(str); 
						  
						  
					  });
				  }else{
					  str+= " "+'</span>';
					  $("#guganDate2").html(str); 
					
					  var showPayJs = '<td class="showPayL"></td>';
					  var showTotalNum='<lable></lable>';
					   $("#showPayJs").html(showPayJs); 
					  $("#showTotalNum").html(showTotalNum); 
				  }
			  });
			  
			  
			  getChecked(results,results2);
			 
			  
			 /* results.forEach(function(currentValue){
				  console.log(">>>>>>"+currentValue);
				  });*/
			  
			  
			},
			error: function(xhr, textStatus, errorThrown) {
				
				console.log(JSON.stringify(xhr.error()));
			}
		
		});
		$("#boardTab > input:radio[name=tabs]").click(function(){ 
			 getAjax(depName,arrName,this.value,dayCome,adult,kid,baby);
		 });
		
		
		
			$("#boardTab2 > input:radio[name=tabs2]").click(function(){ 
				 getAjax2(depName,arrName,this.value,dayCome,adult,kid,baby);
			});
			
}
//다른번째의 탭을 클릭할때 다시 데이터를 불러옴
function getAjax(depName,arrName,dayGo,dayCome,adult,kid,baby){
	  
	$.ajax({
		url:"/book/step1.do",
		cache : false,
		async: false,
		data:{depName: depName,
			arrName: arrName,
			dayGo: dayGo,
			dayCome: dayCome,
			adult: adult,
			kid:kid,
			baby:baby
			
		},
		dataType:"json",
		success: function(data) {
			$("#boardListTr").html(""); 
			

			
		  var results = data.list;
		  var results2 = data.list2;
		  
		  if (results != '') {
			  var str = '<TR>';
			  $.each(results , function(i){
				  str += '<TD>' + results[i].flightName1 + '</TD><TD>' + results[i].depTime1 + '</TD><TD>'
				  + results[i].arrTime1 + '</TD><TD>'+'<input type="checkbox" name="pay" >' + results[i].depPrice1 + '</TD>';
				  str += '</TR>';
			  
			  });
			  $("#boardListTr").html(str); 
			  
		
		  }
		},
		error: function(xhr, textStatus, errorThrown) {
			$("div#result").html("<div>" + textStatus 
					+ "(HTTP-" + xhr.status + " / "
					+ errorThrown + ")</div>");
			console.log(JSON.stringify(xhr.error()));
		}	
		});


	
	$('input:checkbox[name="pay"]').click(function(){
		  
		  
		  	var str  = '<span id="showTrip1">';
			
			var rowData = new Array();
			var tdArr = new Array();
			var checkbox = $("input[name=pay]:checked");
			var str  = '<span id="showTrip1">';
          
			if($('input:checkbox[name="pay"]').is(":checked") == true){ 
          	checkbox.each(function(i) {
          		
              // checkbox.parent() : checkbox의 부모는 <td>이다.
              // checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
          	//http://all-record.tistory.com/172 참고
          
          	   var tr = checkbox.parent().parent().eq(i);
              var td = tr.children();
              // 체크된 row의 모든 값을 배열에 담는다.
              rowData.push(tr.text());
              
              var flightName = td.eq(0).text();
              var depTime = td.eq(1).text();
              var arrTime = td.eq(2).text();
              var price = td.eq(3).text();

              // 가져온 값을 배열에 담는다.
              tdArr.push(flightName);
              tdArr.push(depTime);
              tdArr.push(arrTime);
              tdArr.push(price);
          	
              
              console.log("flightName : " + flightName);
              console.log("depTime : " + depTime);
              console.log("arrTime : " + arrTime);
              console.log("price : " + price);
              str +=depName + '~'+ arrName+'<br>';
          	
              goToComeCheck = "go";
              test =flightName+'/'+goToComeCheck;
              /*getPassengerCharge(flightName,goToComeCheck);*/
              
          	var arr1 = dayGo.split('-');
	 		var week = new Array('일','월','화','수','목','금','토');
			  var d = new Date(arr1[0], arr1[1], arr1[2]);
			  /*http://treasurebear.tistory.com/26  참조*/
			  var month = d.getMonth() -1;//원래날짜
			  d.setMonth(month);
			 var monthStr = d.getMonth() +1; // 0부터 시작해서 11 

			 var dayGoToDate = d.getFullYear()+'-'+monthStr+'-'+d.getDate()+'('+week[d.getDay()]+')'+depTime + '~'+ arrTime;
			 $("#dayGoAndDateGo2").val(dayGoToDate);
			 
			 str += d.getFullYear()+'-'+monthStr+'-'+d.getDate()+'('+week[d.getDay()]+')'+depTime + '~'+ arrTime+ '</span>';
			 d.setDate(d.getDate()+1);
		
			 $("#guganDate1").html(str); 
      	}); 
	  }else{
		  str+= " "+'</span>';
		  $("#guganDate1").html(str); 
		  
		  var showPayJs = '<td class="showPayL"></td>';
		  var showTotalNum='<lable></lable>';
		   $("#showPayJs").html(showPayJs); 
		  $("#showTotalNum").html(showTotalNum); 
	  	}
	});
}
function getAjax2(depName,arrName,dayGo,dayCome,adult,kid,baby){
	
		dayCome = dayGo
	
	$.ajax({
		url:"/book/step1.do",
		cache : false,
		async: false,
		data:{depName: depName,
			arrName: arrName,
			dayGo: dayGo,
			dayCome: dayCome,
			adult: adult,
			kid:kid,
			baby:baby
		},
		dataType:"json",
		success: function(data) {
			
			$("#boardListTr2").html(""); 
			
			var results = data.list;
			var results2 = data.list2;
				var str = '<TR>';
				$.each(results2 , function(i){
					str += '<TD>' + results2[i].flightName1 + '</TD><TD>' + results2[i].depTime1 + '</TD><TD>'
					+ results2[i].arrTime1 + '</TD><TD>'+'<input type="checkbox" name="pay2" >' + results2[i].depPrice1 + '</TD>';
					str += '</TR>';
				});
				$("#boardListTr2").html(str); 
		},
		error: function(xhr, textStatus, errorThrown) {
			$("div#result").html("<div>" + textStatus 
					+ "(HTTP-" + xhr.status + " / "
					+ errorThrown + ")</div>");
			console.log(JSON.stringify(xhr.error()));
		}

	});	
		
		  $('input:checkbox[name="pay2"]').click(function(){
			  
			  var str  = '<span id="showTrip1">';
			  
			  var rowData = new Array();
			  var tdArr = new Array();
			  var checkbox = $("input[name=pay2]:checked");
			  var str  = '<span id="showTrip2">';
			  
			  if($('input:checkbox[name="pay2"]').is(":checked") == true){ 
				  checkbox.each(function(i) {
					  
					  var tr = checkbox.parent().parent().eq(i);
					  var td = tr.children();
					  // 체크된 row의 모든 값을 배열에 담는다.
					  rowData.push(tr.text());
					  
					  var flightName = td.eq(0).text();
					  var depTime = td.eq(1).text();
					  var arrTime = td.eq(2).text();
					  var price = td.eq(3).text();
					  
					  // 가져온 값을 배열에 담는다.
					  tdArr.push(flightName);
					  tdArr.push(depTime);
					  tdArr.push(arrTime);
					  tdArr.push(price);
					  
					  
					  console.log("flightName : " + flightName);
					  console.log("depTime : " + depTime);
					  console.log("arrTime : " + arrTime);
					  console.log("price : " + price);
					  
					  goToComeCheck = "come";
		              getPassengerCharge(flightName,goToComeCheck,test);
					  
					  
					  var arr1 = dayCome.split('-');
					  var week = new Array('일','월','화','수','목','금','토');
					  var d = new Date(arr1[0], arr1[1], arr1[2]);
					  /*http://treasurebear.tistory.com/26  참조*/
					  var month = d.getMonth() -1;//원래날짜
					  d.setMonth(month);
					  var monthStr = d.getMonth() +1; // 0부터 시작해서 11 
					  /* console.log("d"+monthStr+'-'+d.getDate()+'('+week[d.getDay()]+')');*/

					  var dayGoToDate = d.getFullYear()+'-'+monthStr+'-'+d.getDate()+'('+week[d.getDay()]+')'+depTime + '~'+ arrTime;
					  $("#dayGoAndDateCome2").val(dayGoToDate);
					  
					  str +=arrName + '~'+ depName+'<br>';
					  str += d.getFullYear()+'-'+monthStr+'-'+d.getDate()+'('+week[d.getDay()]+')'+depTime + '~'+ arrTime+ '</span>';
					  d.setDate(d.getDate()+1);
					  
					  $("#guganDate2").html(str); 
					  
					  
				  });
			  }else{
				  str+= " "+'</span>';
				  $("#guganDate2").html(str); 
				  
				  var showPayJs = '<td class="showPayL"></td>';
				  var showTotalNum='<lable></lable>';
				   $("#showPayJs").html(showPayJs); 
				  $("#showTotalNum").html(showTotalNum); 
				  
		 }
	});
}



//출발지 도착지 탭.
$(function(){
	// 출발지
	$("#dep").click(function(){
		if($("#selectArr").css("visibility") != "hidden"){//도착지가 숨겨져있다면
			$("#selectArr").css("visibility", "hidden");
			$("#selectArr").css("display", "none");
			$(".container").css("border", "none");
			$("#selectDep").css("display", "block");
		} else if($("#selectArr").css("display") == "block"){//도착지가 열려있다면
			$("#selectArr").css("display", "none");
			$("#selectDep").css("display", "block");
		}
		$("#selectDep").css("visibility", "visible");
		$(".container").css("border", "2px solid #464047");
		$("#selectDep").css("display", "block");
	});//유리 수정
	
	/*닫기 그림 클릭시 팝업창 닫기 함수*/
	$("#close1").click(function(){
		$("#selectDep").css("visibility", "hidden");
		$(".container").css("border", "none");
		$("#selectDep").css("display", "none");//유리추가
	});
	
	// 도착지
	$("#arr").click(function(){http://localhost:8888/main/main.jsp
		if($("#selectDep").css("visibility") != "hidden"){
			setTimeout(function(){
				$("#selectDep").hide();
			},3000);
			$("#selectDep").css("visibility", "hidden");
			$("#selectDep").css("display", "none");
			$(".container").css("border", "none");
		} else if($("#selectDep").css("display") == "block"){
			$("#selectDep").css("display", "none");
		}
		$("#selectArr").css("visibility", "visible");
		$("#selectArr").css("display", "block");
		$(".container").css("border", "2px solid #464047");
	});
	$("#close2").click(function(){
		$("#selectArr").css("visibility", "hidden");
		$(".container").css("border", "none");
		$("#selectArr").css("display", "none");//유리추가
	});
});


// 출발지 도착지 입력
$(function(){

	//출발지 클릭시 동작
	$("#selectDep .navAirports .column li").click(function(){
		var depName = $(this).attr("value");
		$("input[name='dep']").val(depName);
		$("#hdep").val(depName);
		$("#arr").click();
		//버튼에 선택 value 추가, hidden으로 값 넘김, 도착지 팝업 열기
		
		$("#selectArr .navAirports .column li").click(function(){
			var arrName = $(this).attr("value");
			$("input[name='arr']").val(arrName);
			$("#harr").val(arrName);
			$("#close2").click();
				
		});	
	});	
});


//편명 stepForm2에 보내기
function getChecked(results,results2){
	
	$.each(results , function(i){
	 var pay= $('input:checkbox[name="pay"]').val();
	 $("#hiddenGetChecked").val(pay);
	});
	
	$.each(results2 , function(i){
		var pay2= $('input:checkbox[name="pay2"]').val();
		$("#hiddenGetChecked2").val(pay2);
	});
	
}

//구간1,구간2 체크박스 중복 선택 
//http://luckys.tistory.com/37  이걸로 다시 수정하기 
function onlyOne(){
	
		
	/*$('input:checkbox[name="pay"]').click(function(){
		if( $('input:checkbox[name="pay"]:checked').size()>1){//$(this).prop('checked') &&
			alert("중복체크 진입111");
			$(this).prop('checked',false);
			alert("두개 이상 선택할 수 없습니다.");
		}	
	});
	
	$('input:checkbox[name="pay2"]').click(function(){
		
		
			if( $('input:checkbox[name=pay2]:checked').size()>1){
				alert("중복체크 진입222");
			$(this).prop('checked',false);
			alert("두개 이상 선택할 수 없습니다.");
		}	
	});
	*/

}


function getPassengerCharge(flightName,goToComeCheck,test){
	
	$.ajax({
		url:"/book/getPrice.do",
		cache : false,
		async: false,
		data:{
			flightName : flightName,
			goToComeCheck: goToComeCheck,
			test: test
		},
		dataType:"json",
		success: function(data) {
			
			var list = data.list;
			var list2 = data.list2;
			
			
				 addPrice =list.depPrice1;  
				 addFuelPrice = list.depFuelPrice1; //가는편 유류할증료
				 addAirportPrice = list.depAirportPrice1; //가는편 공항시설사용료
				 addTotal = list.depPrice1+list.depFuelPrice1+list.depAirportPrice1; //가는편 정규운임요금 
			
				 console.log(addPrice);
				 console.log(addFuelPrice);
				 console.log(addAirportPrice);
				 console.log(addTotal);
				 
				
				 addPrice2 =list2.depPrice1;  
				 addFuelPrice2 = list2.depFuelPrice1; //가는편 유류할증료
				 addAirportPrice2 = list2.depAirportPrice1; //가는편 공항시설사용료
				 addTotal2 = list2.depPrice1+list2.depFuelPrice1+list2.depAirportPrice1; //가는편 정규운임요금 
				 
				 console.log("22>>>"+addPrice2);
				 console.log("22>>>"+addFuelPrice2);
				 console.log("22>>>"+addAirportPrice2);
				 console.log("22>>>"+addTotal2);
				
				 var AllPrice =  addPrice+addPrice2;
				 var AllFuelPrice = addFuelPrice+addFuelPrice2;
				 var AllAirportPrice =addAirportPrice +addAirportPrice2;
				 var AllTotal = addTotal + addTotal2;
			
			
			var showPayJs = '<td class="showPayL">';
			var showTotalNum='<lable>';
			 if($('input:checkbox[name="pay2"]').is(":checked") == true){ 
				 
				 
				 showPayJs += '<li>ㆍ항공운임</li><li>ㆍ유류할증료</li><li>ㆍ공항시설사용</li><li>'
				 +'</td><td class="showPayR"><span>'+AllPrice+'</span>KRW<br><span>'
				 +AllFuelPrice+'</span>KRW<br><span>'+AllAirportPrice+'</span>KRW<br></td>';
				
				 showTotalNum += AllTotal+'</lable>';
			 }

			 $("#showPayJs").html(showPayJs); 
			 $("#showTotalNum").html(showTotalNum); 
			 
		  
		},
		error: function(xhr, textStatus, errorThrown) {
			console.log(JSON.stringify(xhr.error()));
		}	
	});
}











