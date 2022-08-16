<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>faq</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Lato:400,700);
* {
  box-sizing: border-box;
}

body {
  font-family: "Lato";
}

.heading-primary {
  font-size: 2em;
  padding: 2em;
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
  background-color: #2ba659;
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
  background-color: #38cc70;
  text-align: left;
  font-weight: 700;
  padding: 2em;
  display: block;
  text-decoration: none;
  color: #fff;
  transition: background-color 0.5s ease-in-out;
  border-bottom: 1px solid #30bb64;
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
<body>
	<div class="container2">
		<h1 class="heading-primary">Earth Box</h1>
		<h1 class="heading-primary" style="margin-top:-100px;">공지사항 / 이벤트</h1>
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
</body>
</html>