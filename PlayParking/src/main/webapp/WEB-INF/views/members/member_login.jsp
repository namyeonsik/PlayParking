<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
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

<title>멤버 로그인</title>
<style>

#loginform { float: left; margin-left: 6%; margin-top:14%; width: 35%;}
#joinform { float : right; ; width: 44%; margin-right: 10%; margin-top: 14%}
</style>

<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
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
      <label for="inputID" class="col-lg-2 control-label">ID</label>
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
        <select class="form-control" id="cbrand"  onchange="call();" 
                           style="float: left; width:40%;">
          <option value="브랜드선택" selected="selected">브랜드선택</option>
          <option value="현대">현대</option>
          <option value="기아">기아</option>
          <option value="쉐보레">쉐보레</option>
          <option value="BMW">BMW</option>
          <option value="아우디">아우디</option>
        </select>
        <div id="cnamediv">
        </div>
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


<script type="text/javascript">
var xhr;//전역변수

function call(){
	
xhr = new XMLHttpRequest();
xhr.onreadystatechange = resultParse; //함수등록후 재정의

var data = document.getElementById("cbrand").value;
/* alert(data);
data="cbrand="+data;
data.submit(); */

xhr.open("POST", "carname.do", true); //POST방식.비동기통식.
//POST일때는 아래추가.
xhr.setRequestHeader("content-type", 
		                   "application/x-www-form-urlencoded");
xhr.send("cbrand="+data);//cbrand가 controller에게

}

//요청에 대한 응답을 받을때마다 호출됨. 콜백 함수 지정 속성.
function resultParse(){
	if(xhr.readyState==4){
		//서버에서 전송이 끝낫는지.
		if(xhr.status==200){
			//정상적으로 응답을 받은 경우. 정상종료됨
			viewData4(xhr.responseText); //=>html
		}
	}
}

function viewData4(data){
 //html
	document.getElementById("cnamediv").innerHTML =data;
}


/* function callcid(){
	var cname = document.getElementById("cname").value;
	xhr.open("POST", "getcid.do", true); //POST방식.비동기통식.
	//POST일때는 아래추가.
	xhr.setRequestHeader("content-type", 
			                   "application/x-www-form-urlencoded");
	xhr.send("cname="+cname);
} */
</script>
</body>
</html>