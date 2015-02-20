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
<form id="loginform" class="form-horizontal row-fluid" action="adminlogin.do" method="post" 
onsubmit="return validationlogin();" name="adminloginfrm" >

<div class="modal-dialog modal-lg" style="margin-left:600px;margin-top:300px;width:800px">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="myModalLabel2"><font size="5">Admin Login</font></h4>
                                                    </div><!-- End .modal-header -->
                                                    <div class="modal-body">

                                                    
                                                        <div class="input-group">
                                                            <span class="input-group-addon">ID&#42;
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                                            <input type="text" id="aid" name="aid" required class="form-control input-lg" placeholder="Admin ID">
                                                        </div><!-- End .input-group -->
                                                        <br>
                                                         <div class="input-group">
                                                            <span class="input-group-addon">Password&#42;&nbsp;
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                                            <input type="password" id="apwd" name="apwd"  required class="form-control input-lg" placeholder="Admin Password">
                                                        </div><!-- End .input-group -->

                                                    </div><!-- End .modal-body -->
                                                    <div class="modal-footer">
                                                    <button type="submit" onclick="logincheck();" class="btn btn-lightblue" data-dismiss="modal">LOGIN</button>
                                                    
                                                    </div><!-- End .modal-footer -->

                                                </div><!-- End .modal-content -->
                                            </div><!-- End .modal-dialog -->
                                            
 </form>                                    
<!-- <div style="text-align: center;margin-top:300px">
<h1>관리자 로그인페이지입니다!</h1>
	
로그인폼

<form id="loginform" class="form-horizontal row-fluid" action="adminlogin.do" method="post" 
onsubmit="return validationlogin();" name="adminloginfrm" >

<label class="control-label" for="basicinput" style="border:2px solid">Id</label>
<div class="controls">
<input type="text" id="aid" name="aid"  placeholder="Id" class="span3">
</div>

<label class="control-label" for="basicinput" style="border:2px solid">Password</label>
<div class="controls" style="margin-top:10px">
<input type="text" id="apwd" name="apwd"  placeholder="Password" class="span3">
</div>

<div class="form-group" style="text-align: center;margin-top:50px">
<div class="col-lg-10 col-lg-offset-2">
    <button type="submit" onclick="logincheck();" class="btn btn-primary" >Login</button>
</div>
</div>
</form>
	
로그인끝

 --><input id="mm" value="${adminmsg}" type="hidden"> 
<script type="text/javascript">
var dd = document.getElementById("mm").value;
if(dd!=''){
	alert(dd);
}
</script>



</div>
</body>
</html>