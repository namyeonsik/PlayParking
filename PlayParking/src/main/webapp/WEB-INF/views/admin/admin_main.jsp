<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

<head>
<!-- <style type="text/css">
@import url("theme.css");
</style> -->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자</title>
<link type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/css/theme.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/images/icons/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css"
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	rel='stylesheet'>

<%-- <!-- 스크롤 -->
 <!-- BOOTSTRAP STYLE SHEET -->
 <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONT AWESOME ICONS STYLE SHEET -->
<link href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES -->
 <link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet" />
<!-- HTML5 Shiv and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]--> --%>
	

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
								<li><a href="#">YourParking Profile</a></li>
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
	<!-- /navbar -->
	<div class="wrapper">
		<div class="container">
			<div class="row" style="margin-right: 3%; margin-left: 8%">
				<div class="span9">
					<div class="content">
						<div class="btn-controls">
							<div class="btn-box-row row-fluid">
								<a href="#" class="btn-box big span4">
								<i class="icon-edit"></i><b>Notice</b>
								<p class="text-muted">list</p></a>
								<a href="#"	class="btn-box big span4">
								<i class="icon-group"></i><b>${todaycount}</b>
								<p class="text-muted">오늘의예약자</p></a>
								<a href="#"	class="btn-box big span4">
								<i class="icon-money"></i><b>15,152</b>
									<p class="text-muted">Profit</p> </a>
							</div>
						</div><!--상단btn-controls-->
						<div class="module hide">
							<div class="module-head">
								<h3>Adjust Budget Range</h3>
							</div>
							<div class="module-body">
								<div class="form-inline clearfix">
									<a href="#" class="btn pull-right">Update</a> <label
										for="amount"> Price range:</label> &nbsp; <input type="text"
										id="amount" class="input-" />
								</div>
								<hr />
								<div class="slider-range"></div>
							</div>
						</div>
						<form action="adminmain.do">
						 <div class="module">
							<div class="module-head">
							
								<h3>오늘의 주차 에약자는 ${todaycount }명입니다.</h3>
							</div>
							<div class="module-body table">
								<table cellpadding="0" cellspacing="0" border="0"
									class="datatable-1 table table-bordered table-striped	 display"
									width="100%" >
									<thead>
										<tr>
											<th>예약번호</th>
											<th>예약자ID</th>
											<th>예약 입차시간</th>
											<th>사용시간</th>
											<th>입,출차관리</th>
										</tr>
									</thead>
									<tbody>									
									 <c:forEach items="${reservelist}" var="num">
									<c:set var="TextValue1" value="${num.rstarttimeback}"/>
									<c:set var="TextValue2" value="${num.rstarttime}"/>
									<c:set var="testval1" value=""/>
									<c:if test=""></c:if>
									<tr class="odd gradeX">
			
									<td>${num.rid}</td>
									<td>${num.mid}</td>
									<td>${fn:substring(TextValue1,0,2)}:${fn:substring(TextValue1,2,4) } ~ ${fn:substring(TextValue2,0,2) }:${fn:substring(TextValue2,2,4) } 까지 입차합니다.</td>
									<td>${num.rtime}</td>
									<td><a href="reservationupdate.do?mno=${num.mid}">정보수정</a></td>
									</tr>
									</c:forEach>
						       	 </tbody>
				              </table>
				              </div><!-- table -->
				              </div><!--/.module-->
							</form>
							 <section id="saleschart">
							 <div class="module">
							<div class="module-head">
								<h3>Sales Chart</h3>
							</div>
							<div class="module-body">
								<div class="chart inline-legend grid">
									<div id="placeholder2" class="graph" style="height: 500px">
									</div>
								</div>
							</div>
						</div><!-- salechart -->
						</section>
				<div class="btn-box-row row-fluid">
					  <div class="btn-controls"> 
						<!-- <div style="width: 100%"> -->
						<!--  <div class="btn-box-row row-fluid"> -->
						<section id="myfare">
								<a href="#"	class="btn-box big span4" style="width: 25%">
								<i class="icon-user"></i><b>${parking.pfare}</b>
								<p class="text-muted">나의 주차장 요금</p></a>								
						</section>
						<!--</div>상단btn-controls-->
						 <form action="adminmain.do">
						 <div class="module"  style="width: 69%;float: left;margin-left: 5%">
							<div class="module-head">
							
								<h3>주변 주차장 정보</h3>
							</div>
							<div class="module-body table">
								<table cellpadding="0" cellspacing="0" border="0"
									class="datatable-1 table table-bordered table-striped	 display"
									width="100%" >
									<thead>
										<tr>
											<th>주차장이름</th>
											<th>주차장요금</th>
											<th>추가요금</th>
											<th>수용차수</th>
											<th>연락처</th>
										</tr>
									</thead>
									<tbody>									
									 <c:forEach items="${aroundpark}" var="around">
									<%-- <c:set var="TextValue1" value="${num.rstarttimeback}"/>
									<c:set var="TextValue2" value="${num.rstarttime}"/>
									<c:set var="testval1" value=""/>
									<c:if test=""></c:if> --%>
									
									<tr class="odd gradeX">			
									<td>${around.pname}</td>
									<td>${around.pfare}</td>
									<td>${around.platefare}</td>
									<td>${around.pamount}</td>
									<td>${around.pphone}</td>
									</tr>
									</c:forEach>
						       	 </tbody>
				              </table>
				              </div><!-- table -->
				              </div><!--/.module-->
							</form></div>
						</div>
						</div><!--/.content-->
						</div><!--/.span9-->
					</div><!-- row class -->			
				</div><!--/.container-->
			</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2015 PlayParking </b>All rights
			reserved.
		</div>
	</div>
<input id="mm" value="${adminmsg}" type="hidden"> 	
	
<!-- <script type="text/javascript">
var dd = document.getElementById("mm").value;
if(dd!=''){
		alert("*"+dd+"*");
		loginfail();
}


function loginfail(){
	if(adminmsg==null){
		window.showModalDialog("loginfail.jsp","","dialogTop=50px;dialogLeft=100px; dialogHeight=10em;dialogWidth=30em;");
	}
}
</script> -->
	
	
	
	<script
		src="${pageContext.request.contextPath}/resources/scripts/jquery-1.9.1.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/scripts/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/scripts/flot/jquery.flot.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/scripts/flot/jquery.flot.resize.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/scripts/datatables/jquery.dataTables.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/scripts/common.js"
		type="text/javascript"></script>
	<!-- 		 <script type="text/javascript" src="../wp-content/themes/piha/js/top-bar.js" ></script>
		<script type="text/javascript" src="../wp-content/themes/piha/js/bsa-ads.js" ></script> -->
	<!--Dynamically creates analytics markup-->
	<script type="text/javascript">
		var _gaq = _gaq || [];

		_gaq.push([ '_setAccount', 'UA-21576262-1' ]);

		_gaq.push([ '_trackPageview' ]);

		(function() {

			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;

			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';

			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);

		})();
	</script>
</body>
