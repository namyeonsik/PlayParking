<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 헤더 부트스트랩 시작-->
<title>주차장 공지사항</title>
<meta name="description"
	content="Geass is premium and creative multipurpose onepage template">
<meta name="author" content="Eon">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/jquery.selectbox.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/bootstrap-switch.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/fonts.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/prettyPhoto.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/revslider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/geass2/css/responsive.css">

<!-- Favicon and Apple Icons -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/logo_small.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="${pageContext.request.contextPath}/resources/geass2/images/faviconx57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/geass2/images/faviconx72.png">

<!--- jQuery -->
<script
	src="${pageContext.request.contextPath}/resources/geass2/js/jquery-1.11.1.min.js"></script>

<!-- Queryloader -->
<script
	src="${pageContext.request.contextPath}/resources/geass2/js/queryloader2.min.js"></script>

<!-- Modernizr -->
<script
	src="${pageContext.request.contextPath}/resources/geass2/js/modernizr.js"></script>

<style>
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

.header {
	height: 50px;
	font-family: 'HU미드나잇120';
}

.body {
	margin-top: 50px;
	font-family: 'HU미드나잇120';
}

.title {
	text-align: center;
	margin-top: 10%;
	font-family: 'HU미드나잇140';
}

.table {
	margin-top: 10%;
	font-family: 'HU미드나잇120';
}
</style>

</head>
<body>
	<!-- 진짜헤더시작 -->
	<div class="header">
		<%@ include file="../Header.jsp"%>
	</div>
	<!-- 진짜헤더 -->
	<%
		int number = 0;
		int listSize = 10;
		int currentPage = 0;
		if (request.getParameter("pageNum") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("pageNum"));
		}
		int nextPage = currentPage + 1;
		int startRow = (currentPage - 1) * listSize + 1;
		int endRow = currentPage * listSize;
		int nsize = 0;
	%>
	<div class="title">
		<h2>
			<font face="HU미드나잇140">주차장 공지사항</font>
		</h2>
	</div>

	<c:set var="cnt" value="1"></c:set>
	<div class="wrapper" style="margin-bottom: 15%">
		<div class="container">
			<div class="row">
				<div class="content">
					<div class="module message">
						<div class="module-head"></div>
						<div class="list-group">
							<table class="table table-message">
								<tbody>
									<tr style="background-color: #D9EDF7; font-weight: bold">
										<td width="10%">번호</td>
										<td width="45%">공지사항 제목</td>
										<td width="20%">주차장 관리인</td>
										<td width="25%">게시 날짜</td>
									</tr>
									<c:forEach items="${noticelist}" var="n">
										<tr>
											<td>${noticelistsize-cnt+1}</td>
											<td><a href='checktextmem.do?nno=${n.nno}&aid=${n.aid}'>${n.ntitle}</a></td>
											<td>${n.aid}</td>
											<td><c:set var="d" value="${n.ndate}" /> <fmt:formatDate
													value="${d}" pattern="yyyy-MM-dd a h:mm" /></td>
											<c:set var="cnt" value="${cnt+1}"></c:set>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!--/.content-->

				<div align="center">

					<!-- 페이징 처리 -->
					<%
						if (currentPage > 1) {
					%>
					<a href="noticelist1.do?pageno=<%=currentPage - 1%>">◀</a>
					<%
						}
					%>
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
	<script
		src="${pageContext.request.contextPath}/resources/geass2/js/jquery.selectbox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass2/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass2/js/plugins.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass2/js/jquery.prettyPhoto.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass2/js/twitter/jquery.tweet.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass2/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass2/js/jquery.themepunch.revolution.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass2/js/main.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/geass2/js/bootstrap-switch.min.js"></script>

	<div id="footer"
		style="padding: 13px; position: absolute; bottom: 0px; width: 100%;">
		<%@ include file="../Tail.jsp"%>
	</div>
</body>
</html>
