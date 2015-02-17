<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 리스트</title>
<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet"> 
<script src="//code.jquery.com/jquery.js"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file="../Header.jsp"%>
<div style="padding:10px;">
<h1>주차장 공지사항</h1>
 <h1>멤버 로그인했으면 멤버 아이디가 보임 ==> ${memberid}</h1>
<div class="module-body table">
<table class="table table-message">
	<c:set var="cnt" value="1"></c:set>
		
	<tr class="heading">      
		<td ><font color = "#FFFFFF"><b>번호</b></font></td>      
		<td><font color = "#FFFFFF"><b>글 제목</b></font></td>      
		<td><font color = "#FFFFFF"><b>주차장명</b></font></td> 
		<td><font color = "#FFFFFF"><b>작성일</b></font></td>      
		<td><font color = "#FFFFFF"><b>주차장 관리인</b></font></td>      
	</tr>   

	<c:forEach items="${noticelist}" var="n">
		<tr>
			<td>${cnt}</td>
			<td>${n.nno}</td>
			<td><a href='checktextmem.do?nno=${n.nno}&aid=${n.aid}'>${n.ntitle}</a></td>
			<td>주차장명을넣자</td>
			<td>${n.ndate}</td>
			<td>${n.aid}</td>
			<c:set var="cnt" value="${n.nno+1}"></c:set>			
		</tr>				
	</c:forEach>

</table>
</div>

</body>
</html>