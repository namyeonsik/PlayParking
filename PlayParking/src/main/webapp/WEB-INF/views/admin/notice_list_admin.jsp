<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

.header {	
	font-family: HU미드나잇120;
}

.body {	
	font-family: HU미드나잇120;
	}
.a {font-family: HU미드나잇120;}
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
						 
						<li><a href="membermain.do">UserPage</a></li>
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
					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
		</div>
		<!-- /navbar-inner -->
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

<c:set var="cnt" value="1"></c:set>

<div class="wrapper" style="background-color: #ffffff;">
	<div class="container">
		<div class="row">
			<div class="content">
				<div class="module message">
					<div class="module-head" style="height: 30px">
						<div class="pull-left">
						<font size="4" face="HU미드나잇120">주차장 공지사항</font>
						</div>						
						<div class="pull-right">
						<a class="btn btn-primary" href='noticeinsert.do?cnt=${maxnno+1}'>등록</a>
						</div> 
                    </div>                     
                <div class="module-body table">
                <table class="table table-message">
                <tbody>
                	<tr class="heading">
                    <td>No</td>    
					<td class="cell-title"><font face="HU미드나잇120">공지사항 제목</font></td>      
					<td class="cell-title"><font face="HU미드나잇120">주차장 이름</font></td> 
					<td class="cell-title"><font face="HU미드나잇120">주차장 관리인</font></td> 
					<td class="cell-title"><font face="HU미드나잇120">게시 날짜</font></td>      
					</tr>     
                    
					<c:forEach items="${noticelist}" var="n"> 
					<tr class="read starred">						
					<td><font face="HU미드나잇120">${n.nno}</font></td>
					<td class="cell-title"><a href='checktext.do?nno=${n.nno}'><font face="HU미드나잇120">${n.ntitle}</font></a></td>
					<td class="cell-title"><font face="HU미드나잇120">${pname}</font></td>
					<td><font face="HU미드나잇120">${n.aid}</font></td>
					<td>
					<font face="HU미드나잇120">
					<c:set var="d" value="${n.ndate}"/>
		    		<fmt:formatDate value="${d}" pattern="yyyy-MM-dd a h:mm"/>
		    		</font>
		    		</td>
					<c:set var="cnt" value="${n.nno+1}"></c:set>
					</tr>				
					</c:forEach>
				</tbody>
				</table>                             
               </div>
               </div>
			</div>  <!--/.content-->

<div align="center">                       
<!-- 페이징 처리 -->            
<%if (currentPage>1){%>
<a href="noticelist2.do?pageno=<%=currentPage-1%>">◀</a>
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
<a href="noticelist2.do?pageno=${i}">${i}</a>
</c:forEach>

</div>
<!-- 페이징 처리 끝 -->

                </div>
            </div>
            <!--/.container-->
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
