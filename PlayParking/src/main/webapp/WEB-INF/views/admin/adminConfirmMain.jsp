<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	
	
	<form action="adminmain.do">
	<h1>로그인 하면 관리자 메인페이지입니다.</h1>
	<h3>현재상황 및 예약리스트</h3>
	<h3>현재 예약차량은 ${todaycount}입니다.</h3>
	  <table border='1'>
		<tr>
			<td>예약번호</td>
			<td>예약자ID</td>
			<td>예약 입차시간</td>
			<td>사용시간</td>
			
		</tr>
	    
	  <c:forEach items="${reservelist}" var="num">
		<tr>
			<%-- <td><a href='update.do?mno=${member.mno}'> ${member.mno } --%>
			</a></td>
			<td>${num.rid}</td>
			<td>${num.mid}</td>
			<fmt:parseNumber var="starttime" value="${num.rstarttime}" type="number"/>
			<c:set var="len" value="${fn:length(fn:trim(num.rstarttime)) }"></c:set>
			<fmt:parseNumber var="aa" value="${fn:substring(num.rstarttime,0,len)}" type="number"/> 
			${fn:substring(num.rstarttime,0,len)}
			
			${fn:substring(num.rstarttime,0,len-2)=='00'?aa-1:aa}
			<c:out value="${fn:substring(num.rstarttime,len-2,len)=='30'?'00':'30'}"></c:out>
			<c:out value="${fn:substring(num.rstarttime,len-2,len)=='30'?'00':'30'}"></c:out>
			<td>${starttime-30 } ~ ${num.rstarttime} 까지 입차합니다.</td>
			<td>${num.rtime}</td>
			
			   
			
			<td><a href="reservationupdate.do?mno=${num.mid}">정보수정</a></td>
		</tr>
	
		</c:forEach>
	
	
	</table>
	<a href="parkingupdate.do">주차장정보수정</a>
	</form>
	
</body>
</html>