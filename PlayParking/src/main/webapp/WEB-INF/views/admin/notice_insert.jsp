<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<body data-post="http://www.egrappler.com/responsive-bootstrap-admin-template-edmin/">
 <div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container" style="margin-top: 50px;">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i></a><a class="brand" href="adminmain.do">Admin</a>
				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav nav-icons">
						<li class="active"><a href="#"><i class="icon-envelope"></i></a></li>
						<li><a href="#myfare"><i class="icon-eye-open"></i></a></li>
						<li><a href="#saleschart"><i class="icon-bar-chart"></i></a></li>
					</ul>
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
		 
<form action="noticeinsert.do" method="post" name="myfrm" onsubmit="return validation();">
	<div class="wrapper">	
	<div class="container">
		<div class="row">
			<div class="content">
				<div class="module message">
					<div class="module-head" style="height: 30px">
						<div class="pull-left">
						<font size="4">Parking Notice Update</font>
						</div>						
						<div class="pull-right">
						<input class="btn btn-primary" type="submit" value="등록 완료">
						<input class="btn btn-primary" type="reset" value="취소">
						</div>  
                    </div>
                                            
                	<div class="module-body">
                   	<div class="media stream">
    				<a href="#" class="media-avatar medium pull-left">
						<img src="resources/images/user.png">
					</a>
                    
                    <div class="media-body">
						<div class="stream-headline">
							<h5 class="stream-author">
								<label class="control-label" for="basicinput">Title</label>							
								<input type="text" name="ntitle" value="" placeholder="제목을 입력하세요">
							</h5>
                            <div class="stream-text">
	                            <div class="control-group">
								<label class="control-label" for="basicinput">Content</label>
									<div class="controls">
									<textarea class="span10" rows="5" name="ntext"></textarea>
									</div>
								</div>
                            </div>
                        </div><!--/.stream-headline-->
					</div>
					</div>
	            </div>
	           </div>
			</div>  <!--/.content-->
		</div>
	</div>
</div>
<input type="hidden" name="aid" value="${adminid}"><br>
<input type="hidden" name="nno" value="${cnt}"><br>
</form>	
	
<!--/.wrapper-->
<div class="footer">
	<div class="container">
	<b class="copyright">&copy; 2015 PlayParking </b>All rights reserved.
	</div>
</div>

<script src="${pageContext.request.contextPath}/resources/edmin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/edmin/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/edmin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>