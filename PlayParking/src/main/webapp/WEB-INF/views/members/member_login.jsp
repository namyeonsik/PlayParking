<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>멤버 로그인</title>
<style>
#layout{ width: 100%;}
#loginform { float: left; margin-left: 6%; margin-top:10%; width: 35%;}
#joinform { float : right; ; width: 44%; margin-right: 10%; margin-top: 2%}
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





<script type="text/javascript">

function validationcheck(){
	var mid = myfrm.mid.value;
	var mname = myfrm.mname.value;
	var mpwd = myfrm.mpwd.value;
	if(mid ==""||mid==null){
		alert("아이디을 입력하세용");
		myfrm.mid.focus();
		return false; //list로 넘어가지마!
		
	}else if(mname==""||mname==null){
		alert("이름을 입력해야해용~~");
		myfrm.mname.focus();
		return false;
	}else if(mpwd==""||mpwd==null){
		alert("비밀번호 필수!!!!");
		myfrm.mpwd.focus();
		return false;
	}else{
		return true;
	}
}


function validationlogin(){
	var mid = loginfrm.mid.value;
	var mpwd = loginfrm.mpwd.value;
	if(mid ==""||mid==null){
		alert("아이디을 입력하세용");
		loginfrm.mid.focus();
		return false; //list로 넘어가지마!
		
	}else if(mpwd==""||mpwd==null){
		alert("비밀번호 필수!!!!");
		loginfrm.mpwd.focus();
		return false;
	}else{
		return true;
	}
}
</script>
</head>
<body>
<%@ include file="../Header.jsp" %>

<div id="layout">
<!-- 로그인 -->
<div id="loginform">
<form class="form-horizontal" action="memberlogin.do" method="post" 
     onsubmit="return validationlogin();" name="loginfrm" style="width: 90%">
  <fieldset>
    <legend>Login</legend>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">ID</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="mid" placeholder="ID">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Password</label>
      <div class="col-lg-10">
        <input type="password" class="form-control" name="mpwd" placeholder="Password">
        <br>
      </div>
    </div>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="submit" class="btn btn-primary">Login</button>
      </div>
    </div>
  </fieldset>
</form>
</div>
<!-- 로그인끝 -->

<!-- 회원가입 -->
<div id="joinform">
<form class="form-horizontal" action="join.do" method="post" 
     onsubmit="return validationcheck();" name="myfrm" style="width: 90%">
  <fieldset>
    <legend>Join</legend>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">ID</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="mid" placeholder="ID">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Password</label>
      <div class="col-lg-10">
        <input type="password" class="form-control" name="mpwd" placeholder="Password">
      </div>
    </div>
    <div class="form-group">
      <label for="inputName" class="col-lg-2 control-label">Name</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="mname" placeholder="name">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPhone" class="col-lg-2 control-label">Phone</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="mphone" placeholder="phone">
      </div>
      <span class="help-block" style="margin-left: 20%; margin-top: 8%;">'-'없이 입력해주세요.</span>
    </div>
   

    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Car Model</label>
      <div class="col-lg-10">
        <select class="form-control" id="cid" style="float: left;width:40%;">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
        <select class="form-control" id="cid2" style="float: right;width:40%; padding-left: cid">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
      </div>
    </div><br><br>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Join</button>
      </div>
    </div>
  </fieldset>
</form>
</div>
<!-- 회원가입끝 -->
</div>
</body>
</html>