<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-md-12 col-sm-12 col-xs-12 md-margin">
	<label>이용시간 선택</label> <select multiple class="form-control"
		name="selectTime" id="selectTime">
		<c:forEach items="${numArray}" var="num">
			<option value="${num}">${num}시간</option>
		</c:forEach>
	</select>
</div>
<!-- End .col-md-6 -->
