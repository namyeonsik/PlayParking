<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 주차장 정보</title>
<style>

#updateform { float: left; margin-left: 20%; margin-right:20%; margin-top: 7%;margin-bottom: 15%; width: 55%; height: 55%; }
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
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link type="text/css" href="${pageContext.request.contextPath}/resources/edmin/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/edmin/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/edmin/css/theme.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/edmin/images/icons/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css"
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	rel='stylesheet'>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/logo_small.png">



</head>

<body data-post="http://www.egrappler.com/responsive-bootstrap-admin-template-edmin/">
	 <div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container" style="margin-top: 50px;">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i></a><a class="brand" href="adminmain.do">Manager</a>
				<div class="nav-collapse collapse navbar-inverse-collapse">
					
				 <ul class="nav pull-right"> 
					<li class="nav-user dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="resources/images/user.png" class="nav-avatar" /> <b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="parkinginfo.do"><font face="HU미드나잇120">주차장 정보</font></a></li>
								<li><a href="parkingupdate.do"><font face="HU미드나잇120">주차장 정보 수정</font></a></li>
								<li class="divider"></li>
								<li><a href="adminlogout.do">Logout</a></li>
							</ul></li>
						<li><a href="membermain.do">UserPage</a></li>
					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
		</div>
		<!-- /navbar-inner -->
	</div>

<!-- 내주차장정보 -->

<div class="module" id="updateform">
<div class="module-head">
<font size="4" face="HU미드나잇120">주차장 정보</font>
</div>
<form class="form-horizontal row-fluid" action="parkinginfo.do" method="get">
<!-- 주차장정보수정 -->
<label class="control-label" for="basicinput" style="margin-top: 6%;margin-right: 5%;"><font size="3" face="HU미드나잇120">이름</font></label>
<p class="text-success" style="margin-top: 6%; margin-left: 5%;">${parking.pname}</p>

<label class="control-label" for="basicinput" style="margin-top: 4%;margin-right: 5%;"><font size="3" face="HU미드나잇120">주차요금</font></label>
<p class="text-success" style="margin-top: 6%; margin-left: 5%;">${parking.pfare} 원</p>

<label class="control-label" for="basicinput" style="margin-top: 4%;margin-right: 5%;"><font size="3" face="HU미드나잇120">추가요금</font></label>
<p class="text-success" style="margin-top: 6%; margin-left: 5%;">${parking.platefare} 원</p>

<label class="control-label" for="basicinput" style="margin-top: 4%;margin-right: 5%;"><font size="3" face="HU미드나잇120">연락처</font></label>
<p class="text-success" style="margin-top: 6%; margin-left: 5%;">${parking.pphone}</p>

<label class="control-label" for="basicinput" style="margin-top: 4%;margin-right: 5%;margin-bottom: 5%;"><font size="3" face="HU미드나잇120">수용차수</font></label>
<p class="text-success" style="margin-top: 6%; margin-left: 5%;margin-bottom: 5%;">${parking.pamount}</p>

</form>
</div>
<!-- 내주차장정보 -->

<div class="footer">
	<div class="container">
	<b class="copyright">&copy; 2015 PlayParking </b>All rights reserved.
	</div>
</div>

</body>

<script src="${pageContext.request.contextPath}/resources/edmin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/edmin/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/edmin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</html>