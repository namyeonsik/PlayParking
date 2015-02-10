<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>헤더</title>



</head>
<body>
<!-- TOP BAR -->
	<div id="main-nav" class="navbar navbar-inverse bs-docs-nav" role="banner">
		<div class="container">
			<div class="navbar-header responsive-logo">
				<!-- <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse"> -->
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<!-- </button> -->
				<!-- <a href="./" class="navbar-brand">
				<img src="images/logo.png" alt="Zerif">
				</a> -->
			</div>
			<nav class="navbar-collapse bs-navbar-collapse collapse" role="navigation" style="height: 1px;">
			<ul class="nav navbar-nav navbar-right responsive-nav main-nav-list">
				<li><a href=${sessionScope.memcheck.mname==null?"memberlogin.do":"memberlogout.do"}> 
				 ${sessionScope.memcheck.mname==null?"Login":"Logout"}</a></li>
				<li><a href="adminlogin.do">Admin</a></li>
			</ul>
			</nav>
		</div>
				
<div class="navbar-wrapper">
  <div class="container">
    <div class="navbar navbar-inverse navbar-static-top">
        <div class="navbar-header">
	    <a class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	    </a>
        <a class="navbar-brand" href="membermain.do">Play Parking</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="membermain.do">Home</a></li>
            <li><a href="search.do">Search</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">MyParking <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="memberupdate.do">내정보수정</a></li>
                <li><a href="reservecheck.do">예약확인</a></li>
                <li class="divider"></li>
                <li><a href="pointcheck.do">포인트확인</a></li>
                <li><a href="charge.do">포인트충전</a></li>         
              </ul>
            </li>
          </ul>
        </div>
    </div>
  </div>
</div>
</div>




</body>
</html>