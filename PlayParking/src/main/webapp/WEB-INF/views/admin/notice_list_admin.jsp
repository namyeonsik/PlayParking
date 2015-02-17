<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<div class="wrapper">
	<div class="container">
		<div class="row">
			<div class="content">
				<div class="module message">
					<div class="module-head">
						<div class="pull-left">
						</div>
						<font size="4">Parking Notice</font>
						<div class="pull-right">
						<a class="btn btn-primary" href='noticeinsert.do?cnt=${noticelistsize+1}'>등록</a>
						</div>  
                    </div>                                
                <div class="module-body table">
                <table class="table table-message">
                <tbody>
                	<tr class="heading">
                    <td>No</td>    
					<td class="cell-title">Notice Title</td>      
					<td class="cell-title">Parking Name</td> 
					<td class="cell-title">Parking owner</td> 
					<td class="cell-title">Date</td>      
					</tr>     
                    
					<c:forEach items="${noticelist}" var="n"> 
					<tr class="read starred">						
					<td>${n.nno}</td>
					<td class="cell-title"><a href='checktext.do?nno=${n.nno}'>${n.ntitle}</a></td>
					<td class="cell-title">${pname}</td>
					<td>${n.aid}</td>
					<td>${n.ndate}</td>
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
                <b class="copyright">&copy; 2014 Edmin - EGrappler.com </b>All rights reserved.
            </div>
        </div>

<script src="${pageContext.request.contextPath}/resources/edmin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/edmin/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/edmin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>