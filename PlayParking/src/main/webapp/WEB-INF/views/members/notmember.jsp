<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>로그인하세요</title>
<!-- 부트스트랩-->
<meta charset="utf-8">

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
	font-family: "HU미드나잇120";
	src:
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.eot');
	src:
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.eot?#iefix')
		format('embedded-opentype'),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.woff) format('
		woff '),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.ttf')
		format('truetype');
	src: local(※),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.woff')
		format('woff');
}

.header {
	height: 50px;
	font-family: HU미드나잇120;
}

.body {
	height: 100px;
	margin-top: 16%;
	font-family: HU미드나잇120;
}
</style>

</head>
<body>
	<!-- 진짜헤더시작  -->
	<div class="header">
		<%@ include file="../Header.jsp"%>
	</div>
	<!-- 진짜헤더끝 -->

	<div class="modal-dialog" style="margin-top: 20%; margin-bottom: 23%;">
		<div class="modal-content">
			<div class="modal-header">

				<h4 class="modal-title" id="myModalLabel4">
					<font face="HU미드나잇120">잠깐!</font>
				</h4>
			</div>
			<!-- End .modal-header -->
			<div class="modal-body">
				<p>
					<font face="HU미드나잇120" size="4">주차장 검색과 예약 및 공지사항 확인 등 다양한
						메뉴들은</font>
				</p>
				<p>
					<font face="HU미드나잇120" size="4">로그인을 한 후에 이용하실 수 있습니다!</font>
				</p>
			</div>
			<!-- End .modal-body -->
			<div class="modal-footer">
				<!-- <a href="../memberlogin.do"><button class="btn btn-green" >Login</button></a> -->
				<br> <br>
			</div>
			<!-- End .modal-footer -->
		</div>
		<!-- End .modal-content -->
	</div>
	<!-- End .modal-dialog -->

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

	<div id="footer" style="padding: 13px;">
		<%@ include file="../Tail.jsp"%>
	</div>
</body>
</html>
