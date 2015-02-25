<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="input-group">
	<span class="input-group-addon">입차시간 선택</span>
	<div class="clearfix">
		<select multiple class="form-control" name="possibleTime"
			id="possibleTime">
			<c:forEach items="${check}" var="num1">
				<option value="${num1}">${fn:substring(num1,0,2)}:${fn:substring(num1,2,4) }${fn:substring(num1,4,8) }</option>
			</c:forEach>
		</select>
	</div>
	<!-- End .large-selectbox-->
</div>
<!-- End .input-group -->
<br>
<br>