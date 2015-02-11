<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자</title>
<link type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/css/theme.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/images/icons/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css"
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	rel='stylesheet'>




<script type="text/javascript">
var adminmsg = ${adminmsg}
function validationlogin(){
	var aid = adminloginfrm.aid.value;
	var apwd = loginfrm.apwd.value;
	if(aid ==""||aid==null){
		alert("아이디을 입력하세요");
		adminloginfrm.aid.focus();
		return false; //list로 넘어가지마!
		
	}else if(apwd==""||apwd==null){
		alert("비밀번호를 입력하세요");
		adminloginfrm.apwd.focus();
		return false;
	}else{
		return true;
	}

	function logincheck(){
		if(${adminmsg}==null){
			}
		}
	}
</script>



<title>관리자 로그인</title>
</head>
<body>
<!-- <h1>관리자 로그인페이지입니다!</h1> -->
	
<!-- 로그인폼 -->

<form id="loginform" class="form-horizontal row-fluid" action="adminlogin.do" method="post" 
onsubmit="return validationlogin();" name="adminloginfrm" style="width: 80%; margin-top: 8%; margin-left: 15%">
<label class="control-label" for="basicinput" style="margin-top: 6%">Id</label>
<div class="controls">
<input type="text" name="aid" style="margin-bottom: 5%;margin-top: 8%" placeholder="Id" class="span8">
</div>
<label class="control-label" for="pwdinput">Password</label>
<div class="controls">
<input type="text" name="apwd" style="margin-bottom: 5%" placeholder="Password" class="span8">
</div>

<div class="form-group">
<div class="col-lg-10 col-lg-offset-2">
    <button type="submit" onclick="logincheck();" class="btn btn-primary" style="margin-top:5%;margin-left: 33%;margin-right: 5%;margin-bottom: 5% ">Login</button>
</div>
</div>
</form>
	
<!-- 로그인끝 -->


<input id="mm" value="${adminmsg}" type="hidden"> 
<script type="text/javascript">
var dd = document.getElementById("mm").value;
if(dd!=''){
	alert(dd);
}
</script>




</body>
</html>