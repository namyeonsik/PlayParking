<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<head>
<title>관리자</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link type="text/css"
	href="${pageContext.request.contextPath}/resources/edmin/bootstrap/css/bootstrap.min.css"
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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/logo_small.png">

<style type="text/css">
@font-face {
	font-family: "HU미드나잇120";
	src:
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.eot');
	src:
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.eot?#iefix')
		format('embedded-opentype'),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.woff) format('
		woff '),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.ttf')
		format('truetype');
	src: local(※),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.woff')
		format('woff');
}

@font-face {
	font-family: "HU미드나잇140";
	src:
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.eot');
	src:
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.eot?#iefix')
		format('embedded-opentype'),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.woff) format('
		woff '),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.ttf')
		format('truetype');
	src: local(※),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.woff')
		format('woff');
}
</style>
</head>

<body
	data-post="http://www.egrappler.com/responsive-bootstrap-admin-template-edmin/">
	<div class="navbar navbar-fixed-top">

		<div class="navbar-inner">

			<div class="container" style="margin-top: 50px;">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i></a><a class="brand"
					href="adminmain.do">Manager</a>
				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav nav-icons">
						<li><a href="#saleschart"><i class="icon-bar-chart"></i></a></li>
						<li><a href="#myfare"><i class="icon-eye-open"></i></a></li>
					</ul>
					<ul class="nav pull-right">
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
						<li><a href="membermain.do">UserPage</a></li>
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
								<a href="noticelist2.do" class="btn-box big span4"> <i
									class="icon-edit"></i><b>Notice</b>
									<p class="text-muted">list</p></a> <a href="#"
									class="btn-box big span4"> <i class="icon-group"></i><b>${todaycount}</b>
									<p class="text-muted">오늘의 예약자 수</p></a> <a href="#"
									class="btn-box big span4"> <fmt:formatNumber
										value="${todaypoint }" type="number" var="todaypointview" />
									<i class="icon-money"></i><b>${todaypointview }</b>
									<p class="text-muted">오늘 얻은 point</p>
								</a>
							</div>
						</div>
						<!--상단btn-controls-->
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
						<form action="adminmain.do" style="text-align: center;">
							<div class="module">
								<div class="module-head">
									<h3>오늘의 주차 예약자는 ${todaycount }명입니다.</h3>
								</div>
								<div class="module-body table">
									<table cellpadding="0" cellspacing="0" border="0"
										class="datatable-1 table table-bordered table-striped display"
										width="100%" style="text-align: right">
										<thead>
											<tr>
												<th>예약번호</th>
												<th>예약자ID</th>
												<th>예약 입차시간</th>
												<th>사용시간</th>
												<th>출차여부</th>
												<th>입,출차관리</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${reservelist}" var="num">
												<c:set var="TextValue1" value="${num.rstarttimeback}" />
												<c:set var="TextValue2" value="${num.rstarttime}" />
												<c:set var="resultEnd"
													value="${num.rend==null?'출차안함':'출차함'}" />
												<c:set var="testval1" value="" />
												<c:if test=""></c:if>

												<tr class="odd gradeX">

													<td>${num.rid}</td>
													<td>${num.mid}</td>
													<td>${fn:substring(TextValue1,0,2)}:${fn:substring(TextValue1,2,4) }
														~ ${fn:substring(TextValue2,0,2) }:${fn:substring(TextValue2,2,4) }
														까지 입차합니다.</td>
													<td>${num.rtime}</td>
													<td>${resultEnd }</td>
													<td><input type="button" value="출차확인"
														class="btn btn-info" data-toggle="modal"
														data-target="#modal-login-form" onclick="call(${num.rid})"></td>

													<!-- Modal Login Form-->
													<div class="modal fade" id="modal-login-form" tabindex="-1"
														role="dialog" aria-labelledby="myModalLabel1"
														aria-hidden="true">

														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close"
																		data-dismiss="modal" onclick="deleteAppend()">
																		<span aria-hidden="true">&times;</span><span
																			class="sr-only">Close</span>
																	</button>
																	<h4 class="modal-title" id="myModalLabel1">Message</h4>
																</div>
																<!-- End .modal-header -->
																<div class="modal-body">
																	<div id="modalPrint"></div>
																</div>
																<!-- End .modal-body -->
																<!-- End .modal-footer -->
															</div>
															<!-- End .modal-content -->
														</div>
														<!-- End .modal-dialog -->
														<!-- </form> -->
													</div>
													<!-- End .modal -->
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- table -->
							</div>
							<!--/.module-->
						</form>

						<section id="saleschart">
							<div class="module">
								<div class="module-head">
									<h3>
										매출 차트 <input id="present" name="present" type="button"
											style="float: right;" value=">" class="btn btn-info"><input
											id="before" name="before" type="button" style="float: right;"
											value="<" class="btn btn-info">
									</h3>
								</div>
								<div class="module-body">
									<div class="chart inline-legend grid">
										<div id="placeholder2" class="graph" style="height: 500px">
										</div>
									</div>
								</div>
							</div>
							<!-- salechart -->
						</section>

						<form action="adminmain.do">
							<div class="module"
								style="width: 69%; float: right; margin-right:">
								<div class="module-head">

									<h3>${parking.plocation}주차장정보</h3>
								</div>
								<div class="module-body table">
									<table cellpadding="0" cellspacing="0" border="0"
										class="datatable-1 table table-bordered table-striped	 display"
										width="100%">
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
								</div>
								<!-- table -->
							</div>
							<!--/.module-->
						</form>
						<div class="btn-box-row row-fluid">
							<div class="btn-controls">
								<section id="myfare">
									<a href="#" class="btn-box big span4"
										style="width: 25%; margin-bottom: 6%;"> <i
										class="icon-exchange"></i><b>${parking.pamount}</b>
										<p class="text-muted">주차장 수용차수</p></a>
								</section>
							</div>
							<!--상단btn-controls-->
							<div class="btn-controls">
								<!-- <div style="width: 100%"> -->
								<!--  <div class="btn-box-row row-fluid"> -->
								<section id="myfare">
									<a href="#" class="btn-box big span4"
										style="width: 25%; margin-bottom: 6%;"> <i
										class="icon-money"></i><b><fmt:formatNumber
												value="${parking.pfare}" type="number" var="parkingfare" />${parkingfare}</b>
										<p class="text-muted">나의 주차장 요금</p></a>
								</section>
							</div>
							<!--상단btn-controls-->
							<div class="btn-controls">
								<section id="myfare">
									<a href="#" class="btn-box big span4"
										style="width: 25%; margin-bottom: 6%;"> <i
										class="icon-money"></i><b><fmt:formatNumber value="${avg}"
												type="number" var="avgfare" />${avgfare}</b>
										<p class="text-muted">주변 주차장 평균요금</p></a>
								</section>
							</div>
							<!--상단btn-controls-->
						</div>
					</div>
					<!--/.content-->
				</div>
				<!--/.span9-->
			</div>
			<!-- row class -->
			<br> <br>
		</div>
		<!--/.container-->
	</div>
	<!--/.wrapper-->

	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2015 PlayParking </b>All rights reserved.
		</div>
	</div>
	<input id="mm" value="${adminmsg}" type="hidden">
	<input id="graph" value="${graph}" type="text">
	<input id="beforegraph" value="${beforegraph}" type="text">

	<script
		src="${pageContext.request.contextPath}/resources/edmin/scripts/jquery-1.9.1.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/edmin/scripts/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/edmin/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/edmin/scripts/flot/jquery.flot.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/edmin/scripts/flot/jquery.flot.resize.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/edmin/scripts/datatables/jquery.dataTables.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/edmin/scripts/common.js"
		type="text/javascript"></script>


	<script type="text/javascript">
/* 	$('#modal-text1').on('show', function() {
	    var link = $(this).data('link'),
	        confirmBtn = $(this).find('.confirm');
	})


	$('#btnYes').click(function() {
	  
	    // handle form processing here
	  	
	  	//alert('submit form');
	    $('form').submit();
	  
	}); */
	
	
	
	
	var msg1;
	var rid=0;
	var data;
	var xhr = null;
	function call(rid) {		
		//alert(data);
		//alert(stime);
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = resultParse1;

		data="rid="+rid;
		//alert(rid);
		//alert(data);

		//포스트방식
		xhr.open("GET", "reservationupdate.do?"+data, true);//POST방식 비동기통신
		xhr.send(null);//post방식일때는 요청body에 데이터를 담는다.
	}
		
	function resultParse1() {
		if (xhr.readyState == 4) {//서버에서 전송이 끝남?
			if (xhr.status == 200) {//정상종료
				viewData1(xhr.responseText);//HTML
			}
		}
	}
	
	function viewData1(d)
	{
		//alert(d);
		$('#modalPrint').append(d);		
	}
	function deleteAppend(){
		
		$('#modalPrint').empty();
		
	}
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
