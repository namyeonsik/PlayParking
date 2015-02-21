<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
 <meta charset="utf-8">
    <title>예약확인</title>
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

<%--   		  <!-- Queryloader -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/queryloader2.min.js"></script>
 --%>
        <!-- Modernizr -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/modernizr.js"></script>

       <!-- 부트스트랩 끝!!!!!!!!!!!!!!!!!!!! -->
  
<style>
   .header {height: 50px}
   .body {margin-top: 100px;}
   .title {margin-left: 35%;}
   .tail {margin-left: 3%; margin-top: 10%;}
   .reservecheck {width: 90%; margin-top: 5%; margin-left: 15%;}
   .reservecheck ul {clear: left;margin: 0;padding: 0;list-style-type: none;} 
   .reservecheck .title {font-weight: bold;text-align: center;}
   .reservecheck ul li {text-align: center;float: left;margin: 0;padding: 2px, 1px;width:240px;}
   .reservecheck ul .list-group-item list-group-item-lightblue {width: 239px;} /* 표 라인 맞추기기 위해*/
   .reservecheck ul .list-group-item {width: 239px;}
</style>   
     
</head>
<body>
<!-- 진짜헤더시작 -->
<div class="header">
<%@ include file="../../Header.jsp" %>
</div>
<!-- 진짜헤더끝 --> 

<%
   int number=0;
   int listSize = 5;
   int currentPage=0;
   if(request.getParameter("pageNum")==null){
      currentPage=1;
   }else{
      currentPage = Integer.parseInt(request.getParameter("pageNum"));
   }      
   int nextPage = currentPage + 1;
   int startRow = (currentPage - 1)*listSize+1;
   int endRow = currentPage*listSize;   
   int nsize = 0;
%>


<div class="body">
<div class="title">
    <h2> Reservation History </h2>
</div>
<div class="reservecheck">
   <ul class="title">
      <li class="list-group-item list-group-item-lightblue">#</li>
      <li class="list-group-item list-group-item-lightblue">예약날짜</li>
      <li class="list-group-item list-group-item-lightblue">이용시간</li>
      <li class="list-group-item list-group-item-lightblue">주차장</li>
   </ul>
   
      <c:forEach items="${reservationlist}" var="reservation">  
      <ul>                                  
            <li class="list-group-item">${reservation.rid}</li>           
           <li class="list-group-item">
              <c:set var="d" value="${reservation.rstart}"/>
              <fmt:formatDate value="${d}" pattern="yy-MM-dd"/>
           </li>
           <li class="list-group-item">${reservation.rtime}</li>
           <li class="list-group-item">${reservation.pname}</li> 
       </ul> 
       </c:forEach>   
</div>

<div class="tail">
<div align="center">                       
<!-- 페이징 처리 -->            
<%if (currentPage>1){%>
<a href="reservecheck.do?pageno=<%=currentPage-1%>">◀</a>
<%}%>

<c:set var="savenum" value="0" />
<c:choose>
    <c:when test="${(reservationlistsize%5) ne 0}">
       <c:set var="savenum" value="${(reservationlistsize/5)+1}" />        
    </c:when>

    <c:otherwise>
       <c:set var="savenum" value="${(reservationlistsize/5)}" />
    </c:otherwise>
</c:choose>

<c:forEach var="i" begin="1" end="${savenum}"> 
<a href="reservecheck.do?pageno=${i}">${i}</a>
</c:forEach>

</div> 
</div>

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