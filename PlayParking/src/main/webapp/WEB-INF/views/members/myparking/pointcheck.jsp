<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>포인트 확인 및 이용내역</title>

<style>
#point {margin-left: 5%; margin-top:5%; width: 80%;}
</style>

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

</head>
<body>
<%@ include file="../../Header.jsp" %>
<div id="point">
<legend>My Point</legend>	
	<h1>${point.mpoint} P</h1>

<legend>Charge</legend>	
	<input type="button" value="충전하기" onclick="window.open('paypoint.do', 'window팝업', 'width=400, height=400, menubar=no, status=no, toolbar=no, top=200, left=200');">
	
<!--  포인트 충전내역 -->	
<legend>Charging Point History</legend>		
<table class="table table-striped table-hover ">
  <thead>
    <tr>
      <th>#</th>
      <th>날짜</th>
      <th>충전내역</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${paypointlist}" var="paypointlist">
    <tr>
      <td>1</td>
      <td>${paypointlist.paydate}</td>
	  <td>${paypointlist.paypoint}</td>
    </tr>
    </c:forEach>
  </tbody>
</table> 
<!--  포인트 충전내역 끝 -->	

<!--  포인트 사용내역 -->
<legend>Using Point History</legend>
<table class="table table-striped table-hover ">
  <thead>
    <tr>
      <th>#</th>
      <th>날짜</th>
      <th>사용내역</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${usepointlist}" var="usepointlist">
    <tr>
      <td>1</td>
      <td>${usepointlist.usedate}</td>
	  <td>${usepointlist.usepoint}</td>
    </tr>
    </c:forEach>
  </tbody>
</table> 
<!--  포인트 사용내역 끝 -->	
</div>
</body>
</html>