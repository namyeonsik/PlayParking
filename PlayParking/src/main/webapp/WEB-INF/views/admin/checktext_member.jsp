<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>주차장 공지사항</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 헤더 부트스트랩-->
<meta name="description"
	content="Geass is premium and creative multipurpose onepage template">
<meta name="author" content="Eon">

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

<!-- 부트스트랩-->
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
	height: 50px;
	font-family: 'HU미드나잇120';
}

.body {
	margin-top: 50px;
	font-family: 'HU미드나잇120';
}

.title {
	text-align: center;
	margin-top: 10%;
	font-family: 'HU미드나잇140';
}

.table {
	margin-top: 10%;
	font-family: 'HU미드나잇120';
}
</style>

</head>

<body>
	<div class="header">
		<%@ include file="../Header.jsp"%>
	</div>
	<%
		int number = 0;
		int listSize = 10;
		int currentPage = 0;
		if (request.getParameter("pageNum") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("pageNum"));
		}
		int nextPage = currentPage + 1;
		int startRow = (currentPage - 1) * listSize + 1;
		int endRow = currentPage * listSize;
		int nsize = 0;
	%>
	<div class="title">
		<h2>
			<font face="HU미드나잇140">주차장 공지사항</font>
		</h2>
	</div>

	<div id="wrapper">
		<section id="content">
			<div class="container">

				<div class="row">
					<div class="col-md-12 single">
						<div class="article-author">
							<figure>
								<img
									src="${pageContext.request.contextPath}/resources/images/user.png"
									alt="Author">
							</figure>
							<h4>
								<a href="#"><font face="HU미드나잇120">${title}</font></a>&nbsp;&nbsp;&nbsp;

								<font size=3 face="HU미드나잇120">-${aid}&nbsp;&nbsp;&nbsp; <c:set
										var="d" value="${date}" /> <fmt:formatDate value="${d}"
										pattern="yyyy-MM-dd a h:mm" />
								</font>
								<div class="pull-right">
									<a class="btn" href='noticelist1.do'><font face="HU미드나잇120">목록으로</font></a>
								</div>
							</h4>
							<p>
								<font face="HU미드나잇120">${text}</font>
							</p>
						</div>
						<!-- End .article-author -->
					</div>
					<!-- End .col-md-8 -->
				</div>
				<!-- End .row -->
			</div>
			<!-- End .container -->
		</section>
		<!-- End #content -->
	</div>
	<!-- End #wrapper -->

	<!-- Plugins -->
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

	<div id="footer"
		style="padding: 13px; position: absolute; bottom: 0px; width: 100%;">
		<%@ include file="../Tail.jsp"%>
	</div>
</body>
</html>

</body>
</html>