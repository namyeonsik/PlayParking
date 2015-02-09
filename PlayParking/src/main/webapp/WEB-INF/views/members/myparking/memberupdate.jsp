<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>


<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
    <script src="//code.jquery.com/jquery.js"></script>
    <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
 
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file="../../Header.jsp" %>

	<h1>회 원 수 정</h1>
	<form action="memberupdate.do" method="post">
		<input type="hidden" name="mno" value="${members.mno}"><br>
		이름:<input type="text" name="mname" value="${members.mname}"><br>
		패스워드:<input type="text" name="mpwd" value="${members.mpwd}"><br>
		핸드폰번호:<input type="text" name="mphone" value="${members.mphone}"><br>
		차종류:<input type="text" name="cid" value="${members.cid}"><br>
		<input type="submit" value="수정하기">
		<input type="reset" value="취소">
	</form>
	
</body>
</html>