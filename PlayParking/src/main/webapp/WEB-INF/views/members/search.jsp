<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 주차장 검색 후 리스트! -->
<form method="post" action="reserve.do">
<br>
<table class="table table-striped table-hover ">
   <thead>
   <tr class="info" align="center">
      <th align="center" class="th">번호</th>
      <th align="center">주차장 이름</th>
      <th align="center">주소</th>
      <th align="center">요금</th>
      <th align="center">추가요금</th>
      <th align="center">너비</th>
      <th align="center">길이</th>
      <th align="center" class="th">Tip (고객님들이 도착지에 조금 더 빨리 찾아갈 수 있도록!)</th>
      <th align="center">예약</th>
   </tr>
   </thead>

   <tbody id="tbody">   
   <c:set var="pid" value="0"></c:set>
   <c:set var="cnt" value="0"></c:set>
   <c:forEach items="${parkinglist}" var="p">
      <c:set var="cnt" value="${cnt+1}"></c:set>
         <tr class="info1" id="tr${cnt}">
            <td><input type="text" size="2" id="cnt${cnt}" value="${cnt}" readonly="readonly" style="border:0"></td>
            <td>${p.pname}</td>
            <td>${p.paddress}</td>
            <td>${p.pfare}</td>
            <td>${p.platefare}</td>
            <td>${p.pwidth}</td>
            <td>${p.plength}</td>
            <td>${p.ptip}</td>
            <td><input type="image" width="70" id="pid" name="pid" value="${p.pid}" src="resources/reservation_btn.png">
            </td>
         </tr>     
   </c:forEach> 
   <%-- <tr>
   <c:set var="savenum" value="0" />
		<c:choose>
	    <c:when test="${(parkinglistsize%10) ne 0}">
	    	<c:set var="savenum" value="${(parkinglistsize/10)+1}" />        
	    </c:when>
	
	    <c:otherwise>
	    	<c:set var="savenum" value="${(parkinglistsize/10)}" />
	    </c:otherwise>
		</c:choose>
		
		<td></td><td></td>
		<td></td><td></td><td></td>
		<td>
			<c:forEach var="i" begin="1" end="${savenum}">
			<a href="search.do?pageno=${i}">[${i}]</a>
			</c:forEach>
		</td>
		<td></td><td></td><td></td>
		
   </tr> --%>
   </tbody>
</table>
</form>
;
<c:set var="cnt" value="0"></c:set>
<c:forEach items="${parkinglist}" var="p2" >
<c:set var="cnt" value="${cnt+1}"></c:set>
{
   latlng: new daum.maps.LatLng(${p2.x}, ${p2.y}),
   title:'${p2.pname}',
   fare:${p2.pfare},
   parkingimage1:'${p2.pimage}',
   parkingimage2:'${p2.pimage2}',
   parkingimage3:'${p2.pimage3}'
}
<c:if test="${parklistsize!=cnt}">,</c:if>
</c:forEach>
;
<form method="post" action="reserve.do">
<table class="table table-striped table-hover ">
   <thead>
   <tr class="info" align="center">
      <th align="center">번호</th>
      <th align="center">주차장 이름</th>
      <th align="center">주소</th>
      <th align="center">요금</th>
      <th align="center">추가요금</th>
      <th align="center">너비</th>
      <th align="center">길이</th>
      <th align="center">Tip (고객님들이 도착지에 조금 더 빨리 찾아갈 수 있도록!)</th>
      <th align="center">예약</th>
   </tr>
   </thead>

   <tbody id="tbody">   
   <c:set var="cnt" value="0"></c:set>
   <c:forEach items="${parkinglist2}" var="p">
   <c:set var="cnt" value="${cnt+1}"></c:set>
      <tr class="info1" id="tr${cnt}">
         <td><input type="text" size="2" id="cnt${cnt}" value="${cnt}" readonly="readonly" style="border:0"></td>
         <td>${p.pname}</td>
         <td>${p.paddress}</td>
         <td>${p.pfare}</td>
         <td>${p.platefare}</td>
         <td>${p.pwidth}</td>
         <td>${p.plength}</td>
         <td>${p.ptip}</td>
         <td><input type="image" width="70" id="pid" name="pid" value="${p.pid}" src="resources/reservation_btn.png"></td>
      </tr>      
   </c:forEach>   
   </tbody>
</table>
</form>