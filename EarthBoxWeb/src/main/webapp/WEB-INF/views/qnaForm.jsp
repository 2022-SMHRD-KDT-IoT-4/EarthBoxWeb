<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
        
       
</head>

<body stlye="background=#599555;">
	<%String result = (String)session.getAttribute("user_id");%>
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
	
	<h2 class="text-center" style="margin-top: 150px; margin-bottom:50px;"> 문의하기</h2>
	<!-- form태그 시작 -->
				<form class="form-horizontal" action="questionWrite.do" method="post">
					<!-- 제목 -->
					<div class="form-group">
						<label class="control-label col-sm-2" for="title">제목:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="q_title"
								placeholder="제목을 입력하세요" name="q_title">
						</div>
					</div>
					
					<!-- 내용 -->
					<div class="form-group">
						<label class="control-label col-sm-2" for="content">내용:</label>
						<div class="col-sm-10">
							<textarea rows="10" id="q_content" class="form-control" name="q_content"></textarea>
						</div>
					</div>
					
					<!-- submit -->
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">작성하기</button>
						</div>
					</div>
				</form>
	
	
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