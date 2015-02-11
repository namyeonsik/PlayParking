<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
						<li><a href="#"><i class="icon-eye-open"></i></a></li>
						<li><a href="#"><i class="icon-bar-chart"></i></a></li>
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
				<div class="span3" >
					<!--  <div class="sidebar">
						<ul class="widget widget-menu unstyled">
							<li class="active"><a href="index.html"><i
									class="menu-icon icon-dashboard"></i>Dashboard </a></li>
							<li><a href="activity.html"><i
									class="menu-icon icon-bullhorn"></i>News Feed </a></li>
							<li><a href="message.html"><i
									class="menu-icon icon-inbox"></i>Inbox <b
									class="label green pull-right"> 11</b> </a></li>
							<li><a href="task.html"><i class="menu-icon icon-tasks"></i>Tasks
									<b class="label orange pull-right"> 19</b> </a></li>
							<li><a href="charts.html"><i
									class="menu-icon icon-bar-chart"></i>Charts </a></li>
						</ul>
						/.widget-nav


						<ul class="widget widget-menu unstyled">
							<li><a href="ui-button-icon.html"><i class="menu-icon icon-bold"></i> Buttons </a></li>

						</ul>
						/.widget-nav
						<ul class="widget widget-menu unstyled">
							<li><a class="collapsed" data-toggle="collapse"
								href="#togglePages"><i class="menu-icon icon-cog"> </i><i
									class="icon-chevron-down pull-right"></i><i
									class="icon-chevron-up pull-right"> </i>More Pages </a>
								<ul id="togglePages" class="collapse unstyled">
									<li><a href="other-login.html"><i class="icon-inbox"></i>Login
									</a></li>
									<li><a href="other-user-profile.html"><i
											class="icon-inbox"></i>Profile </a></li>
									<li><a href="other-user-listing.html"><i
											class="icon-inbox"></i>All Users </a></li>
								</ul></li>
							<li><a href="#"><i class="menu-icon icon-signout"></i>Logout
							</a></li>
						</ul>
					</div> -->
					<!-- /.sidebar  -->
				</div> 
				<!--/.span3-->
				<div class="span9">
					<div class="content">
						<div class="btn-controls">
							<div class="btn-box-row row-fluid">
								<a href="#" class="btn-box big span4">
								<i class="icon-edit"></i><b>Notice</b>
								<p class="text-muted">list</p></a>
								<a href="#"	class="btn-box big span4">
								<i class="icon-user"></i><b>15</b>
								<p class="text-muted">New Users</p></a>
								<a href="#"	class="btn-box big span4">
								<i class="icon-money"></i><b>15,152</b>
									<p class="text-muted">Profit</p> </a>
							</div>
							<div class="btn-box-row row-fluid">
								<div class="span8">
									<div class="row-fluid">
										<div class="span12">
											<a href="#" class="btn-box small span4"><i
												class="icon-envelope"></i><b>Messages</b> </a><a href="#"
												class="btn-box small span4"><i class="icon-group"></i><b>Clients</b>
											</a><a href="#" class="btn-box small span4"><i
												class="icon-exchange"></i><b>Expenses</b> </a>
										</div>
									</div>
									<div class="row-fluid">
										<div class="span12">
											<a href="#" class="btn-box small span4"><i
												class="icon-save"></i><b>Total Sales</b> </a><a href="#"
												class="btn-box small span4"><i class="icon-bullhorn"></i><b>Social
													Feed</b> </a><a href="#" class="btn-box small span4"><i
												class="icon-sort-down"></i><b>Bounce Rate</b> </a>
										</div>
									</div>
								</div>
								<ul class="widget widget-usage unstyled span4">
									<li>
										<p>
											<strong>Windows 8</strong> <span
												class="pull-right small muted">78%</span>
										</p>
										<div class="progress tight">
											<div class="bar" style="width: 78%;"></div>
										</div>
									</li>
									<li>
										<p>
											<strong>Mac</strong> <span class="pull-right small muted">56%</span>
										</p>
										<div class="progress tight">
											<div class="bar bar-success" style="width: 56%;"></div>
										</div>
									</li>
									<li>
										<p>
											<strong>Linux</strong> <span class="pull-right small muted">44%</span>
										</p>
										<div class="progress tight">
											<div class="bar bar-warning" style="width: 44%;"></div>
										</div>
									</li>
									<li>
										<p>
											<strong>iPhone</strong> <span class="pull-right small muted">67%</span>
										</p>
										<div class="progress tight">
											<div class="bar bar-danger" style="width: 67%;"></div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<!--/#btn-controls-->
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
						</div>
						<!--/.module-->
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
						<div class="module">
							<div class="module-head">
								<h3>surroundings parking lot</h3>
							</div>
							<div class="module-body table">
								<table cellpadding="0" cellspacing="0" border="0"
									class="datatable-1 table table-bordered table-striped	 display"
									width="100%">
									<thead>
										<tr>
											<th>Rendering engine</th>
											<th>Browser</th>
											<th>Platform(s)</th>
											<th>Engine version</th>
											<th>CSS grade</th>
										</tr>
									</thead>
									<tbody>
										<tr class="odd gradeX">
											<td>Trident</td>
											<td>Internet Explorer 4.0</td>
											<td>Win 95+</td>
											<td class="center">4</td>
											<td class="center">X</td>
										</tr>
										<tr class="even gradeC">
											<td>Trident</td>
											<td>Internet Explorer 5.0</td>
											<td>Win 95+</td>
											<td class="center">5</td>
											<td class="center">C</td>
										</tr>
										<tr class="gradeU">
											<td>Other browsers</td>
											<td>All others</td>
											<td>-</td>
											<td class="center">-</td>
											<td class="center">U</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<th>Rendering engine</th>
											<th>Browser</th>
											<th>Platform(s)</th>
											<th>Engine version</th>
											<th>CSS grade</th>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
						<!--/.module-->
					</div>
					<!--/.content-->
				</div>
				<!--/.span9-->
			</div>
		</div>
		<!--/.container-->
	</div>
	<!--/.wrapper-->
	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2014 Edmin - EGrappler.com </b>All rights
			reserved.
		</div>
	</div>
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
