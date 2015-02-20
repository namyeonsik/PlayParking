<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
<meta charset="utf-8">
<title>결제 후 예약확인</title>
        <!-- <title>Geass - Creative Onepage Html5 Template</title> -->
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
       
<style>
   .header {height: 50px}
   /* .body {margin-top: 120px; margin-left: 40%;} */
   .title {margin-top:7%; margin-left: 33%;}
   .img {margin-top:8%; margin-left: 18%;}
   .ticket {margin-top: 10%; margin-left: 55%;}
</style>

</head>
<body>
<!-- 진짜헤더시작 -->
<div class="header">
<%@ include file="../Header.jsp" %>
</div>
<!-- 진짜헤더끝 -->  

<div class="title">
    <h2> Reservation Complete </h2>
</div>
    
<div class="img">
<div class="col-md-6 col-sm-6 col-xs-12">
   <p>
      <img src="${pname.pimage}" alt="boy" class="wow rubberBand pull-left lg-separator-right2x" data-wow-delay="0.9s" style="width: 80%; height: auto;">
   </p>
</div>
</div>

<div class="ticket">
<blockquote class="lightblue">
      <p>
         예약번호 : ${reservation.rid} <br>
      예약자ID : ${reservation.mid} <br>
      주차장 : ${pname.pname} <br>
      위치 : ${pname.paddress} <br>
      Tip : ${pname.ptip} <br>
      예약날짜 : 
      <c:set var="d" value="${reservation.rstart}"/>
       <fmt:formatDate value="${d}" pattern="yyyy/MM/dd"/>    
      </p>
      <br>
    <cite>예약 내용이</cite><br>
    <cite>메일로 발송되었습니다!</cite>
</blockquote>
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
<script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap-switch.min.js"></script>
   
</body>
</html>