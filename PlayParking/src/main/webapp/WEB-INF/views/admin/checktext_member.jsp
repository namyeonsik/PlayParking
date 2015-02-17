<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- [if lt IE 9]>
<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif] -->
<link href="css/styles.css" rel="stylesheet"> 
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
 <script src="//code.jquery.com/jquery.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
 <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>
<title>공지사항 글 보기</title>
<%@ include file="../Header.jsp"%>
</head>
<body>
<h1>공지사항 글 보기</h1>
<!-- 
<c:forEach items="${parkinglist}" var="p">
	<c:set var="cnt" value="${cnt+1}"></c:set>
		<input type="hidden" name="pid" id="pid" value="${p.pid}">
		<tr class="info1" id="tr${cnt}">
			<td><input type="text" size="1" id="cnt${cnt}" value="${cnt}" readonly="readonly" style="border:0"></td>
			<td>${p.pname}</td>
			<td>${p.pfare}</td>
			<td>${p.platefare}</td>
			<td>${p.pwidth}</td>
			<td>${p.plength }</td>
			<td><input type="submit" value="예약"></td>
		</tr>		
	</c:forEach>
 -->

<table>
	<tr>
		<td>제목</td>
		<td>${title}</td>
	</tr>
	
	<tr>
		<td>내용</td>
		<td>${text}</td>
	</tr>
</table>

</body>
</html>