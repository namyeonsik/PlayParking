<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 리스트</title>
</head>
<body>

<TABLE border='0' cellspacing=1 cellpadding=2 width='600'> 
 <h1>${memberid}</h1>
	<c:set var="cnt" value="0"></c:set>	
		
	<tr style="text-align:center; background-color: #DB5B43 ; color:white ; font-size:13pt ; font-weight:bold ;">      
		<td ><font color = "#FFFFFF"><b>번호</b></font></td>      
		<td><font color = "#FFFFFF"><b>글 제목</b></font></td>      
		<td><font color = "#FFFFFF"><b>작성일</b></font></td>      
		<!-- <td><font color = "#FFFFFF"><b>조회</b></font></td>       -->
		<td><font color = "#FFFFFF"><b>주차장</b></font></td>      
	</tr>   
	<%-- <c:set var="cnt" value="0"></c:set> --%>
	<c:forEach items="${noticelist}" var="n">
		<tr>
			<%-- <td>${cnt}</td> --%>
			<td>${n.nno}</td>
			<td><a href='checktext.do?nno=${n.nno}'>${n.ntitle}</a></td>
			<td>${n.ndate}</td>
			<td>${n.aid}</td>
			<td><a href='noticeupdate.do?nno=${n.nno}'>수정</a></td>
			<td><a href='noticedelete.do?nno=${n.nno}'>삭제</a></td>
			
			<c:set var="cnt" value="${n.nno+1}"></c:set>
		<%-- 	<td>
				<c:if test="${memberid==null}">
					<a href='noticeinsert.do?cnt=${cnt}'>등록</a>
				</c:if>
			</td> --%>
			
		</tr>				
	</c:forEach>
<a href='noticeinsert.do?cnt=${cnt}'>등록</a>
	
</table>

</body>
</html>