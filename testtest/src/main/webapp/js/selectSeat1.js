/* 내부테이블 css 강제입력 */
	$(function(){		
		$(".empty").css("background", "lightgray");
		$("#seatInfo1").css("margin", "0 auto");
		
		$(".oneline td").css("width", "40px").css("background-size", "34px");
		$(".oneline td").css("height","35px").css("color","white");
		
		$(".seatNum0").css("background-image", "url('../img/seat/seat_yellow.gif')").css("background-repeat", "no-repeat");
		$(".seatNum0").css("margin", "10px");
		$(".seatNum1").css("background-image", "url('../img/seat/seat_blueA.gif')").css("background-repeat", "no-repeat");
		$(".seatNum1").css("margin", "10px");
		$(".seatNum2").css("background-image", "url('../img/seat/seat_blueB.gif')").css("background-repeat", "no-repeat");
		$(".seatNum2").css("margin", "10px");
		$(".seatNum3").css("background-image", "url('../img/seat/seat_blueC.gif')").css("background-repeat", "no-repeat");
		$(".seatNum3").css("margin", "10px");
		
		$(".middle").css("width", "130px").css("color","black");
		$(".emer").css("font-size","13px");
		$(".noNum").css("width", "45px");
		$(".noNum").css("height","40px");
		
		$(".popUp").hide();
	});
	/* reset function */

	/* 좌석선택 마우스 이벤트 */
	$(function(){
		// 커서 변환
		$(".oneline td").mouseover(function(){
			$(this).css("cursor", "pointer");
		}), $(".oneline td").mouseout(function(){
			$(this).css("cursor", "none");
		});
		
		$(".seatAlert").mouseover(function(){
			$(this).css("cursor", "pointer");
		}), $(".seatAlert").mouseout(function(){
			$(this).css("cursor", "none");
		});
		// 클릭 이벤트
		$(".seatNum1").click(function(){
			$(this).css("background-image", "url('../img/seat/seat_orangeA.gif')");
			$("#showSeatPrice1").html("5000");
			var seatPrice1 = $("#showSeatPrice1").html();
			$("#seatPrice1").val(seatPrice1);
			var seatName1 = $(this).html();
			$("#seatName1").val(seatName1);
			$(".seatNum1").not(this).css("background-image", "url('../img/seat/seat_blueA.gif')");
			$(".seatNum2").not(this).css("background-image", "url('../img/seat/seat_blueB.gif')");
			$(".seatNum3").not(this).css("background-image", "url('../img/seat/seat_blueC.gif')");
			$(".seatNum0").not(this).css("background-image", "url('../img/seat/seat_yellow.gif')");
		});
		$(".seatNum2").click(function(){
			$(this).css("background-image", "url('../img/seat/seat_orangeA.gif')");
			$("#showSeatPrice1").html("3000");
			var seatPrice1 = $("#showSeatPrice1").html();
			$("#seatPrice1").val(seatPrice1);
			var seatName1 = $(this).html();
			$("#seatName1").val(seatName1);
			$(".seatNum1").not(this).css("background-image", "url('../img/seat/seat_blueA.gif')");
			$(".seatNum2").not(this).css("background-image", "url('../img/seat/seat_blueB.gif')");
			$(".seatNum3").not(this).css("background-image", "url('../img/seat/seat_blueC.gif')");
			$(".seatNum0").not(this).css("background-image", "url('../img/seat/seat_yellow.gif')");
		});
		$(".seatNum3").click(function(){
			$(this).css("background-image", "url('../img/seat/seat_orangeA.gif')");
			$("#showSeatPrice1").html("2000");
			var seatPrice1 = $("#showSeatPrice1").html();
			$("#seatPrice1").val(seatPrice1);
			var seatName1 = $(this).html();
			$("#seatName1").val(seatName1);
			$(".seatNum1").not(this).css("background-image", "url('../img/seat/seat_blueA.gif')");
			$(".seatNum2").not(this).css("background-image", "url('../img/seat/seat_blueB.gif')");
			$(".seatNum3").not(this).css("background-image", "url('../img/seat/seat_blueC.gif')");
			$(".seatNum0").not(this).css("background-image", "url('../img/seat/seat_yellow.gif')");
		});
		$(".seatNum0").click(function(){
			$(this).css("background-image", "url('../img/seat/seat_orangeA.gif')");
			$("#showSeatPrice1").html("10000");
			var seatPrice1 = $("#showSeatPrice1").html();
			$("#seatPrice1").val(seatPrice1);
			var seatName1 = $(this).html();
			$("#seatName1").val(seatName1);
			$(".seatNum1").not(this).css("background-image", "url('../img/seat/seat_blueA.gif')");
			$(".seatNum2").not(this).css("background-image", "url('../img/seat/seat_blueB.gif')");
			$(".seatNum3").not(this).css("background-image", "url('../img/seat/seat_blueC.gif')");
			$(".seatNum0").not(this).css("background-image", "url('../img/seat/seat_yellow.gif')");
		});
		// 최하단 팝업메뉴
		$(".seatAlert").click(function(){
			$(".popUp").show(300);
		}), $(".popUp").click(function(){
			$(".popUp").hide(300);
		}), $("#trMain1").click(function(){
			$(".popUp").hide(300);
		});
	});