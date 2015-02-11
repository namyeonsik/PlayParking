<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 주차장 검색 후 리스트! -->
<form method="post" action="reserve.do">
<table border='1'>
	<tr>
		<th>번호</th>
		<th>주차장 이름</th>
		<th>요금</th>
		<th>추가요금</th>
		<th>너비</th>
		<th>길이</th>
		<th>예약</th>
	</tr>

	<c:set var="cnt" value="0"></c:set>
	<c:forEach items="${parkinglist}" var="p">
	<c:set var="cnt" value="${cnt+1}"></c:set>
		<input type="hidden" name="pid" id="pid" value="${p.pid}">
		<tr>
			<td>${cnt}</td>
			<td>${p.pname}</td>
			<td>${p.pfare}</td>
			<td>${p.platefare}</td>
			<td>${p.pwidth}</td>
			<td>${p.plength }</td>
			<td><input type="submit" value="예약"></td>
		</tr>		
	</c:forEach>	
</table>
</form>
;
<c:set var="cnt" value="0"></c:set>
<c:forEach items="${parkinglist}" var="p2" >
<c:set var="cnt" value="${cnt+1}"></c:set>
{
	latlng: new daum.maps.LatLng(${p2.x}, ${p2.y}),
	title:'${p2.pname}'
}
<c:if test="${parklistsize!=cnt}">,</c:if>
</c:forEach>
;
<form method="post" action="reserve.do">
<table border='1'>
	<tr>
		<th>번호</th>
		<th>주차장 이름</th>
		<th>요금</th>
		<th>추가요금</th>
		<th>너비</th>
		<th>길이</th>
		<th>예약</th>
	</tr>

	<c:set var="cnt" value="0"></c:set>
	<c:forEach items="${parkinglist2}" var="p3">
	<c:set var="cnt" value="${cnt+1}"></c:set>
		<tr>
			<td>${cnt}</td>
			<td>${p3.pname}</td>
			<td>${p3.pfare}</td>
			<td>${p3.platefare}</td>
			<td>${p3.pwidth}</td>
			<td>${p3.plength }</td>
			<td><input type="submit" value="예약"></td>
		</tr>
		<input type="hidden" name="pid" id="pid" value="${p3.pid}">
	</c:forEach>	
</table>
</form>



