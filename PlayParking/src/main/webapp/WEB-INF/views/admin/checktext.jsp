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
<a href='noticeupdate.do?nno=${nno}'>수정</a>
<a href='noticedelete.do?nno=${nno}'>삭제</a>

</body>
</html>