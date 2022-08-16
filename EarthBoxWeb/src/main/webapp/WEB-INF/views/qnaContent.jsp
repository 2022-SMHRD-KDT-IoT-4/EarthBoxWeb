<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>GreenFair</title>

<!--    Google Fonts-->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!--Fontawesom-->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!--Animated CSS-->
<link rel="stylesheet" type="text/css" href="css/animate.min.css">

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!--Bootstrap Carousel-->
<link type="text/css" rel="stylesheet" href="css/carousel.css" />

<link rel="stylesheet" href="css/isotope/style.css">

<!--Main Stylesheet-->
<link href="css/style.css" rel="stylesheet">
<!--Responsive Framework-->
<link href="css/responsive.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
 
 <script>
 $(function(){
	if($("#q_file").val() == null){
		document.getElementById("q_file").style.display = "none";
	}else{//조건 1이 아닐떄
		document.getElementById("q_file").style.display = "";
	}
})
 </script>       
       
</head>

<body stlye="background=#599555;">
	<% 
		String result = (String)session.getAttribute("user_id");
		System.out.println("qnaContent session : " + result);
		
	%>
	<!--Start Hedaer Section-->
	<section id="header">
		<div class="header-area">
			<!--End of top header-->
			<div class="header_menu text-center" data-spy="affix"
				data-offset-top="50" id="nav">
				<div class="container">
					<nav class="navbar navbar-default zero_mp ">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand custom_navbar-brand" href="index.do"><img
								src="img/foruslogo3.png" style="width: 60px; height: 60px">EarthBox</a>
						</div>
						<!--End of navbar-header-->

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse zero_mp"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right main_menu">
								<%if (result == null) {	%>
								<li><a href="loginForm.do">로그인</a></li>
								<li><a href="qnaBoard.do">QnA</a></li>
								<li><a href="event.do">공지사항</a></li>
								<!-- 로그인 한 상태 -->
								<%} else if (result.equals("admin")) { %>
								<li><a href="logout.do">로그아웃</a></li>
								<li><a href="qnaBoard.do?user_id=${result }">QnA</a></li>
								<li><a href="streaming.do">CCTV</a></li>
								<li><a href="event.do">공지사항</a></li>
								<%} else{%>
								<li><a href="logout.do">로그아웃</a></li>
								<li><a href="qnaBoard.do?user_id=${result }">QnA</a></li>
								<li><a href="event.do">공지사항</a></li>
							</ul>
							<% } %>
						</div>
						<!-- /.navbar-collapse -->
					</nav>
					<!--End of nav-->
				</div>
				<!--End of container-->
			</div>
			<!--End of header menu-->
		</div>
		<!--end of header area-->
	</section>
	<!--End of Hedaer Section-->
	
	<div class="panel-body">
    
    	<table class="table table-hover" style="margin-left: auto; margin-right: auto; max-width:70%; margin-bottom:500p;x">
    		<tr>
    			<td>제목</td>
    			<td colspan="3">${vo.q_title }</td>
    		</tr>
    		<tr>
    			<td>작성자</td>
    			<td>${vo.user_nick }</td>
    			<td>작성일</td>
    			<td>${vo.q_date }</td>
    		</tr>
    		<tr>
    			<td>내용</td>
    			<% pageContext.setAttribute("newLine", "\n");  %>
    			<td colspan="3">${fn:replace(vo.q_content, newLine, "<br>" )}</td>
    		</tr>
    		<tr>
	    		<td colspan="4" align="center">
	    			<!-- 작성자만 글 수정, 삭제 가능하도록 설정 -->
		    		<c:if test="${result == null}">
		    			<c:if test="${result == vo.user_id }">
			    			<button onclick="location.href='questionUpdate.do?q_seq=${vo.q_seq}&user_id=${result }'" class="btn btn-sm btn-info">수정</button>
			    			<button onclick="location.href='questionDelete.do?q_seq=${vo.q_seq}&user_id=${result }'" class="btn btn-sm btn-warning">삭제</button>
			    			<!-- id가 admin일 때만 뜨도록 해주기 -->
			    			<button onclick="location.href='answerWriteForm.do?q_seq=${vo.q_seq}&user_id=${result }'" class="btn btn-sm btn-success">답글</button>
			    		</c:if>	
		    		</c:if>
	    			<button onclick="location.href='qnaBoard.do?user_id=${result}'" class="btn btn-sm btn-danger">목록</button>
	    		</td>
    		</tr>
    		<!-- 답변. 비동기 방식으로 답글 클릭하면 나오도록? -->
    		<tr>
    			<td>답변</td>
    			<td colspan="3" align="center">
    				<!-- 답변 -->
					<div class="form-group">
						<div class="col-sm-10">
							<textarea rows="10" id="q_content" class="form-control" name="q_content"></textarea>
						</div>
					</div>
    			</td>
    		</tr>
    	</table>
    	
    </div>
	
	
	<!--Start of footer-->
	<section id="footer">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-6" style="text-align:left;">
					<div class="designer">
						<img src="img/foruslogo3.png" width="60px" height="60px"
							style="margin-right: 5px;">EARTH BOX
					</div>
				</div>
				<div class="col-md-6" style="text-align:left;">
					<div class="copyright" style="margin-top:50px;">팀장 조유빈 | 사업자번호 123-456-789101</div>
					<div class="copyright" style="margin-top:-30px;">직업정보제공사업 신고번호 2016-서울서초-0051</div>
					<div class="copyright" style="margin-top:-30px;">주소 서울특별시 구로구 디지털로 30길 28, 609호 (당근서비스)</div>
					<div class="copyright" style="margin-top:-30px;">전화1544-9796 |고객문의 cs@daangnservice.com</div>
					<div class="copyright" >제휴 문의 &nbsp;&nbsp;광고 문의&nbsp;&nbsp; PR 문의&nbsp;&nbsp; IR 문의</div>
					<div class="copyright" style="margin-bottom:30px;">이용약관 &nbsp;&nbsp;개인정보처리방침&nbsp;&nbsp;위치기반서비스 이용약관&nbsp;&nbsp;이용자보호 비전과 계획</div>
				</div>
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->
	</section>
	<!--End of footer-->



	<!--Scroll to top-->
	<a href="#" id="back-to-top" title="Back to top">&uarr;</a>
	<!--End of Scroll to top-->


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>-->
	<script src="js/jquery-1.12.3.min.js"></script>

	<!--Counter UP Waypoint-->
	<script src="js/waypoints.min.js"></script>
	<!--Counter UP-->
	<script src="js/jquery.counterup.min.js"></script>

	<script>
		//for counter up
		$('.counter').counterUp({
			delay : 10,
			time : 1000
		});
	</script>

	<!--Gmaps-->
	<script src="js/gmaps.min.js"></script>
	
	<!--Google Maps API-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjxvF9oTfcziZWw--3phPVx1ztAsyhXL4"></script>


	<!--Isotope-->
	<script src="js/isotope/min/scripts-min.js"></script>
	<script src="js/isotope/cells-by-row.js"></script>
	<script src="js/isotope/isotope.pkgd.min.js"></script>
	<script src="js/isotope/packery-mode.pkgd.min.js"></script>
	<script src="js/isotope/scripts.js"></script>


	<!--Back To Top-->
	<script src="js/backtotop.js"></script>


	<!--JQuery Click to Scroll down with Menu-->
	<script src="js/jquery.localScroll.min.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<!--WOW With Animation-->
	<script src="js/wow.min.js"></script>
	<!--WOW Activated-->
	<script>
		new WOW().init();
	</script>


	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Custom JavaScript-->
	<script src="js/main.js"></script>
</body>
</html>