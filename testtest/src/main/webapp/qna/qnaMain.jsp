<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<style type="text/css">
.qnaMain{
	height: 2000px;
}
.qnaMain #qnaNavi{
	font-weight: normal;
	color: #353535;
}
.qnaMain h1{
	color: #4B1152;
	border-bottom: 2px solid #4B1152;
}
#qnaTopTap{
	text-align: center;
}
#qnaTopTap .toptap1{
	width: 500px;
	height: 300px;
	background-color: #EAEAEA;
}
#qnaTopTap .toptap1 img{
	width: 500px;
	height: 330px;
}
#qnaTopTap .toptap2{
	width: 400px;
	height: 150px;
		background-color: #EAEAEA;
}
#qnaTopTap .toptap2 a{
	font-size: 13px;
	color: #535353;
}
#qnaTopTap .toptap3{
	height: 30px;
	background-color: #EAEAEA;
}
.qnaMain{margin-top:40px; margin-left:350px; width:1200px; height:1800px; display:inline-block;}
.qnaMain .qnaTabMenu{clear:both;}
.qnaMain .qnaTabMenu .btnList{float:left; background-color:#EAEAEA; }
.qnaMain .qnaTabMenu .btnList li{width:171px;float:left;list-style:none;}
.qnaMain .qnaTabMenu .btnList li button{
	width: 150px;
	height: 70px;
	text-align: center;
	background-color: #EAEAEA;
	color: #4B1152;
	font-size: 17px;
	border: 0;
	outline: 0;
}
.qnaMain .qnaTabMenu .btnList li button:focus{
	width: 150px;
	height: 70px;
	text-align: center;
	background-color: #ccc;
	color: #4B1152;
	font-size: 14px;
	border-top: 2px solid #4B1152;
	border-left: 2px solid #4B1152; 
	border-right: 2px solid #4B1152;
}
.target{
	display: none;
}
.qnaTabContent{
	text-align: center;
}
.qnaTabContent a{
	text-decoration: none;
	color: #353535;
	border-bottom: 1px solid #ccc;
	font-size: 17px;
}
.qnaTabContent span{
	text-decoration: none;
	color: #4B1152;
	font-size: 23px;
	font-weight: bold;
}

#qnaPaging{
	text-align: center;
	height: 60px;
}
#qnaPaging .page{
	border: 1px solid #ccc;
	width: 35px;
	height: 35px;
	list-style: none;
	display: inline-block;
}
#qnaPaging .page a{
	vertical-align: inherit;
	text-decoration: none;
	font-weight:bold;
	color: #4B1152;
	padding-top: 3px;
}
#qnaPaging .currentPage{
	border: 1px solid #ccc;
	width: 35px;
	height: 35px;
	list-style: none;
	display: inline-block;
	background-color: #4B1152;
}
#qnaPaging .currentPage a{
	vertical-align: inherit;
	text-decoration: none;
	font-weight:bold;
	color: white;
	padding-top: 3px;
}
.mybutton{
	background-color: #4B1152;
	border: 1px solid #124d77;
	display: inline-block;
	color: white;
	font-family: arial;
	font-size: 15px;
	font-weight: nomal;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #154682;
}

.mybutton:hover {
	background-color: #4A0BA3;
}

.mybutton:active {
	position: relative;
	top: 1px;
}
.myqna p{
	font-size: 17px;
	border-bottom: 1px solid #ccc;
}
</style>
<script type="text/javascript">
$(function($) {
	  // 변수는 항상 함수나 클래스 서두에 선언하고, 전역변수가 되지 않도록 주의
	  var $x = {},// jquery 객체는 $를 붙여서 식별하면 혼란방지
	      f = {}, // 내부함수는 f 그룹으로 관리
	      x = {}; // 일반변수는 x 그룹으로 관리

	  // jquery 객체는 동적으로 사용하지 않는한 최대한 미리 셋팅
	  // *셀렉트를 포함해 jquery동작은 자원을 많이 쓰므로 중복방지용
	  $x.list_items = $("ul.btnList > li");
	  $x.mn_items = $("ul.btnList > li > button:first-child");
	  $x.mn_marks = $("ul.btnList > li > button.mark");
	  $x.mn_curr_page = $("div.paging_wrap strong.page_num");
	  $x.mn_total_pages = $("div.paging_wrap span.page_total");
	  $x.mn_prev_page = $("div.btn_prev");
	  $x.mn_next_page = $("div.btn_next");
	  $x.tab_panes = $("div.tab-pane");

	  // 내부함수에서 공통으로 사용할 일반변수(jquery객체가 아닌 변수) 셋팅
	  x.mn_display = 7;
	  x.mn_count = $x.mn_items.length;
	  x.total_pages = x.mn_count / x.mn_display;
	  x.curr_page = 1; // 1부터 시작하는 시퀀스
	  x.curr_idx = 0; // 0부터 시작하는 시퀀스, 메뉴와 타겟이 1대1로 매칭된다는 가정하에 사용할 인덱스

	  // 그러고나서 내부함수들을 만들어 $x 그룹과 x 그룹을 이용해 기능 구현
	  f.show_pane = function() {
	  $x.tab_panes.hide(); // 전체 노드를 감추고
	  $x.tab_panes.eq(x.curr_idx).show(); // 필요한 노드만 보여주는데
	  // 1. 이런식으로 하는 것은 HTML 안에 노드를 미리 모두 포함시켜 관리하는 거고
	  // 2. 또 다른 방식은 필요한 노드만 HTML안에 시작시 넣어놓고
	  // 동적으로 노드를 넣고 빼는 방법을 쓸 수도 있음 (자원이 더 많이 듬)
	  };
	  f.show_mark = function() {
	  $x.mn_marks.hide();
	  $x.mn_marks.eq(x.curr_idx).show();
	  };
	  f.do_paging = function(moving) {
	  var tmp_page = x.curr_page + moving;
	  // 페이지를 전체 페이지 범위안에 있도록 교정
	  if (tmp_page > x.total_pages) {
	  x.curr_page = 1;
	  } else if (tmp_page < 1) {
	  x.curr_page = x.total_pages;
	  } else {
	  x.curr_page = tmp_page;
	  }
	  // 확정된 페이지 숫자를 표시
	  $x.mn_curr_page.text(x.curr_page);
	  // 확정된 페이지의 첫 노드를 표시하기 위해 계산
	  x.curr_idx = (x.curr_page - 1) * x.mn_display;
	  // 전체노드를 숨기고, 보여줄 노드만 페이지상 표시갯수에 맞춰 표시
	  $x.list_items.hide();
	  
	  for (var idx = x.curr_idx; idx < x.curr_idx + x.mn_display; idx++) {
	  $x.list_items.eq(idx).show();
	  }
	  // 마크와 타겟을 표시
	  f.show_mark();
	  f.show_pane();
	  // * 일단 원본코드를 참조하여 정리했지만 페이징은
	  // * jquery의 slide 기능을 연구해서 구현해야 자연스러움
	  };

	  // 변수와 내부함수 셋팅이 끝나면 HTML 노드에 필요한 이벤트를 바인딩
	  $x.mn_prev_page.on("click", function() {
	  f.do_paging(-1);
	  });
	  $x.mn_next_page.on("click", function() {
	  f.do_paging(+1);
	  });
	  $x.mn_items.on("click", function(e) {
	  // 함수 내의 변수를 항상 첫머리에 선언
	  // jquery 객체이므로 $을 붙여서 $t로 변수명 할당
	  var $t = $(e.target);
	  // 메뉴 아이템들을 순환하면서 클릭된 노드의 인덱스를 알아냄
	  $x.mn_items.each(function(idx, item) {
	  // 클릭되서 넘어온 노드를 비교하는 방법은 상황에 따라 천차만별이나
	  // 여기서는 클래스 속성 전체를 비교하는 방법으로 체크
	  if ($t.attr("class") === $(item).attr("class")) {
	  // 인덱스를 알아내서 변경하고
	  x.curr_idx = idx;
	  // 마크와 타겟을 바꿈
	  f.show_mark();
	  f.show_pane();
	  return false; // 생략해도 무관하지만 false를 리턴하면 순환이 멈춤
	  }
	  });
	  });

	  // 위의 모든 것의 작성이 끝나면 초기화할 것들을 초기화
	  f.do_paging(0); //기본값이 1 이므로 페이지 moving을 0 으로 넘겨줌
	  $x.mn_total_pages.text(x.total_pages);
	});
</script>
</head>
<body>
<div class="qnaMain">
<h3 id="qnaNavi">JAJUAIR &gt; 고객센터<img alt="" src="../img/navimg.png"></h3><br>
<h1>고객센터</h1>
<table id="qnaTopTap">
	<tr>
		<td rowspan="3" class="toptap1"><img alt="QnA로고" src="../img/biglogo.jpg"></td>
		<td colspan="3" class="toptap3">Quick Menu</td>
	</tr>
	<tr>
		<td class="toptap2">
			<p>회원정보/예약</p><br>
			<c:if test="${sessionScope.memId==null }">
				<a href="../member/loginFail.do">회원정보 변경/탈퇴 &gt;</a><br>
			</c:if>
			<c:if test="${sessionScope.memId!=null }">
				<a href="../member/memberModifyForm.do?id=${sessionScope.memId }">회원정보 변경/탈퇴 &gt;</a><br>
			</c:if>
			<a>예약조회/변경/취소 &gt;</a>
		</td>
		<td class="toptap2">
			<p>항공권예매</p><br>
			<a href="../book/goAvail.do">항공권예매 &gt;</a><br>
		</td>
		<td class="toptap2">
			<p>온라인탑승권 안내</p><br>
			<a href="../guide/onlineTicket.do">온라인탑승권 안내 &gt;</a><br>
		</td>
	</tr>
	<tr>
		<td class="toptap2">
			<p>포인트</p><br>
			<a>포인트내역 &gt;</a><br>
			<a>포인트선물 &gt;</a>
		</td>
		<td class="toptap2">
			<p>부가서비스</p><br>
			<a href="../guide/item.do">부가서비스 안내 &gt;</a>
		</td>
		<td class="toptap2">
			<p>규졍안내</p><br>
			<a>국내선 위약금 규정 &gt;</a><br>
			<a>국재선 위약금 규정 &gt;</a><br>
			<a href="../guide/luggage.do">수하물 규정 &gt;</a>
		</td>
	</tr>
</table>
	<div class="qnaTabPart">
		<div class="qnaTabMenu">
			<ul class="btnList"> 
				<li class="on"><button class="#qna_11">전체</button><span class="mark"></span></li>
				<li><button class="#qna_12">항공권예약<br>발권/변경/취소</button><span class="mark"></span></li>
				<li><button class="#qna_13">포인트</button><span class="mark"></span></li>
				<li><button class="#qna_14">홈페이지&모바일</button><span class="mark"></span></li>
				<li><button class="#qna_15">공항서비스</button><span class="mark"></span></li>
				<li><button class="#qna_16">이벤트</button><span class="mark"></span></li>
				<li><button class="#qna_17">기타</button><span class="mark"></span></li>        
			</ul>
		</div>
		<div class="qnaTabContent">
			<div class="tab-pane" id="qna_11">
				<table class="collapsible">
					<c:forEach var="qnaDTO" items="${requestScope.list }">
						<tr>
							<c:if test="${qnaDTO.koreanName=='admin' }">
								<td align="left"><a href="../qna/qnaView.do?seq=${qnaDTO.seq }"><span>Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${qnaDTO.subject }</a></td>

							</c:if>	
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="tab-pane" id="qna_12">
			<table>
				<c:forEach var="qnaDTO" items="${requestScope.list }">
						<tr>
							<c:if test="${qnaDTO.code2=='항공권예약발권/변경/취소' }">
								<td align="left"><a href="../qna/qnaView.do?seq=${qnaDTO.seq }"><span>Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${qnaDTO.subject }</a></td>
							</c:if>
						</tr>
				</c:forEach>
			</table>
			</div>
			<div class="tab-pane" id="qna_13">
				<table>
					<c:forEach var="qnaDTO" items="${requestScope.list }">
							<tr>
								<c:if test="${qnaDTO.code2=='포인트' }">
								<td align="left"><a href="../qna/qnaView.do?seq=${qnaDTO.seq }"><span>Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${qnaDTO.subject }</a></td>
								</c:if>
							</tr>
					</c:forEach>
				</table>
			</div>
			<div class="tab-pane" id="qna_14">
				<table>
					<c:forEach var="qnaDTO" items="${requestScope.list }">
							<tr>
							<c:if test="${qnaDTO.koreanName=='admin' }">
								<c:if test="${qnaDTO.code2=='홈페이지&모바일 이용' }">
									<td align="left"><a href="../qna/qnaView.do?seq=${qnaDTO.seq }"><span>Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${qnaDTO.subject }</a></td>
								</c:if>
							</c:if>	
							</tr>
					</c:forEach>
				</table>
			</div>
			<div class="tab-pane" id="qna_15">
				<table>
					<c:forEach var="qnaDTO" items="${requestScope.list }">
							<tr>
							<c:if test="${qnaDTO.code2=='공항서비스' }">
								<td align="left"><a href="../qna/qnaView.do?seq=${qnaDTO.seq }"><span>Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${qnaDTO.subject }</a></td>
							</c:if>	
							</tr>
					</c:forEach>
				</table>
			</div>
			<div class="tab-pane" id="qna_16">
				<table>
					<c:forEach var="qnaDTO" items="${requestScope.list }">
							<tr>
							<c:if test="${qnaDTO.code2=='이벤트' }">
								<td align="left"><a href="../qna/qnaView.do?seq=${qnaDTO.seq }"><span>Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${qnaDTO.subject }</a></td>
								
							</c:if>	
							</tr>
					</c:forEach>
				</table>
			</div>
			<div class="tab-pane" id="qna_17">
				<table>
					<c:forEach var="qnaDTO" items="${requestScope.list }">
							<tr>
							<c:if test="${qnaDTO.code2=='기타' }">
								<td align="left"><a href="../qna/qnaView.do?seq=${qnaDTO.seq }"><span>Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${qnaDTO.subject }</a></td>
								
							</c:if>	
							</tr>
					</c:forEach>
				</table>
			</div>
		</div>  
	</div>
	<div>
		<c:if test="${sessionScope.memId!=null && sessionScope.memId!='admin' }">
			<button class="mybutton" onclick="location.href='../qna/qnaWriteForm.do'">1:1 문의하기</button>
		</c:if>
		<c:if test="${sessionScope.memId=='admin' }">
			<button class="mybutton" onclick="location.href='../qna/qnaWriteForm.do'">자주찾는 질문 등록</button>
		</c:if>
	</div>
	<div class="myqna">
		<h3>나의 문의 답변 내역</h3>
		<c:if test="${sessionScope.memId==null}">
			로그인 후 이용해주세요
		</c:if>
		<c:if test="${sessionScope.memId!=null}">
			<table class="collapsible">
					<c:forEach var="qnaDTO" items="${requestScope.listC }">
						<tr>
							<c:if test="${sessionScope.memId!='admin' }">
								<c:if test="${qnaDTO.koreanName==sessionScope.memName }">
										<td class="title" align="left"><p>${qnaDTO.subject }</p></td>
										<td><p>${sessionScope.memName }</p></td>
										<td><a href="../qna/qnaView.do?seq=${qnaDTO.seq }" class="mybutton">자세히</a></td>
								</c:if>
							</c:if>
							<c:if test="${sessionScope.memId=='admin'}">
								<c:if test="${qnaDTO.koreanName!='admin' }">
										<td class="title" align="left"><p>${qnaDTO.subject }</p></td>
										<td><p>${qnaDTO.koreanName }</p></td>
										<td><a href="../qna/qnaAnswerForm.do?seq=${qnaDTO.seq }" class="mybutton">답변하기</a> <a href="../qna/qnaView.do?seq=${qnaDTO.seq }" class="mybutton">자세히</a></td>
								</c:if>
							</c:if>
						</tr>
					</c:forEach>
			</table>
		</c:if>
	</div>
</div>
</body>
</html>