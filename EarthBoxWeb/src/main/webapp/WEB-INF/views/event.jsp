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
<style>
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
* {
  box-sizing: border-box;
}

body {
  font-family:'Noto Sans KR', sans-serif;
}

.heading-primary {
  font-size: 3em;
  padding: 1em;
  text-align: center;
}

.accordion dl,
.accordion-list {
  border: 1px solid #ddd;
}
.accordion dl:after,
.accordion-list:after {
  content: "";
  display: block;
  height: 1em;
  width: 100%;
  background-color: #599555;
}

.accordion dd,
.accordion__panel {
  background-color: #eee;
  font-size: 1em;
  line-height: 1.5em;
}

.accordion p {
  padding: 1em 2em 1em 2em;
}

.accordion {
  position: relative;
  background-color: #eee;
}

.container2 {
  max-width: 960px;
  margin: 0 auto;
  padding: 2em 0 2em 0;
}

.accordionTitle,
.accordion__Heading {
  background-color: #fff;
  text-align: left;
  font-weight: 600;
  padding: 2em;
  display: block;
  text-decoration: none;
  color: #599555;
  transition: background-color 0.5s ease-in-out;
  border-bottom: 1px solid #599555;
}
.accordionTitle:before,
.accordion__Heading:before {
  content: "+";
  font-size: 1.5em;
  line-height: 0.5em;
  float: left;
  margin-right:30px;
  transition: transform 0.3s ease-in-out;
}
.accordionTitle:hover,
.accordion__Heading:hover {
  background-color: #2ba659;
}

.accordionTitleActive,
.accordionTitle.is-expanded {
  background-color: #2ba659;
}
.accordionTitleActive:before,
.accordionTitle.is-expanded:before {
  transform: rotate(-225deg);
}

.accordionItem {
  height: auto;
  overflow: hidden;
  max-height: 50em;
  transition: max-height 1s;
}
@media screen and (min-width: 48em) {
  .accordionItem {
    max-height: 15em;
    transition: max-height 0.5s;
  }
}

.accordionItem.is-collapsed {
  max-height: 0;
}

.no-js .accordionItem.is-collapsed {
  max-height: auto;
}

.animateIn {
  -webkit-animation: accordionIn 0.45s normal ease-in-out both 1;
          animation: accordionIn 0.45s normal ease-in-out both 1;
}

.animateOut {
  -webkit-animation: accordionOut 0.45s alternate ease-in-out both 1;
          animation: accordionOut 0.45s alternate ease-in-out both 1;
}

@-webkit-keyframes accordionIn {
  0% {
    opacity: 0;
    transform: scale(0.9) rotateX(-60deg);
    transform-origin: 50% 0;
  }
  100% {
    opacity: 1;
    transform: scale(1);
  }
}

@keyframes accordionIn {
  0% {
    opacity: 0;
    transform: scale(0.9) rotateX(-60deg);
    transform-origin: 50% 0;
  }
  100% {
    opacity: 1;
    transform: scale(1);
  }
}
@-webkit-keyframes accordionOut {
  0% {
    opacity: 1;
    transform: scale(1);
  }
  100% {
    opacity: 0;
    transform: scale(0.9) rotateX(-60deg);
  }
}
@keyframes accordionOut {
  0% {
    opacity: 1;
    transform: scale(1);
  }
  100% {
    opacity: 0;
    transform: scale(0.9) rotateX(-60deg);
  }
}/*# sourceMappingURL=main.css.map */
</style>

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
	
	<div class="container2">
		<h1 class="heading-primary">Earth Box</h1>
		<h1 class="heading-primary" style="margin-top:-60px;">공지사항 / 이벤트</h1>
		<div class="accordion">
			<dl>
				<dt>
					<a href="#accordion1" aria-expanded="false"
						aria-controls="accordion1"
						class="accordion-title accordionTitle js-accordionTrigger">EarthBox
						[부적절한 서비스 이용 제제 안내]</a>
				</dt>
				<dd class="accordion-content accordionItem is-collapsed"
					id="accordion1" aria-hidden="true">
					<p>일반적인 EarthBox 한칸의 크기는 가로 40cm, 세로28cm,높이 40cm 이며, 아파트에 설치되어
						있는 파라박스 한칸의 크기는 모두 동일합니다.</p>
					<p>이용에 참고해주시면 감사드리겠습니다:)</p>

				</dd>
				<dt>
					<a href="#accordion2" aria-expanded="false"
						aria-controls="accordion2"
						class="accordion-title accordionTitle js-accordionTrigger">
						[공지사항]어스박스 판매 등록 수 변경</a>
				</dt>
				<dd class="accordion-content accordionItem is-collapsed"
					id="accordion2" aria-hidden="true">
					<p>몰라</p>
					<p>검색ㄱ</p>
				</dd>
				<dt>
					<a href="#accordion3" aria-expanded="false"
						aria-controls="accordion3"
						class="accordion-title accordionTitle js-accordionTrigger">
						[이벤트]어스박스만물상점 챌린지 </a>
				</dt>
				<dd class="accordion-content accordionItem is-collapsed"
					id="accordion3" aria-hidden="true">
					<p>몰라</p>
				</dd>
				<dt>
					<a href="#accordion4" aria-expanded="false"
						aria-controls="accordion4"
						class="accordion-title accordionTitle js-accordionTrigger">EarthBox
						[이벤트]어스박스 1차 랜덤 Drop!</a>
				</dt>
				<dd class="accordion-content accordionItem is-collapsed"
					id="accordion4" aria-hidden="true">
					<p>일반적인 EarthBox 한칸의 크기는 가로 40cm, 세로28cm,높이 40cm 이며, 아파트에 설치되어
						있는 파라박스 한칸의 크기는 모두 동일합니다.</p>
					<p>이용에 참고해주시면 감사드리겠습니다:)</p>
				</dd>
				<dt>
					<a href="#accordion5" aria-expanded="false"
						aria-controls="accordion5"
						class="accordion-title accordionTitle js-accordionTrigger">EarthBox
						어스박스 이용시 참고하세요!!</a>
				</dt>
				<dd class="accordion-content accordionItem is-collapsed"
					id="accordion5" aria-hidden="true">
					<p>일반적인 EarthBox 한칸의 크기는 가로 40cm, 세로28cm,높이 40cm 이며, 아파트에 설치되어
						있는 파라박스 한칸의 크기는 모두 동일합니다.</p>
					<p>이용에 참고해주시면 감사드리겠습니다:)</p>
				</dd>
				<dt>
					<a href="#accordion6" aria-expanded="false"
						aria-controls="accordion6"
						class="accordion-title accordionTitle js-accordionTrigger">EarthBox
						어스박스 서비스 오픈!</a>
				</dt>
				<dd class="accordion-content accordionItem is-collapsed"
					id="accordion6" aria-hidden="true">
					<p>일반적인 EarthBox 한칸의 크기는 가로 40cm, 세로28cm,높이 40cm 이며, 아파트에 설치되어
						있는 파라박스 한칸의 크기는 모두 동일합니다.</p>
					<p>이용에 참고해주시면 감사드리겠습니다:)</p>
				</dd>
				
			</dl>
		</div>
	</div>

	
	<!--------------------------------------------------------------푸터----------------------------------------->
	<section id="footer" bottom: 0px; left: 0px; right: 0px">
		
	</section>
	<!--------------------------------------------------------------푸터----------------------------------------->
<!--End of footer-->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/js/footer.js"></script>	


	
	<script>
		//uses classList, setAttribute, and querySelectorAll
		//if you want this to work in IE8/9 youll need to polyfill these
		(function() {
			var d = document, accordionToggles = d
					.querySelectorAll('.js-accordionTrigger'), setAria, setAccordionAria, switchAccordion, touchSupported = ('ontouchstart' in window), pointerSupported = ('pointerdown' in window);

			skipClickDelay = function(e) {
				e.preventDefault();
				e.target.click();
			}

			setAriaAttr = function(el, ariaType, newProperty) {
				el.setAttribute(ariaType, newProperty);
			};
			setAccordionAria = function(el1, el2, expanded) {
				switch (expanded) {
				case "true":
					setAriaAttr(el1, 'aria-expanded', 'true');
					setAriaAttr(el2, 'aria-hidden', 'false');
					break;
				case "false":
					setAriaAttr(el1, 'aria-expanded', 'false');
					setAriaAttr(el2, 'aria-hidden', 'true');
					break;
				default:
					break;
				}
			};
			//function
			switchAccordion = function(e) {
				console.log("triggered");
				e.preventDefault();
				var thisAnswer = e.target.parentNode.nextElementSibling;
				var thisQuestion = e.target;
				if (thisAnswer.classList.contains('is-collapsed')) {
					setAccordionAria(thisQuestion, thisAnswer, 'true');
				} else {
					setAccordionAria(thisQuestion, thisAnswer, 'false');
				}
				thisQuestion.classList.toggle('is-collapsed');
				thisQuestion.classList.toggle('is-expanded');
				thisAnswer.classList.toggle('is-collapsed');
				thisAnswer.classList.toggle('is-expanded');

				thisAnswer.classList.toggle('animateIn');
			};
			for (var i = 0, len = accordionToggles.length; i < len; i++) {
				if (touchSupported) {
					accordionToggles[i].addEventListener('touchstart',
							skipClickDelay, false);
				}
				if (pointerSupported) {
					accordionToggles[i].addEventListener('pointerdown',
							skipClickDelay, false);
				}
				accordionToggles[i].addEventListener('click', switchAccordion,
						false);
			}
		})();
	</script>
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