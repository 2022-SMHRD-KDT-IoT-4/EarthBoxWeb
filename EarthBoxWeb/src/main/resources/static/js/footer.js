$(document).ready(loadFooter);

function loadFooter() {

$("#footer").html("");

list = ` 
		<div class="container">
			<div class="row text-center">
				<div class="col-md-6" style="text-align: left;">
					<div class="designer">
						<img src="img/foruslogo3.png" width="60px" height="60px"
							style="margin-right: 5px;">EARTH BOX
					</div>
				</div>
				<div class="col-md-6" style="text-align: left;">
					<div style="display: inline-block;">
						<div class="copyright" style="">팀장 조유빈 |
							사업자번호 123-456-789101</div>
						<div class="copyright" style="margin-top: -30px;">직업정보제공사업
							신고번호 2016-서울서초-0051</div>
						<div class="copyright" style="margin-top: -30px;">주소 서울특별시
							구로구 디지털로 30길 28, 609호 (당근서비스)</div>
						<div class="copyright" style="margin-top: -30px;">전화1544-9796
							|고객문의 cs@daangnservice.com</div>
					</div>
							
						<div style="display: inline-block; margin-left: 30%" class="copyright">제휴 문의 &nbsp;&nbsp;광고 문의&nbsp;&nbsp;
							PR 문의&nbsp;&nbsp; IR 문의</div>
						<div class="copyright" style="margin-bottom: 30px;">이용약관
							&nbsp;&nbsp;개인정보처리방침&nbsp;&nbsp;위치기반서비스 이용약관&nbsp;&nbsp;이용자보호 비전과
							계획</div>
					
				</div>
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->`
	
	$("#footer").html(list);
}