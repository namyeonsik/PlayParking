<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>포인트 확인 및 이용내역</title>


<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
    <script src="//code.jquery.com/jquery.js"></script>
    <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
 
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file="../../Header.jsp" %>
	<h1>내 포인트 : ${memcheck.mpoint} P</h1>
	<h1>충전하기</h1>
	<input type="button" value="충전하기" onclick="window.open('paypoint.do', 'window팝업', 'width=400, height=400, menubar=no, status=no, toolbar=no, top=200, left=200');">
	
	<%-- <%=request.getContextPath() %>/WEB-INF/view/members/myparking/paypoint.jsp --%>
	
	<h1>포인트 사용내역</h1>
		<br>
		<table border = '1'>
		<tr>
			<td>날짜</td>
			<td>사용내역</td>
		</tr>
		
		<c:forEach items="${usepoint}" var="usepoint">
		<tr>
			<td>${usepoint.usedate}</td>
			<td>${usepoint.usepoint}</td>
		</tr>
		</c:forEach>
		
		</table>

</body>
</html>