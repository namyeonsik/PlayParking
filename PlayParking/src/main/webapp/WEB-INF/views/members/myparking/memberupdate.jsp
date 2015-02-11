<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>
<style>

#updateform { float: left; margin-left: 30%; margin-top:10%; width: 60%;}

</style>

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
<%@ include file="../../Header.jsp" %>

<!-- 회원정보수정 -->
<div id="updateform">
<form class="form-horizontal" action="memberupdate.do" method="post" style="width: 60%">
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
        <input type="text" class="form-control" name="mphone" placeholder="Phone" value="${memcheck.mphone}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Email</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="memail" placeholder="Email" value="${memcheck.memail}">
        <br>
      </div>
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
        <button type="submit" class="btn btn-primary">Complete</button>
      </div>
    </div>
  </fieldset>
</form>
</div>
<!-- 회원정보수정 -->

<script type="text/javascript">
var xhr;//전역변수

function call(){
	
xhr = new XMLHttpRequest();
xhr.onreadystatechange = resultParse; //함수등록후 재정의

var data = document.getElementById("cbrand").value;
/* alert(data);
data="cbrand="+data;
data.submit(); */

xhr.open("POST", "carname_update.do", true); //POST방식.비동기통식.
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