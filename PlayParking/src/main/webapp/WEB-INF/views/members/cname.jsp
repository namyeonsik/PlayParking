<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>

<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
<meta charset="utf-8">
<title>회원가입</title>
 <meta name="description" content="Geass is premium and creative multipurpose onepage template">
<meta name="author" content="Eon">
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
<!--- jQuery -->
 <script src="${pageContext.request.contextPath}/resources/geass/js/jquery-1.11.1.min.js"></script>
         <!-- Modernizr -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/modernizr.js"></script>

       <!-- 부트스트랩 끝!!!!!!!!!!!!!!!!!!!! -->
<div class="normal-selectbox clearfix">
	<select class="selectbox" name="cid" id="cname"
		style="float: right; width: 30%; padding-left: cbrand">
		<option value="차종선택" selected="selected">차종선택</option>
		<c:forEach items="${car}" var="c">
			<option value="${c.cid}">${c.cname}</option>
		</c:forEach>
	</select>
</div>
<!-- End .normal-selectbox-->

	<!-- Plugins -->
		<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.selectbox.min.js"></script>
		
       <script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.prettyPhoto.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/twitter/jquery.tweet.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.tools.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.revolution.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/main.js"></script> 


