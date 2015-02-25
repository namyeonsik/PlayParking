<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>예약 완료</title>

<!-- 부트스트랩-->
<meta charset="utf-8">

<!-- <title>Geass - Creative Onepage Html5 Template</title> -->
<meta name="description"
	content="Geass is premium and creative multipurpose onepage template">
<meta name="author" content="Eon">

<!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/jquery.selectbox.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/bootstrap-switch.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/fonts.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/prettyPhoto.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/revslider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/responsive.css">

<!-- Favicon and Apple Icons -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/logo_small.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="${pageContext.request.contextPath}/resources/geass2/images/faviconx57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/geass2/images/faviconx72.png">

<!--- jQuery -->
<script
	src="${pageContext.request.contextPath}/resources/geass2/js/jquery-1.11.1.min.js"></script>

<!-- Queryloader -->
<script
	src="${pageContext.request.contextPath}/resources/geass2/js/queryloader2.min.js"></script>

<!-- Modernizr -->
<script
	src="${pageContext.request.contextPath}/resources/geass2/js/modernizr.js"></script>

<!-- 부트스트랩 끝-->

<style>

@font-face {
	font-family: "HU미드나잇140";
	src:
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.eot');
	src:
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.eot?#iefix')
		format('embedded-opentype'),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.woff) format('
		woff '),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.ttf')
		format('truetype');
	src: local(※),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.woff')
		format('woff');
}

.header {
	height: 50px
}

.title {
	margin-top: 10%;
	margin-left: 45%;
}

.container {
	margin-left: 10%;
	margin-right: 20%;
}

.container .img {
	margin-top: 3%;
	margin-left: 5%;
}

.container .ticket {
	margin-top: 5%;
	margin-left: 55%;
	font-family: HU미드나잇140;
}
</style>

</head>
<body>
	<!-- 진짜헤더시작 -->
	<div class="header" style="margin-left: -1%">
		<%@ include file="../Header.jsp"%>
	</div>
	<!-- 진짜헤더끝 -->
	<!-- 예약완료 -->
	<div style="height: 68%;">
		<div class="title">
			<h2>
				<font face="HU미드나잇140">예약 완료</font>
			</h2>
		</div>

		<div id="wrapper">
			<section id="content">
			<div class="container">

				<div class="row">
					<div class="col-md-12 single">
						<div class="article-author" style="width: 90%">

							<div class="img">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<p>
										<img src="${pname.pimage}" alt="boy"
											class="wow rubberBand pull-left lg-separator-right2x"
											data-wow-delay="0.9s" style="width: 90%; height: auto;">
									</p>
								</div>
							</div>


							<div class="ticket">
								<blockquote class="lightblue">
									<!-- 간격 조정 수정 금지 -->
									예약자 ID : ${reservation.mid} <br> 
									주　차 장 : ${pname.pname} <br>
									위　 　치 : ${pname.paddress} <br> 
									<i class="fa fa-star"></i>T i p<i class="fa fa-star"></i> : ${pname.ptip} <br>
									예약 날짜 :
									<c:set var="d" value="${reservation.rstart}" />
									<fmt:formatDate value="${d}" pattern="yyyy/MM/dd" />
									<br>
									<br> <cite>예약 내용이</cite><br> <cite>메일로
										발송되었습니다!</cite>
									<!-- 간격 조정 수정 금지 -->	
								</blockquote>
							</div>
						</div>
						<!-- End .article-author -->
					</div>
					<!-- End .col-md-8 -->
				</div>
				<!-- End .row -->
			</div>
			<!-- End .container --> </section>
			<!-- End #content -->
		</div>


		<!-- Plugins -->
		<script
			src="${pageContext.request.contextPath}/resources/geass2/js/jquery.selectbox.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/geass2/js/bootstrap.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/geass2/js/plugins.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/geass2/js/jquery.prettyPhoto.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/geass2/js/twitter/jquery.tweet.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/geass2/js/jquery.themepunch.tools.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/geass2/js/jquery.themepunch.revolution.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/geass2/js/main.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/geass2/js/bootstrap-switch.min.js"></script>

		<div class="all"
			style="padding: 13px; position: absolute; bottom: 0px; width: 100%;">
			<div id="footer" style="padding: 13px; width: 100%; margin-top: 5%;">
				<%@ include file="../Tail.jsp"%>
			</div>
		</div>
	</div>
	<!-- 예약완료 -->
</body>
</html>