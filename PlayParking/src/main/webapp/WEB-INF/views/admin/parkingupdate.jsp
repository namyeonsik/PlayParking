<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주차장 정보 수정</title>
<style>

#updateform { float: left; margin-left: 10%; margin-top:10%; width: 60%;}

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
   <div class="control-group"> 
					<label class="control-label" for="basicinput">Basic Input</label>
					<div class="controls">
						<input type="text" id="basicinput"
							placeholder="Type something here..." class="span8"> <span
							class="help-inline">Minimum 5 Characters</span>
					</div>
				</div>
  
  <fieldset>
 				

				<div class="form-group">
      <label for="inputId" class="col-lg-2 control-label"></label>
      <div class="col-lg-10">
        <input type="hidden" class="form-control" name="pid" placeholder="Id" value="${parking.pid}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputName" class="col-lg-2 control-label">Name</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="pname" placeholder="Name" value="${parking.pname}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputName" class="col-lg-2 control-label">Fare</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="pfare" placeholder="Fare" value="${parking.pfare}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Phone</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="pphone" placeholder="Phone" value="${parking.pphone}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputPhone" class="col-lg-2 control-label">Count</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="pcount" placeholder="수용가능한 대수" value="${parking.pcount}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Complete</button>
      </div>
    </div>

	<div class="control-group">
	<div class="controls">
			<button type="submit" class="btn">Complete</button>
	</div>
	</div>

			</fieldset>
</form>
</div>
<!-- 주차장정보수정 -->

</body>
</html>