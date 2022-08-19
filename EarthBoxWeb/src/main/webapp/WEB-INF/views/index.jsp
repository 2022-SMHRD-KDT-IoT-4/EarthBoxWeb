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

<body data-spy="scroll" data-target="#header">

	<%
	String result = (String) session.getAttribute("user_id");
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

						<div class="collapse navbar-collapse zero_mp"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right main_menu">
								<%if (result == null) {	%>
								<li><a href="loginForm.do">로그인</a></li>
								<li><a href="loginForm.do">QnA</a></li>
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



	<!-----------------------------------------------------움직이는 이미지 세션 시작--------------------------------------------->
	<section id="slider">
		<div id="carousel-example-generic"
			class="carousel slide carousel-fade" data-ride="carousel"
			data-interval="3000">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<div class="slider_overlay">
						<img src="img/zero3.jpg" style="width: 100%; height: 800px;">
						<div class="carousel-caption">
							<div class="slider_text">
								<h3>EARTH BOX</h3>
								<h2>환경을 생각하는 무인 중고거래 플랫폼</h2>
								<p></p>
								<a href="" class="custom_btn">mobile</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of item With Active-->
				<div class="item">
					<div class="slider_overlay">
						<img src="img/zero2.jpg" style="width: 100%; height: 800px;">
						<div class="carousel-caption">
							<div class="slider_text">
								<h3>EARTH BOX</h3>
								<h2>환경을 생각하는 무인 중고거래 플랫폼</h2>
								<p></p>
								<a href="" class="custom_btn">mobile</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of Item-->
				<div class="item">
					<div class="slider_overlay">
						<img src="img/zero1.png" style="width: 100%; height: 800px;">
						<div class="carousel-caption">
							<div class="slider_text">
								<h3>EARTH BOX</h3>
								<h2>환경을 생각하는 무인 중고거래 플랫폼</h2>
								<p></p>
								<a href="" class="custom_btn">mobile</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of item-->
			</div>
			<!--End of Carousel Inner-->
		</div>
	</section>
	<!--------------------------------------------------------------움직이는 이미지 세션 끝------------------------------------------>



	<!--------------------------------------------------------------제품 소개 장점 소개 세션----------------------------------------->
	<section id="welcome">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="wel_header">
						<h2>Earth Box에 오신 것을 환영합니다.</h2>
						<p>환경을 생각하는 비대면 중고 거래 자판기 플랫폼 어스박스</p>
					</div>
				</div>
			</div>
			<!--End of row-->
			<div class="row">
				<div class="col-md-3">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fa fa-leaf"></i>
								</div>
								<h4>eco system</h4>
								<p>Lorem ipsum dolor sit amet, eu qui modo expetendis
									reformidans ex sit set appetere sententiae seo eum in simul
									homero.</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
				<div class="col-md-3">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fa fa-refresh"></i>
								</div>
								<h4>recycling</h4>
								<p>Lorem ipsum dolor sit amet, eu qui modo expetendis
									reformidans ex sit set appetere sententiae seo eum in simul
									homero.</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
				<div class="col-md-3">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fa fa-tint"></i>
								</div>
								<h4>water refine</h4>
								<p>Lorem ipsum dolor sit amet, eu qui modo expetendis
									reformidans ex sit set appetere sententiae seo eum in simul
									homero.</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
				<div class="col-md-3">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fa fa-cog"></i>
								</div>
								<h4>solar system</h4>
								<p>Lorem ipsum dolor sit amet, eu qui modo expetendis
									reformidans ex sit set appetere sententiae seo eum in simul
									homero.</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->
	</section>
	<!--------------------------------------------------------------제품 소개 장점 소개 세션----------------------------------------->

	<!--------------------------------------------------------------세션 1----------------------------------------->
	<section style="text-align: center; background: #f3f3f3;">
		<div class="container">
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: 100px; margin-bottom: 80px;">
				<b>이것은 어스박스.</b>
			</h1>
			<img src="img/boximg.jpg" style="width: 500px; height: 400px;">
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: 100px;">판매하고
				싶은 물건을 넣으면</h1>
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 100px;">누구나
				카카오페이 결제로 구매할 수 있어요!</h1>
		</div>
		<div class="container">
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 100px;">
				<b>어스박스 앱도 있어요</b>
			</h1>
			<img src="img/boximg2.png" style="width: 300px; height: 500px;">
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: 100px; margin-bottom: 100px;">어스박스에
				상품을 등록하거나 확인할 수 있어요.</h1>
		</div>
	</section>

	<!--------------------------------------------------------------세션 2----------------------------------------->
	<section style="text-align: center; background: #fff">
		<div class="container">
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-right: 500px; margin-bottom: 50px; margin-top: 100px; color: #599555; font-size: 30px; font-weight: 700;">판매방법</h1>
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-right: 500px; font-size: 25px;">팔고싶은
				물건 어스박스</h1>
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-right: 500px; margin-top: 20px; color: #599555; font-size: 25px; font-weight: 700;">앱에서
				등록하고</h1>

			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-right: 500px; font-size: 25px;">팔고싶은
				물건</h1>
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-right: 500px; margin-top: 20px; color: #599555; font-size: 25px; font-weight: 700;">어스박스에
				넣고</h1>

			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-right: 500px; font-size: 25px;">내가
				등록한 물건이</h1>
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-right: 500px; margin-top: 20px; color: #599555; font-size: 25px; font-weight: 700;">판매되면
				계좌로 입금!!</h1>

			<img src="img/coin.png"
				style="width: 20%; margin-left: 500px; margin-top: -330px;">
		</div>
	</section>

	<!--------------------------------------------------------------세션 3----------------------------------------->
	<section style="text-align: center; background: #fff">
		<div class="container">
			<img src="img/shopping-bag.png"
				style="width: 20%; margin-right: 600px; margin-bottom: -550px;">
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-left: 500px; margin-bottom: 50px; margin-top: 100px; color: #599555; font-size: 30px; font-weight: 700;">구매방법</h1>
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-left: 500px; font-size: 25px;">사고싶은
				물건 어스박스</h1>
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-left: 500px; margin-top: 20px; color: #599555; font-size: 25px; font-weight: 700;">앱에서
				확인하고</h1>

			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-left: 500px; font-size: 25px;">어스박스에서
				상품</h1>
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-left: 500px; margin-top: 20px; color: #599555; font-size: 25px; font-weight: 700;">실물
				확인하고</h1>

			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-left: 500px; font-size: 25px;">내가
				등록한 물건이</h1>
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-left: 500px; margin-top: 20px; color: #599555; font-size: 25px; margin-bottom: 130px; font-weight: 700;">카드
				결제하면 구매완료!!</h1>

		</div>
	</section>

	<!--------------------------------------------------------------세션 4----------------------------------------->
	<section style="text-align: center; background: #f3f3f3;">
		<div class="container">
			<img src="img/shield.png"
				Style="width: 15%; margin-top: 100px; margin-right: 500px;"> <img
				src="img/store.png" Style="width: 15%; margin-top: 100px">
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: 100px; margin-bottom: 100px; margin-right: 700px;">
				<b>안전해요</b>
			</h1>
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 100px; margin-left: 680px; margin-top: -141px;">
				<b>편리해요</b>
			</h1>
			<h2
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: 100px; margin-bottom: 100px; margin-right: 700px;">물건을
				직접 보고 구매하는</h2>
			<h2
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -80px; margin-bottom: 100px; margin-right: 740px; width: 41%;">어스박스에는
				벽돌 택배가 없어요.</h2>
			<h2
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -100px; margin-left: 680px; margin-top: -143px;">어스박스가
				팔아드려요!</h2>
			<h2
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -80px; margin-left: 680px; margin-bottom: 170px;">물건을
				맡겨주시면</h2>
		</div>
	</section>

	<!--------------------------------------------------------------세션 4----------------------------------------->
	<section style="text-align: center; background: #fff;">
		<div class="container">
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: 80px; margin-bottom: 100px;">
				<b>어스박스</b>
			</h1>
			<h1
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -70px; margin-bottom: 100px;">
				<b>이곳에서 만나실 수 있어요</b>
			</h1>

			<h2
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: 100px; margin-bottom: 100px; margin-right: 700px;">
				<img src="img/pin.png" Style="width: 7%;"><b>라인동산아파트</b>
			</h2>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -50px; margin-bottom: 50px; margin-right: 700px;">관리사무소
				안</h3>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -40px; margin-bottom: 100px; margin-right: 700px;">광주
				서구 염화로45번길 17</h3>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -90px; margin-right: 700px;">운영시간
				: 09:00 ~ 21:00</h3>

			<h2
				style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 100px; margin-left: 680px; margin-top: -192px;">
				<img src="img/pin.png" Style="width: 7%;"><b>한국아델리움</b>
			</h2>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -50px; margin-bottom: 50px; margin-left: 700px;">아파트
				정문 옆 상가</h3>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -40px; margin-bottom: 100px; margin-left: 700px;">광주
				남구 서문대로627번길 19</h3>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -90px; margin-left: 700px;">운영시간
				: 10:00 ~ 22:00</h3>

			<h2
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: 150px; margin-bottom: 100px; margin-right: 700px;">
				<img src="img/pin.png" Style="width: 7%;"><b>CGI센터</b>
			</h2>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -50px; margin-bottom: 50px; margin-right: 700px;">2층
				복도</h3>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -40px; margin-bottom: 100px; margin-right: 700px;">광주
				남구 송암로 60</h3>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -90px; margin-right: 700px;">운영시간
				: 09:00 ~ 19:00</h3>

			<h2
				style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 200px; margin-left: 680px; margin-top: -192px;">
				<img src="img/pin.png" Style="width: 7%;"><b>운암2차남양휴튼</b>
			</h2>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -150px; margin-bottom: 50px; margin-left: 700px;">1층
				로비 안</h3>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -40px; margin-bottom: 100px; margin-left: 700px;">광주
				북구 북문대로 88</h3>
			<h3
				style="font-family: 'Noto Sans KR', sans-serif; margin-top: -90px; margin-left: 700px; margin-bottom: 200px;">운영시간
				: 11:00 ~ 23:00</h3>
	</section>


	<!--------------------------------------------------------------푸터----------------------------------------->
	<section id="footer" bottom: 0px; left: 0px; right: 0px">
		<!--End of container-->
	</section>
	<!--------------------------------------------------------------푸터----------------------------------------->



	<!--Scroll to top-->
	<a href="#" id="back-to-top" title="Back to top">&uarr;</a>
	<!--End of Scroll to top-->
<!--End of footer-->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/js/footer.js"></script>	


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
	<script type="text/javascript">
		var map;
		$(document).ready(function() {
			map = new GMaps({
				el : '#map',
				lat : 23.6911078,
				lng : 90.5112799,
				zoomControl : true,
				zoomControlOpt : {
					style : 'SMALL',
					position : 'LEFT_BOTTOM'
				},
				panControl : false,
				streetViewControl : false,
				mapTypeControl : false,
				overviewMapControl : false,
				scrollwheel : false,
			});

			map.addMarker({
				lat : 23.6911078,
				lng : 90.5112799,
				title : 'Office',
				details : {
					database_id : 42,
					author : 'Foysal'
				},
				click : function(e) {
					if (console.log)
						console.log(e);
					alert('You clicked in this marker');
				},
				mouseover : function(e) {
					if (console.log)
						console.log(e);
				}
			});
		});
	</script>
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