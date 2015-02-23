<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내정보수정</title>

<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
<meta charset="utf-8">
<meta name="description"
	content="Geass is premium and creative multipurpose onepage template">
<meta name="author" content="Eon">

<!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/jquery.selectbox.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/bootstrap-switch.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/fonts.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/font-awesome.min.css">
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/animate.css"> --%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/prettyPhoto.css">
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/revslider.css"> --%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/style.css">
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/responsive.css">
 --%>
<!-- Favicon and Apple Icons -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/logo_small.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="${pageContext.request.contextPath}/resources/geass/images/faviconx57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/geass/images/faviconx72.png">

<!--- jQuery -->
<script
	src="${pageContext.request.contextPath}/resources/geass/js/jquery-1.11.1.min.js"></script>

<!-- Queryloader -->
<script
	src="${pageContext.request.contextPath}/resources/geass/js/queryloader2.min.js"></script>

<!-- Modernizr -->
<script
	src="${pageContext.request.contextPath}/resources/geass/js/modernizr.js"></script>

<!-- 부트스트랩 끝!!!!!!!!!!!!!!!!!!!! -->

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

.form {
	float: left;
	margin-left: 39%;
	margin-top: 3%;
	width: 80%;
	font-family: HU미드나잇120;
}

.header {
	height: 50px
}

.title {
	margin-left: 43%;
	margin-top: 10%;
}
</style>

</head>
<body style="height: 100%;">
	<%@ include file="../../Header.jsp"%>

	<!-- 회원정보수정 -->
	<!-- <div class="col-md-10 col-sm-9 col-xs-12" id="updateform"> -->

	<div class="title">
		<h2>
			<font face="HU미드나잇140">내정보수정</font>
		</h2>
	</div>

	<div class="form">
		<div class="col-md-6 col-sm-12 col-xs-12 lg-margin">
			<form class="form-horizontal" action="memberupdate.do" method="post"
				style="width: 60%">

				<label for="inputId"></label> <input type="hidden"
					class="form-control" name="mid" placeholder="Id"
					value="${memcheck.mid}"> <label for="inputName">Name</label>
				<input type="text" class="form-control" name="mname"
					placeholder="Name" value="${memcheck.mname}"> <label
					for="inputPassword">Password</label> <input type="password"
					class="form-control" name="mpwd" placeholder="Password"
					value="${memcheck.mpwd}"> <label for="inputPhone">Phone</label>
				<input type="text" class="form-control" name="mphone"
					placeholder="Phone" value="${memcheck.mphone}"> <label
					for="inputEmail">Email</label> <input type="text"
					class="form-control" name="memail" placeholder="Email"
					value="${memcheck.memail}">
		</div>
		<br> <br>

		<div class="form-group">
			<div class="col-lg-10 col-lg-offset-2" style="margin-left: 7%">
				<button type="reset" class="btn btn-default">취소</button>
				<button type="submit" class="btn btn-lightblue">완료</button>
			</div>
		</div>

		</form>

	</div>

	</div>
	<!-- 회원정보수정 -->

	<!-- Plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/geass/js/jquery.selectbox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass/js/plugins.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass/js/jquery.prettyPhoto.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass/js/twitter/jquery.tweet.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.revolution.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass/js/main.js"></script>
	<%-- <script
	src="${pageContext.request.contextPath}/resources/geass/js/bootstrap-switch.min.js"></script>
 --%>
	<div id="footer"
		style="padding: 13px; position: absolute; bottom: 0px; width: 100%;">
		<%@ include file="../../Tail.jsp"%>
	</div>
</body>
</html>
