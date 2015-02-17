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

<script type="text/javascript">
	function validation(){
		var email = myfrm.email.value;
		var mname = myfrm.mname.value;
		var pwd = myfrm.pwd.value;
		if(email == "" || email==null){
			alert("email 입력하세용");
			myfrm.email.focus();
			return false;
		}
		if(mname == "" || mname==null){
			alert("mname 입력하세용");
			myfrm.mname.focus();
			return false;
		}
		
		return true;
	}
</script>

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

<form action="noticeinsert.do" method="post" 
	name="myfrm" onsubmit="return validation();">
		<!-- add라는 서블릿을 찾아서 dopost로 -->
		<h1>${adminid}</h1>
		<h1>${cnt}<</h1>
		
		<input type="hidden" name="nno" value="${cnt}">
		<input type="hidden" name="aid" id="aid" value="${adminid}">		
		제목 : <input type="text" name="ntitle"  value="" placeholder="제목을 입력하세요"><br>
		내용 : <input type="text" name="ntext" value="" ><br>
		<input type="submit" value="입력">
		<input type="reset" value="취소">
</form>	
	
</body>

<script src="${pageContext.request.contextPath}/resources/edmin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/edmin/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/edmin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</html>