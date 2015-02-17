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

<%
	int number=0;
	int listSize = 10;
	int currentPage=0;
	if(request.getParameter("pageNum")==null){
		currentPage=1;
	}else{
		currentPage = Integer.parseInt(request.getParameter("pageNum"));
	}		
	int nextPage = currentPage + 1;
	int startRow = (currentPage - 1)*listSize+1;
	int endRow = currentPage*listSize;	
	int nsize = 0;
%>
${noticelistsize}
시작로우 <%=startRow %>
끝 로우 <%=endRow %>
<div style="padding:10px;">
<h1>주차장 공지사항</h1>
 <h1>멤버 로그인했으면 멤버 아이디가 보임 ==> ${memberid}</h1>

<TABLE border='0' cellspacing=1 cellpadding=2 width='600'> 
	<c:set var="cnt" value="1"></c:set>	
		
	<tr style="text-align:center; background-color: #DB5B43 ; color:white ; font-size:13pt ; font-weight:bold ;">      
		<td ><font color = "#FFFFFF"><b>번호</b></font></td>      
		<td><font color = "#FFFFFF"><b>글 제목</b></font></td>      
		<td><font color = "#FFFFFF"><b>주차장명</b></font></td> 
		<td><font color = "#FFFFFF"><b>작성일</b></font></td>      
		<td><font color = "#FFFFFF"><b>주차장 관리인</b></font></td>      
	</tr>   

	
	<c:forEach items="${noticelist}" var="n" begin="<%=startRow%>" end="<%=endRow%>"> 
		<tr>
			<td>${cnt}</td>
			<td><a href='checktext.do?nno=${n.nno}'>${n.ntitle}</a></td>
			<td>${pname}</td>
			<td>${n.ndate}</td>
			<td>${n.aid}</td>
			<c:set var="cnt" value="${n.nno+1}"></c:set>
			<% number++; %>		
			<td><%=number %></td>
			<td>${noticelistsize} dddddddd</td>			
		</tr>				
	</c:forEach>
<a href='noticeinsert.do?cnt=${cnt}'>등록</a>	
</table>

<%if (currentPage>1){%>
<a href="noticelist2.do?pageNum=<%=currentPage-1%>">◀</a>
<%}%>

<%
int savenum;
if(nsize%listSize!=0){savenum=nsize/listSize+1;}
else {savenum=nsize/listSize;}
for(int i=1;i<=savenum;i++){%>
<a href="noticelist2.do?pageNum=<%=i%>"><%=i%></a>
<%}%>
>
<%if (currentPage<savenum){%>
<a href="noticelist2.do?pageNum=<%=currentPage+1%>">▶</a>
<%} %> 

<c:set var="savenum" value="0" />
<c:choose>
    <c:when test="${noticelistsize%10 ne 0}">
        ${savenum}=${(noticelistsize/10)+1};
    </c:when>

    <c:otherwise>
        ${savenum}=${(noticelistsize/10)};
    </c:otherwise>
</c:choose>

<c:forEach var="i" begin="1" end="${savenum}"> 
<a href="noticelist2.do?pageNum=${i}">${i}</a>
</c:forEach>



</div>

</body>
</html>