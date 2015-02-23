<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주차장 정보 수정</title>
<style>

#updateform { float: left; margin-left: 20%; margin-right:20%; margin-top: 7%;margin-bottom: 15%; width: 55%; height: 50%}

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

<style type="text/css">
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
								<li><a href="parkinginfo.do">주차장 정보</a></li>
								<li><a href="parkingupdate.do">주차장 정보 수정</a></li>
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

<!-- 주차장정보수정 -->

<div class="module" id="updateform">
<div class="module-head">
<font size="4">주차장 정보 수정</font>
</div>
<form class="form-horizontal row-fluid" action="parkingupdate.do" method="post" style="width: 100%;">
<!-- 주차장정보수정 -->
<div class="controls">
<input type="hidden" id="basicinput" style="margin-bottom: 5%;margin-top: 8%" value="${parking.pid}" name="pid" class="span8">
</div>
<label class="control-label" for="basicinput" style="margin-top: 6%">Name</label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%;margin-top: 8%" value="${parking.pname}" name="pname" class="span8">
</div>
<label class="control-label" for="basicinput">Fare</label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%" value="${parking.pfare}" name="pfare" class="span8">
</div>
<label class="control-label" for="basicinput">Additional Fee</label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%" value="${parking.platefare}" name="platefare" class="span8">
</div>
<label class="control-label" for="basicinput">Phone</label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%" value="${parking.pphone}" name="pphone" class="span8">
</div>
<label class="control-label" for="basicinput">Capacity</label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 10%" value="${parking.pamount}" name="pamount" class="span8">
</div>
<div class="form-group">
<div class="col-lg-10 col-lg-offset-2">
    <button type="submit" class="btn btn-primary" style="margin-left: 33%;margin-right: 5%;margin-bottom: 5% ">Complete</button>
   <button type="reset" onclick="adminmain.do" class="btn btn-default" style="margin-bottom: 5% ">Cancel</button>
 </div>
</div>

</form>
</div>
<!-- 주차장정보수정 -->

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