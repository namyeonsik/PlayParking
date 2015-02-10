<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <select name="selectTime" id="selectTime" multiple="multiple">

   
   <c:forEach items="${numArray}" var="num">
	<option value="${num}" >${num} 시간</option>
	
		</c:forEach>
  
  




</select>

	<input type = "button" value = "이용시간선택" onclick="getsTime()" /> 
 <!-- <input type = "reset" value = "reset"/><br><br> -->
	
	
	
