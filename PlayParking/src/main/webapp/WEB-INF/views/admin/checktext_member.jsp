<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 헤더 부트스트랩 시작 -->
        <title>Geass - Creative Onepage Html5 Template</title>
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
.title {margin-left: 35%; margin-top: 100px;}
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
			<div class="container">
				<div class="row">
					<div class="col-md-12"></div>
					<!-- End .col-md-12 -->
				</div>
				<!-- End .row -->

				<div class="xlg-margin"></div>
				<!-- space -->

				<div class="row">
					<div class="col-md-8 single">
						<div class="article-author">
							<figure>
								<img src="images/blog/author.jpg" alt="Author">
							</figure>
							<h4>
								<a href="#">Eon Dean</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Hic tempore voluptate, iste id quisquam nam neque maiores, eaque
								ad blanditiis eius quod consequatur inventore quasi dolorem
								nobis doloribus cum saepe!</p>
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


	<c:set var="cnt" value="1"></c:set>
<div class="wrapper">
	<div class="container">
		<div class="row">
			<div class="content">
				<div class="module message">
					                               
                <div class="list-group">
                <table class="table table-message">
                <tbody>
                	<tr>
	                    <td width="30%" style="background-color: #1CC5F6;font-weight : bold">Notice Title</td>
	                    <td>${title}</td>						
					</tr>
					<tr>
	                    <td width="30%" style="background-color: #1CC5F6;font-weight : bold">Content</td>
	                 </tr>  
	                 <tr>
	                    <td>${text }</td>
	                 </tr>      
				</tbody>
				</table>                             
               </div>
               </div>
			</div>  <!--/.content-->

<div align="center">                       
<!-- 페이징 처리 -->            
<%if (currentPage>1){%>
<a href="noticelist1.do?pageno=<%=currentPage-1%>">◀</a>
<%}%>

<%-- <%if (currentPage<savenum){%>
<a href="noticelist2.do?pageNum=<%=currentPage+1%>">▶</a>
<%} %> --%>

<c:set var="savenum" value="0" />
<c:choose>
    <c:when test="${(noticelistsize%10) ne 0}">
    	<c:set var="savenum" value="${(noticelistsize/10)+1}" />        
    </c:when>

    <c:otherwise>
    	<c:set var="savenum" value="${(noticelistsize/10)}" />
    </c:otherwise>
</c:choose>

<c:forEach var="i" begin="1" end="${savenum}"> 
<a href="noticelist1.do?pageno=${i}">${i}</a>
</c:forEach>

</div>
<!-- 페이징 처리 끝 -->

                </div>
            </div>
            <!--/.container-->
        </div>
        

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