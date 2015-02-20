<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About Us</title>

<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
<meta charset="utf-8">
<!-- <title>회원정보수정</title> -->
        <title>Geass - Creative Onepage Html5 Template</title>
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
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/geass/images/favicon.png">
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
.header {
	height: 50px
}

.body {
	margin-top: 50px;
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
	<section id="aboutus" class="section">
		<header class="container text-center">
			<h1 class="section-title">About Us</h1>
			<p class="section-desc">We a group of people who like the design
				and development. We enjoy the life and create the new things for
				you...</p>
		</header>

		<div class="container" >
			<div class="row">

				<div class="col-md-3 col-xs-6 member-container">
					<div class="member left">
						<div class="member-wrapper">
							<figure class="front">
								<img
									src="${pageContext.request.contextPath}/resources/geass/images/team/eric.jpg"
									alt="eric" class="img-responsive">
							</figure>
							<div class="back">
								<div class="vcenter-container">
									<div class="vcenter">
										<h2>Kwon Minji</h2>
										<p>Founder</p>
										<hr>
										<ul class="social-icons-container small-icons">
											<li><a href="#" class="facebook add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Facebook"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#" class="twitter add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Twitter"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#" class="googleplus add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Google +"><i
													class="fa fa-google-plus"></i></a></li>
											<li><a href="#" class="dribbble add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Find us at Dribbble"><i class="fa fa-dribbble"></i></a></li>
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
									src="${pageContext.request.contextPath}/resources/geass/images/team/barbara.jpg"
									alt="barbara" class="img-responsive">
							</figure>
							<div class="back">
								<div class="vcenter-container">
									<div class="vcenter">
										<h2>Kim Dayea</h2>
										<p>Co-Founder</p>
										<hr>
										<ul class="social-icons-container small-icons">
											<li><a href="#" class="facebook add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Facebook"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#" class="twitter add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Twitter"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#" class="googleplus add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Google +"><i
													class="fa fa-google-plus"></i></a></li>
											<li><a href="#" class="dribbble add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Find us at Dribbble"><i class="fa fa-dribbble"></i></a></li>
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
									src="${pageContext.request.contextPath}/resources/geass/images/team/steve.jpg"
									alt="Stever" class="img-responsive">
							</figure>
							<div class="back">
								<div class="vcenter-container">
									<div class="vcenter">
										<h2>Nam Yeonsik</h2>
										<p>Developer</p>
										<hr>
										<ul class="social-icons-container small-icons">
											<li><a href="#" class="facebook add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Facebook"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#" class="twitter add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Twitter"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#" class="googleplus add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Google +"><i
													class="fa fa-google-plus"></i></a></li>
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
									src="${pageContext.request.contextPath}/resources/geass/images/team/jane.jpg"
									alt="Jane" class="img-responsive">
							</figure>
							<div class="back">
								<div class="vcenter-container">
									<div class="vcenter">
										<h2>Shin Insoo</h2>
										<p>Designer</p>
										<hr>
										<ul class="social-icons-container small-icons">
											<li><a href="#" class="facebook add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Facebook"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#" class="twitter add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Twitter"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#" class="googleplus add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Follow us on Google +"><i
													class="fa fa-google-plus"></i></a></li>
											<li><a href="#" class="dribbble add-tooltip"
												data-placement="top" data-toggle="tooltip"
												title="Find us at Dribbble"><i class="fa fa-dribbble"></i></a></li>
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

		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<h3>Get to know us!</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Dolores tempora quasi in, illum repudiandae, ipsum totam fugiat
						aliquid corporis soluta cupiditate rerum nam nisi quas, mollitia
						exercitationem voluptatibus ut. Eligendi.</p>
					<p>
						Porro, quo natus. <span class="highlight red">Accusamus
							veritatis velit</span> quas minus esse ipsum, impedit! Accusamus
						nesciunt beatae tempore suscipit quam molestias similique sed, cum
						vel neque, eveniet ab? A magni libero, debitis veritatis! Nostrum
						veritatis dolores illum, similique consectetur repudiandae <span
							class="highlight yellow">pariatur voluptates</span> aut, itaque
						sunt consequatur praesentium doloribus soluta dolore architecto
						quae quos commodi facilis numquam eos atque molestiae. Consequatur
						sequi veritatis omnis!
					</p>
					<p>
						Dicta adipisci, mollitia molestiae voluptatem itaque atque rerum
						nemo. Soluta minima omnis odit. <a href="#contactus"
							class="scrollto add-tooltip" data-placement="bottom"
							title="Get in Touch Now!">Contact Us!</a>
					</p>
				</div>
				<!-- End .col-md-6 -->

				<div class="md-margin visible-xs clearfix"></div>
				<!-- space -->

				<div class="col-md-6 col-sm-6">
					<div class="accordion-panel" id="accordion-panel2">
						<div class="accordion-panel-group panel">
							<a class="accordion-panel-title yellow" data-toggle="collapse"
								data-parent="#accordion-panel2" href="#panel-one2"><i
								class="fa fa-briefcase"></i>What we do?</a>

							<div class="accordion-panel-body collapse in" id="panel-one2">
								<div class="accordion-body-wrapper">
									<p>Pellentesque malesuada sollicitudin fermentum. Nullam
										ultricesposuere congue. Sed convallis purus a sem tincidunt et
										tempor turpis rhoncus. Nullam pretium eleifend neque, eget
										congue purus tincidunt id. Duis quam vitae condimentum.</p>
									<p>Sed pretium, elit eget fermentum mattis, tortor eros
										aliquam purus, a nisl a nulla. Proin eu orci orci, ac
										venenatis tortor. Donec laoreet, nu fringilla mollis, lacus
										mauris pellentesque odio, ut rhoncus erat risus sed.</p>
								</div>
								<!-- End .accordion-body-wrapper -->
							</div>
							<!-- End .accordion-body -->
						</div>
						<!-- End .accordion-group -->
						<div class="accordion-panel-group panel">

							<a class="accordion-panel-title red" data-toggle="collapse"
								data-parent="#accordion-panel2" href="#panel-three2"><i
								class="fa fa-bar-chart"></i>How we do?</a>

							<div class="accordion-panel-body collapse" id="panel-three2">
								<div class="accordion-body-wrapper">
									<p>Pellentesque malesuada sollicitudin fermentum. Nullam
										ultricesposuere congue. Sed convallis purus a sem tincidunt et
										tempor turpis rhoncus. Nullam pretium eleifend neque, eget
										congue purus tincidunt id. Duis quam vitae condimentum.</p>
									<p>Sed pretium, elit eget fermentum mattis, tortor eros
										aliquam purus, a nisl a nulla. Proin eu orci orci, ac
										venenatis tortor. Donec laoreet, nu fringilla mollis, lacus
										mauris pellentesque odio, ut rhoncus erat risus sed.</p>
								</div>
								<!-- End .accordion-body-wrapper -->
							</div>
							<!-- End .accordion-panel-body -->
						</div>
						<!-- End .accordion-panel-group -->
						<div class="accordion-panel-group panel">

							<a class="accordion-panel-title lightblue" data-toggle="collapse"
								data-parent="#accordion-panel2" href="#panel-four2"><i
								class="fa fa-group"></i>More About Us!</a>

							<div class="accordion-panel-body collapse" id="panel-four2">
								<div class="accordion-body-wrapper">
									<p>Pellentesque malesuada sollicitudin fermentum. Nullam
										ultricesposuere congue. Sed convallis purus a sem tincidunt et
										tempor turpis rhoncus. Nullam pretium eleifend neque, eget
										congue purus tincidunt id. Duis quam vitae condimentum.</p>
									<p>Sed pretium, elit eget fermentum mattis, tortor eros
										aliquam purus, a nisl a nulla. Proin eu orci orci, ac
										venenatis tortor. Donec laoreet, nu fringilla mollis, lacus
										mauris pellentesque odio, ut rhoncus erat risus sed.</p>
								</div>
								<!-- End .accordion-body-wrapper -->
							</div>
							<!-- End .accordion-panel-body -->
						</div>
						<!-- End .accordion-panel-group -->
					</div>
					<!-- End .accordion-panel -->
				</div>
				<!-- End .col-md-6 -->
			</div>
			<!-- End .row -->
		</div>
		<!-- End .container -->

		<div class="md-margin visible-xs clearfix"></div>
		<!-- space -->

		<div class="container img-container">
			<div class="row">
				<div class="col-md-10 col-md-push-1 col-sm-10 col-sm-push-1">
					<img
						src="${pageContext.request.contextPath}/resources/geass/images/geass.png"
						alt="Geass" class="img-responsive wow fadeInUpBig">
				</div>
				<!-- End .col-md-8 -->
			</div>
			<!-- End .row -->
		</div>
		<!-- End .container -->
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
</body>
</html>