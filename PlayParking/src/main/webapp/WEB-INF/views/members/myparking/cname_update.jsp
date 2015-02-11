<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<select class="form-control" name="cid" id="cname" style="float: right;width:40%; padding-left: cbrand">
          <option value="차종선택" selected="selected">차종선택</option>
          <c:forEach items="${car}" var="c">
           <option value="${c.cid}">${c.cname}</option>
          </c:forEach>         
</select>