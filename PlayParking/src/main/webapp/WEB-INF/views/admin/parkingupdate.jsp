<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주차장 정보 수정</title>
<style>

#updateform { float: left; margin-left: 20%; margin-right:20%; margin-top: 2%; width: 55%; height: 50%}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자</title>
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

</head>
<bodydata-post="http://www.egrappler.com/responsive-bootstrap-admin-template-edmin/">
	 <div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container" style="margin-top: 50px;">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i></a><a class="brand" href="adminmain.do">Admin</a>
				<div class="nav-collapse collapse navbar-inverse-collapse">
					
				 <ul class="nav pull-right"> 
						 
						<li><a href="membermain.do">UserPage</a></li>
						<li class="nav-user dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="resources/images/user.png" class="nav-avatar" /> <b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="parkinginfo.do">YourParking Profile</a></li>
								<li><a href="parkingupdate.do">EditParking Profile</a></li>
								<li class="divider"></li>
								<li><a href="adminlogout.do">Logout</a></li>
							</ul></li>
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
<font size="4">Parking Info Update</font>
</div>
<form class="form-horizontal row-fluid" action="parkingupdate.do" method="post" style="width: 100%;">
<!-- 주차장정보수정 -->
<label class="control-label" for="basicinput" style="margin-top: 6%"><font size="3">Name</font></label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%;margin-top: 8%" value="${parking.pname}"	class="span10">
</div>
<label class="control-label" for="basicinput"><font size="3">Fare</font></label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%" value="${parking.pfare}"	class="span10">
</div>
<label class="control-label" for="basicinput"><font size="3">Additional Fee</font></label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%" value="${parking.platefare}" class="span10">
</div>
<label class="control-label" for="basicinput"><font size="3">Phone</font></label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%" value="${parking.pphone}" class="span10">
</div>
<label class="control-label" for="basicinput"><font size="3">Capacity</font></label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 10%" value="${parking.pamount}" class="span10">
</div>
<div class="form-group">
<div class="col-lg-10 col-lg-offset-2" style="text-align: center;">
    <button type="submit" class="btn btn-primary" style="margin-right: 3%;margin-bottom: 5% "><font size="3">Complete</font></button>
	<button type="reset" onclick="adminmain.do" class="btn btn-default" style="margin-bottom: 5% "><font size="3">Cancel</font></button>
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