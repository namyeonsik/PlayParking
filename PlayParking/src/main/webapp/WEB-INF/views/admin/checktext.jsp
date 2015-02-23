<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항</title>
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
	
	<div class="wrapper">
	<div class="container">
		<div class="row">
			<div class="content">
				<div class="module message">
					<div class="module-head" style="height: 30px">
						<div class="pull-left">
						<font size="4" face="HU미드나잇120">주차장 공지사항 보기</font>
						</div>						
						<div class="pull-right">
						<a class="btn btn-primary" href='noticeupdate.do?nno=${nno}'>수정</a>
						<a class="btn btn-primary" href='noticedelete.do?nno=${nno}'>삭제</a>
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
								<font size="4" face="HU미드나잇120">${title}</font>
								<font size="4" face="HU미드나잇120">
								<small>
									<c:set var="d" value="${date}"/>
		    		 				<fmt:formatDate value="${d}" pattern="yyyy-MM-dd a h:mm"/>
		    		 			</small>
		    		 			</font>
							</h5>
                            <div class="stream-text">
                            	<font size="4" face="HU미드나잇120">${text}</font>
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