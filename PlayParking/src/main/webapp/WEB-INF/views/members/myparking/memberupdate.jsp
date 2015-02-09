<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>
<style>

#updateform { float: left; margin-left: 10%; margin-top:10%; width: 50%;}

</style>

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

	<%-- <h1>회 원 수 정</h1>
	<form action="memberupdate.do" method="post">
		<input type="hidden" name="mno" value="${members.mno}"><br>
		이름:<input type="text" name="mname" value="${memcheck.mname}"><br>
		패스워드:<input type="text" name="mpwd" value="${memcheck.mpwd}"><br>
		핸드폰번호:<input type="text" name="mphone" value="${memcheck.mphone}"><br>
		차종류:<input type="text" name="cid" value="${memcheck.cid}"><br>
		<input type="submit" value="수정하기">
		<input type="reset" value="취소">
	</form> --%>

<!-- 회원정보수정 -->
<div id="updateform">
<form class="form-horizontal" action="memberupdate.do" method="post" style="width: 50%">
  <fieldset>
    <legend>Update Information</legend>
    <div class="form-group">
      <label for="inputId" class="col-lg-2 control-label"></label>
      <div class="col-lg-10">
        <input type="hidden" class="form-control" name="mid" placeholder="Id" value="${memcheck.mid}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputName" class="col-lg-2 control-label">Name</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="mname" placeholder="Name" value="${memcheck.mname}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Password</label>
      <div class="col-lg-10">
        <input type="password" class="form-control" name="mpwd" placeholder="Password" value="${memcheck.mpwd}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputPhone" class="col-lg-2 control-label">Phone</label>
      <div class="col-lg-10">
        <input type="password" class="form-control" name="mphone" placeholder="Phone" value="${memcheck.mphone}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Complete</button>
      </div>
    </div>
  </fieldset>
</form>
</div>
<!-- 회원정보수정 -->

</body>
</html>