<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주차장 정보 수정</title>
<style>

#updateform { float: left; margin-left: 20%; margin-right:20%; margin-top: 10%; width: 55%; height: 50%}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자</title>
<link type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/css/theme.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/images/icons/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css"
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	rel='stylesheet'>

</head>
<body>
 <div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container" style="margin-top: 50px;">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i></a><a class="brand" href="adminmain.do">Admin</a>
				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav nav-icons">
						<li class="active"><a href="#"><i class="icon-envelope"></i></a></li>
						<li><a href="#"><i class="icon-eye-open"></i></a></li>
						<li><a href="#"><i class="icon-bar-chart"></i></a></li>
					</ul>
				 <ul class="nav pull-right"> 
						 
						<li><a href="membermain.do">UserPage</a></li>
						<li class="nav-user dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="resources/images/user.png" class="nav-avatar" /> <b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">YourParking Profile</a></li>
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
	<!-- /navbar -->

<!-- 주차장정보수정 -->

<div class="module" id="updateform">
<div class="module-head">
<h3>Parking Info Update</h3>
</div>
<form class="form-horizontal row-fluid" action="parkingupdate.do" method="post" style="width: 80%">
<!-- 주차장정보수정 -->
<label class="control-label" for="basicinput" style="margin-top: 6%">Name</label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%;margin-top: 8%" value="${parking.pname}"	class="span8">
</div>
<label class="control-label" for="basicinput">Fare</label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%" value="${parking.pfare}"	class="span8">
</div>
<label class="control-label" for="basicinput">Additional Fee</label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%" value="${parking.platefare}" class="span8">
</div>
<label class="control-label" for="basicinput">Phone</label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 5%" value="${parking.pphone}" class="span8">
</div>
<label class="control-label" for="basicinput">Capacity</label>
<div class="controls">
<input type="text" id="basicinput" style="margin-bottom: 10%" value="${parking.pamount}" class="span8">
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

</body>
</html>