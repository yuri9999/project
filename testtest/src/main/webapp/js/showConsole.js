
/*		우측콘솔 위치 js			*/
var currentScrollTop = 0;
	        
// 비동기식 jQuery이므로 window load 후 jQuery를 실행해야 함
window.onload = function() {
	// 새로고침 했을 경우를 대비한 메소드 실행
    scrollController();
       
    // 스크롤을 하는 경우에만 실행됨
	$(window).on('scroll', function() {
    	scrollController();
	});
}
	        
// 메인 메뉴의 위치를 제어하는 함수
function scrollController() {
	currentScrollTop = $(window).scrollTop();
	if (currentScrollTop < 170) {
		$('#showConsole').css('top', 170-(currentScrollTop));
		if ($('#showConsole').hasClass('fixed')) {      
		}
	} else {
		if (!$('#showConsole').hasClass('fixed')) {
	    	$('#showConsole').css('top', -1 );                
	    }
	}
}

/* 		step3 부가서비스 입력 이벤트		*/
	// 추가금액 리스트 숨김
$(function(){
	$("#showExtra1 ul li").hide();
	$("#showExtra2 ul li").hide();
});







