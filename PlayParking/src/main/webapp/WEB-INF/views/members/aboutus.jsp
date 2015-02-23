<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About</title>



<!-- 부트스트랩 !!!!!!!!!!! -->
<meta charset="utf-8">

        <meta name="description" content="Geass is premium and creative multipurpose onepage template">
        <meta name="author" content="Eon">

        <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/jquery.selectbox.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/bootstrap-switch.css">
		
		
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/fonts.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/prettyPhoto.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/revslider.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/responsive.css">

        <!-- Favicon and Apple Icons -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/logo_small.png">
        <link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/resources/geass/images/faviconx57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/geass/images/faviconx72.png">

        <!--- jQuery -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery-1.11.1.min.js"></script>

    	<!-- Queryloader -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/queryloader2.min.js"></script>

        <!-- Modernizr -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/modernizr.js"></script>

       <!-- 부트스트랩 끝!!!!!!!!!!!!!!!!!!!! -->
<style>
@font-face{
   font-family:"HU미드나잇120";
   src:url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.eot');
   src:url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.eot?#iefix') format('embedded-opentype'),
   url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.woff) format('woff'),
   url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.ttf') format('truetype');
   src:local(※), url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.woff') format('woff');
}
@font-face{
   font-family:"HU미드나잇140";
   src:url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.eot');
   src:url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.eot?#iefix') format('embedded-opentype'),
   url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.woff) format('woff'),
   url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.ttf') format('truetype');
   src:local(※), url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.woff') format('woff');
}

.header {
	height: 50px;
	font-family: HU미드나잇120;
}

.body {
	margin-top: 50px;
	font-family: HU미드나잇120;
	}

</style>

</head>
 <body>
<!-- 진짜헤더시작 -->
	<div class="header">
		<%@ include file="../Header.jsp"%>
	</div>
	<!-- 진짜헤더끝 -->

<div class="body">
	<!-- About Us Section -->
	<section id="aboutus" class="section" style="margin-bottom: 5%;">
		<header class="container text-center">
			<h1 class="section-title">About Us</h1>
			<p class="section-desc">I'm Developer는 공유를 통한 가치 창출에 대해 고민하는 개발자들입니다. </p>
		</header>

		<div class="container" >
			<div class="row">

				<div class="col-md-3 col-xs-6 member-container">
					<div class="member left">
						<div class="member-wrapper">
							<figure class="front">
								<img
									src="${pageContext.request.contextPath}/resources/minji.jpg"
									alt="eric" class="img-responsive">
							</figure>
			
						<div class="back">
								<div class="vcenter-container">
									<div class="vcenter">
										<h2>Kwon Minji</h2>
										<p>Developer</p>
										<hr>
										<ul class="social-icons-container small-icons">
											<li><a href="http://www.facebook.com/k91311" class="facebook add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Facebook"><i class="fa fa-facebook"></i></a></li>
										</ul>
									</div>
									<!-- End .vcenter -->
								</div>
								<!-- End .vcenter-container -->

							</div>
							<!-- End .back -->
						</div>
						<!-- End .member-wrapper -->
					</div>
					<!-- End .member -->
				</div>
				<!-- End .col-md-3 -->

				<div class="col-md-3 col-xs-6 member-container">
					<div class="member left">
						<div class="member-wrapper">
							<figure class="front">
								
								<img
									src="${pageContext.request.contextPath}/resources/dayea.jpg"
									alt="barbara" class="img-responsive">
							</figure>
							<div class="back">
								<div class="vcenter-container">
									<div class="vcenter">
										<h2>Kim Dayea</h2>
										<p>Developer</p>
										<hr>
										<ul class="social-icons-container small-icons">
											<li><a href="http://www.facebook.com/kim.dayea.92" class="facebook add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Facebook"><i class="fa fa-facebook"></i></a></li>
											
										</ul>
									</div>
									<!-- End .vcenter -->
								</div>
								<!-- End .vcenter-container -->

							</div>
							<!-- End .back -->
						</div>
						<!-- End .member-wrapper -->
					</div>
					<!-- End .member -->
				</div>
				<!-- End .col-md-3 -->

				<div class="col-md-3 col-xs-6 member-container">
					<div class="member right">
						<div class="member-wrapper">
							<figure class="front">
								<img
									src="${pageContext.request.contextPath}/resources/yeonsik.jpg"
									alt="Stever" class="img-responsive">
							</figure>
							<div class="back">
								<div class="vcenter-container">
									<div class="vcenter">
										<h2>Nam Yeonsik</h2>
										<p>Developer</p>
										<hr>
										<ul class="social-icons-container small-icons">
											<li><a href="http://www.facebook.com/dustlr92" class="facebook add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Facebook"><i class="fa fa-facebook"></i></a></li>
											
										</ul>
									</div>
									<!-- End .vcenter -->
								</div>
								<!-- End .vcenter-container -->

							</div>
							<!-- End .back -->
						</div>
						<!-- End .member-wrapper -->
					</div>
					<!-- End .member -->
				</div>
				<!-- End .col-md-3 -->

				<div class="col-md-3 col-xs-6 member-container">
					<div class="member right">
						<div class="member-wrapper">
							<figure class="front">
								<img
									src="${pageContext.request.contextPath}/resources/insoo.jpg"
									alt="Jane" class="img-responsive">
							</figure>
							<div class="back">
								<div class="vcenter-container">
									<div class="vcenter">
										<h2>Shin Insoo</h2>
										<p>Developer</p>
										<hr>
										<ul class="social-icons-container small-icons">
											<li><a href="https://www.facebook.com/insoo.shin.7" class="facebook add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Facebook"><i class="fa fa-facebook"></i></a></li>
											
										</ul>
									</div>
									<!-- End .vcenter -->
								</div>
								<!-- End .vcenter-container -->

							</div>
							<!-- End .back -->
						</div>
						<!-- End .member-wrapper -->
					</div>
					<!-- End .member -->
				</div>
				<!-- End .col-md-3 -->

			</div>
			<!-- End .row -->
		</div>
		<!-- End .container -->

		<div class="lg-margin visible-xs clearfix"></div>
		<!-- space -->

		<div class="container" style="font: ">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					
					<blockquote >
					<h4>I'm Developer<font face="HU미드나잇120">의 이야기입니다!</font></h4>
					<p>우리는 <span class="highlight lightblue">'노는 주차장'</span> 프로젝트를 시작하게 된 이유는 
					서울의 주차 공간 부족을 직접 체험한 후 였습니다.</p>
					<p>약속이 있는 주말! 차를 이용하여 약속장소에 간다는 것은 주차 공간을 항상 염두해둬야 한다는 어려움이 있습니다. 
					왜냐하면 영화관,쇼핑몰의 주차장은 꽉 차 있으며 공영주차장 또한 자리가 없기 때문이죠.   </p>
					<p>
						<span class="highlight red">주차 공간 부족!</span> 우리 <b>I'm Developer</b> 는 이 문제를 해결하고자 
					고민하고 또 고민했습니다. 그리고 번화가에 위치하며 주차장 관리인이 있는 기업 소유의 건물 주차장에 관심을 갖게 되었습니다.	</p>
					<P>직원들이 퇴근하고 나면 사용되지 않는 건물의 빈 주차장을 주말 서울의 주차공간 부족 문제의 대안으로 생각한 우리는 
					 
			<span class="highlight yellow">CSV</span>(Creating Shared Value)를 통한 기업의 참여를 이끌어내기 위해 '노는 주차장'
			프로젝트를 시작한 것 입니다.  
				</p>	
					<p>
						 <!-- <a href="membermain.do"
							class="scrollto add-tooltip" data-placement="bottom"
							title="Get in Touch Now!">Contact Us!</a> -->
					</p>
					</blockquote>
				</div>
				<!-- End .col-md-6 -->
				<div class="col-md-6 col-sm-6">
					
					<blockquote >
					<h4><font face="HU미드나잇120">'노는 주차장'을 소개합니다!</font></h4>
					<h6><font face="HU미드나잇120">일반 사용자</font></h6>
					<p>우리는 사용자가 최소한의 개인정보 입력을 통해서 우리의 Service를 이용하도록 사용자를 배려했습니다.지금 당장 <a href="join.do"
							class="scrollto add-tooltip" data-placement="bottom"
							title="Join Now!">Join</a> 해보세요! 
					</p>
					<p>
						가입을 통해 ID를 만들었다면 당장 로그인 하세요! 그리고는<span class="highlight lightblue">Reservation</span> 기능을 통해 주차장을 예약하세요! </p>
					<p>	<span class="highlight lightblue">MyParking</span> 기능을 통해 나의정보, 예약확인, 포인트확인 등의 기능을 통해 당신의 정보를 관리 할 수 있습니다
					</p>
					<p></p>
					<h6><font face="HU미드나잇120">주차장 관리자</font></h6>
					<p>
						오늘의 입차 차량 정보부터 출차확인까지 손 쉽게 주차장을 <span class="highlight yellow">관리</span> 할 수 있으며,
						<span class="highlight lightblue">Report</span> 기능을 통해 내 주차장의 수익,내 주변 주차장 정보 등을 한 눈에 확인 할 수 있습니다!  
						</p>
			<P>				
						 <!-- <a href="membermain.do"
							class="scrollto add-tooltip" data-placement="bottom"
							title="Get in Touch Now!">Contact Us!</a> -->
				</P>	
					</blockquote>
				</div>
				<!-- End .col-md-6 -->

				<div class="md-margin visible-xs clearfix"></div>
				<!-- space -->

				
			</div>
			<!-- End .row -->
		</div>
		<!-- End .container -->

		<div class="md-margin visible-xs clearfix"></div>
		<!-- space -->

		
	</section>
	<!-- about US -->
 
 <!-- Plugins -->
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.selectbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.prettyPhoto.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/twitter/jquery.tweet.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.tools.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.revolution.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap-switch.min.js"></script>
 
  </div>
  
<div id="footer" style="padding:13px;">
<%@ include file="../Tail.jsp" %>
</div>
</body>
</html>
