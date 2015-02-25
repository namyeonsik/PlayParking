<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>포인트 충전</title>
<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
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
	href="${pageContext.request.contextPath}/resources/geass2/images/favicon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="${pageContext.request.contextPath}/resources/geass2/images/faviconx57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/geass2/images/faviconx72.png">

<!-- 부트스트랩 끝-->

<style>
.form-horizontal {
	width: 100%;
	margin-top: 20%;
	margin-left: 5%;
	float: left;
}

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

.all {
	font-family: "HU미드나잇120";
}
</style>
<script type="text/javascript">
	function validationChk() {
		var email = myfrm.mpoint.value;

		if (email == "" || email == null) {
			alert("포인트를 입력하세요.");
			myfrm.mpoint.focus();
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<div class="all">
		<!-- 포인트충전 -->
		<form class="form-horizontal" name="myfrm" action="paypoint.do"
			method="post" style="width: 65%" onsubmit="return validationChk()">
			<div id="title" style="margin-left: 40%; width: 100%;">
				<h2>
					<font face="HU미드나잇140">Point 충전</font>
				</h2>
			</div>

			<div id="input" style="margin-left: 20%; width: 100%; size: 100%">
				<label for="inputId"></label> <input type="hidden"
					class="form-control" name="mid" placeholder="Id"
					value="${memcheck.mid}"> <label for="inputPoint"></label> <input
					type="text" class="form-control" name="mpoint"
					placeholder="금액을 입력하세요(단위:천원)">
			</div>

			<div class="form-group" style="margin-left: 37%; width: 100%;">
				<div class="col-lg-10 col-lg-offset-2">
					<button type="submit" class="btn btn-lightblue">충전</button>
					<button type="button" class="btn btn-lightblue"
						onclick="window.close();">닫기</button>
				</div>
			</div>
		</form>
	</div>
	<!-- 포인트충전 -->

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

</body>
</html>