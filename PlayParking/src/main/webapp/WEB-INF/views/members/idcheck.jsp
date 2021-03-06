<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ID 중복확인</title>

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

<!-- 부트스트랩 끝!!!!!!!!!!!!!!!!!!!! -->

<style>
.form-horizontal {
	width: 100%;
	margin-top: 10%;
	margin-left: 5%;
	float: left;
}

<
style type ="text/css">.header {
	height: 50px
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
</style>

<%
	String mid = request.getParameter("mid");
%>

<script type="text/javascript">

function validationcheck(){
	var mid = idcheckform.mid.value;
	if(mid.length < 5){
		alert("id는 4자이상으로 입력하세요.");
		idcheckform.mid.focus();
		return false; //list로 넘어가지마!		
	}else if(mid.length > 16){
		alert("id는 16자이내로 입력하세요.");
		idcheckform.mname.focus();
		return false;
	}else{
		return true;
	}
}

function idconfirm(){
	opener.document.myfrm.mid.value = "<%=mid%>";
		self.close();
	}
</script>
</head>
<body>

	<!-- 아이디중복확인 -->
	<form class="form-horizontal" id="idcheckform" name="idcheckform"
		action="idcheck.do" method="post" style="width: 85%; margin-left: 5%;">
		<div id="title" style="margin-left: 5%; margin-bottom: 13%;">
			<h3>
				<font face="HU미드나잇120" style="text-align: center;">ID 중복확인</font>
			</h3>
			<h6>
				<font size="3" ; face="HU미드나잇120" style="text-align: center;">ID는
					영문, 숫자로 4-16자 이내로 입력해 주세요.</font>
			</h6>
		</div>
		<input type="text" name="mid" id="mid" value="<%=mid%>"
			class="form-control">
		<button type="submit" style="float: right; font-family: HU미드나잇120;"
			class="btn btn-lightblue" onclick="validationcheck();">ID중복확인</button>

		<h6 style="margin-top: 1%;">
			<font face="HU미드나잇140">${idcheckmsg}</font>
		</h6>


	</form>
	<button type="button"
		style="margin-top: 10%; margin-right: 10%; margin-bottom: 3%; float: right; font-family: HU미드나잇120;"
		class="btn btn-default" onclick="idconfirm();">확인</button>
	<!-- 아이디중복확인 -->

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