<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>포인트 확인 및 이용내역</title>

<style>
	.mypoint {width: 40%; margin-top: 5%; margin-left: 10%; float: left;}
	.charge {width: 40%; margin-top: 5%; margin-right: 10%; float: right;}

	.title {width: 80%; margin-top: 5%; margin-left: 9%; float: left;}
	
	.paypoint {width: 40%; margin-top: 3%; margin-left: 10%; float: left;}
	.paypoint ul {clear: left;margin: 0;padding: 0;list-style-type: none;} 
	.paypoint .ptitle {font-weight: bold;text-align: center;}
	.paypoint ul li {text-align: center;float: left;margin: 0;padding: 2px, 1px;width:200px;}
	.paypoint ul .list-group-item list-group-item-lightblue {width: 199px;} /* 표 라인 맞추기기 위해*/
	.paypoint ul .list-group-item {width: 199px;}
	
	.usepoint {width: 40%; margin-top: 3%; margin-right: 10%; float: right;}
	.usepoint ul {clear: left;margin: 0;padding: 0;list-style-type: none;} 
	.usepoint .utitle {font-weight: bold;text-align: center;}
	.usepoint ul li {text-align: center;float: left;margin: 0;padding: 2px, 1px;width:200px;}
	.usepoint ul .list-group-item list-group-item-lightblue {width: 199px;} /* 표 라인 맞추기기 위해*/
	.usepoint ul .list-group-item {width: 199px;}
</style>	

<style>
#point {margin-left: 5%; margin-top:5%; width: 80%;}
</style>

<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- [if lt IE 9]>
<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif] -->
<link href="css/styles.css" rel="stylesheet"> 
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
 <script src="//code.jquery.com/jquery.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
 <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>

<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
<!-- <meta charset="utf-8">
        <title>Geass - Creative Onepage Html5 Template</title> -->
        <meta name="description" content="Geass is premium and creative multipurpose onepage template">
        <meta name="author" content="Eon">

        <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/jquery.selectbox.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/bootstrap-switch.css">		
		
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/fonts.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/prettyPhoto.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/revslider.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/responsive.css">

        <!-- Favicon and Apple Icons -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/geass/images/favicon.png">
        <link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/resources/geass/images/faviconx57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/geass/images/faviconx72.png">

        <!--- jQuery -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery-1.11.1.min.js"></script>

        <!-- Queryloader -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/queryloader2.min.js"></script>

        <!-- Modernizr -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/modernizr.js"></script>

       <!-- 부트스트랩 끝!!!!!!!!!!!!!!!!!!!! -->
       
</head>
<body>
<%@ include file="../../Header.jsp" %>

<div class="row">
 <div class="mypoint">
  <h3>My Point</h3>
  <h1>${point.mpoint} P</h1>
 </div>

 <div class="charge">
  <h3>Charge</h3>
  <input class="btn btn-lightblue" type="button" value="충전하기" onclick="window.open('paypoint.do', 'window팝업', 'width=400, height=400, menubar=no, status=no, toolbar=no, top=200, left=200');">
  <br><br>
 </div>
</div>
	
<div class="title">
<h3>Point History</h3>
</div>

<div class="row">	
<!--  포인트 충전내역 -->			
<div class="paypoint">
	<ul class="ptitle">
		<li class="list-group-item list-group-item-lightblue">충전날짜</li>
		<li class="list-group-item list-group-item-lightblue">충전내역</li>
	</ul>
	
		<c:forEach items="${paypointlist}" var="paypointlist">
		<ul>                                    		 
    		 <li class="list-group-item">
    		 	<c:set var="d" value="${paypointlist.paydate}"/>
    		 	<fmt:formatDate value="${d}" pattern="yy-MM-dd"/>
    		 </li>
    		 <li class="list-group-item">${paypointlist.paypoint}</li>
    	</ul> 
    	</c:forEach>	
</div> 
<!--  포인트 충전내역 끝 -->	

<!--  포인트 사용내역 -->
<div class="usepoint">
	<ul class="utitle">
		<li class="list-group-item list-group-item-lightblue">사용날짜</li>
		<li class="list-group-item list-group-item-lightblue">사용내역</li>
	</ul>
	
		<c:forEach items="${usepointlist}" var="usepointlist">
		<ul>                                  		 
    		 <li class="list-group-item">
    		 	<c:set var="d" value="${usepointlist.usedate}"/>
    		 	<fmt:formatDate value="${d}" pattern="yy-MM-dd"/>
    		 </li>
    		 <li class="list-group-item">${usepointlist.usepoint}</li>
    	</ul> 
    	</c:forEach>	
</div> 
<!--  포인트 사용내역 끝 -->	
</div>

<!-- Plugins -->
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.selectbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.prettyPhoto.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/twitter/jquery.tweet.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.tools.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.revolution.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/main.js"></script>

</body>
</html>