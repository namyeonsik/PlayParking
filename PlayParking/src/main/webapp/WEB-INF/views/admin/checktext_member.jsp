<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 헤더 부트스트랩 시작 -->
        <title>공지사항</title>
        <meta name="description" content="Geass is premium and creative multipurpose onepage template">
        <meta name="author" content="Eon">

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

<!-- 부트스트랩 끝 -->
<style>
.header{height: 50px;}
.title {text-align:center; margin-top: 8%;}
.table {margin-top:100px;}
</style>

</head>

<body>
<div class="header">
<%@ include file="../Header.jsp"%>
</div>
<%
	int number=0;
	int listSize = 10;
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
<div class="title">
    <h2>Parking Notice View </h2>
</div>

<div id="wrapper">
<section id="content">
			<div class="container" >				
					
				<div class="row" >
					<div class="col-md-12 single">
						<div class="article-author">
							<figure>
								<img src="${pageContext.request.contextPath}/resources/geass/images/blog/author.jpg" alt="Author">
							</figure>
							<h4>
								<a href="#">${title}</a>&nbsp;&nbsp;&nbsp;
								
								<font size=3>
								-${aid}&nbsp;&nbsp;&nbsp;
									<c:set var="d" value="${date}"/>
		    		 				<fmt:formatDate value="${d}" pattern="yyyy-MM-dd a h:mm"/>
		    		 			</font>
		    		 			<div class="pull-right">
		    		 			<a class="btn" href='noticelist1.do'>목록으로</a>
		    		 			</div>
							</h4>
							<p>${text }</p>
						</div>
						<!-- End .article-author -->
					</div>
					<!-- End .col-md-8 -->
				</div>
				<!-- End .row -->
			</div>
			<!-- End .container -->
		</section>
		<!-- End #content -->
	</div>
	<!-- End #wrapper -->

<!-- Plugins -->
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

</body>
</html>