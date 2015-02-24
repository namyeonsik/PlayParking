<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약 취소</title>
<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
<!-- <meta charset="utf-8">
        <title>Geass - Creative Onepage Html5 Template</title> -->
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/prettyPhoto.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/revslider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass/css/responsive.css">

<!-- Favicon and Apple Icons -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/geass/images/favicon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="${pageContext.request.contextPath}/resources/geass/images/faviconx57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/geass/images/faviconx72.png">
<!-- 부트스트랩 끝!!!!!!!!!!!!!!!!!!!! -->

<style type="text/css">
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

.cancel {
	width: 100%;
	margin-top: 25%;
	margin-left: 15%;
	float: left;
	heith: 40%;
}

.btn {
	margin-top: 10%;
	float: left;
	margin-left: 23%;
}
</style>
</head>
<body>
	<div class="cancel"></div>
	<form name="chulfrm2" action="cancel.do" method="post">
		<input type="hidden" name="rid" value="${rid }">
		<div class="btn">
			<h6>
				<font face="HU미드나잇140">예약을 취소하시겠습니까?</font>
			</h6>

			<input type="submit" class="btn btn-lightblue" value="네!">
		</div>
	</form>
	<script type="text/javascript">
		
	</script>
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


</body>
</html>