<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<script src="//code.jquery.com/jquery.js"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="{{ STATIC_URL }}js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootswatch/3.3.2/cosmo/bootstrap.min.css" rel="stylesheet">
 


<title>관리자 메인,현재상황</title>
</head>
<body>
<%@ include file="AdminHeader.jsp" %>
<!-- <h1>로그아웃할 수 있는 버튼 구성</h1> -->
	<h1>로그인 하면 관리자 메인페이지입니다.</h1>
	<h3>현재상황 및 예약리스트</h3>
	<a href="parkingupdate.do">주차장정보수정</a>
</body>
</html>