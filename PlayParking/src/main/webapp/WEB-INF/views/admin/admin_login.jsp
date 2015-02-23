<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>주차장 관리자</title>
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
function validationlogin(){
	var aid = adminloginfrm.aid.value;
	var apwd = adminloginfrm.apwd.value;
	if(aid ==""||aid==null){
		alert("아이디를 입력하세요");
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
<style type="text/css">
@font-face{
	font-family:"HU미드나잇120";
	src:url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.eot');
	src:url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.eot?#iefix') format('embedded-opentype'),
	url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.woff) format('woff'),
	url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.ttf') format('truetype');
	src:local(※), url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.woff') format('woff');
}
@font-face{
	font-family:"HU미드나잇140";
	src:url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.eot');
	src:url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.eot?#iefix') format('embedded-opentype'),
	url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.woff) format('woff'),
	url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.ttf') format('truetype');
	src:local(※), url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.woff') format('woff');
}
</style>

</head>
<body>
   <form id="loginform" class="form-horizontal row-fluid"
		action="adminlogin.do" method="post"
		onsubmit="return validationlogin();" name="adminloginfrm">
				
		<div class="modal-dialog modal-lg"
			style="margin-left: 20%; margin-top: 15%; width: 60%">
			<div class="modal-content">
			<!-- <h3 style="margin-bottom: 10%"><font face="HU미드나잇120" size="8">주차장관리자 전용 페이지 입니다.</font></h3> -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel2">
						<font size="5">Manager Login    <font face="HU미드나잇120" size="3" style="float: right; margin-right: 40%">주차장관리자 전용 페이지 입니다.</font></font>
					</h4>
				</div>
				<!-- End .modal-header -->
				<div class="modal-body">


					<div class="input-group">
						<span class="input-group-addon">ID&#42;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<input type="text" id="aid" name="aid" required
							class="form-control input-lg" placeholder="Admin ID" maxlength="50">
					</div>
					<!-- End .input-group -->
					<br>
					<div class="input-group">
						<span class="input-group-addon">Password&#42;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<input type="password" id="apwd" name="apwd" required
							class="form-control input-lg" placeholder="Admin Password">
					</div>
					<!-- End .input-group -->

				</div>
				<!-- End .modal-body -->
				<div class="modal-footer">
					<button type="submit" onclick="logincheck();"
						class="btn btn-lightblue" data-dismiss="modal">LOGIN</button>

				</div>
				<!-- End .modal-footer -->

			</div>
			<!-- End .modal-content -->
		</div>
		<!-- End .modal-dialog -->

	</form>

<input id="mm" value="${adminmsg}" type="hidden"> 
<script type="text/javascript">
var dd = document.getElementById("mm").value;
if(dd!=''){
	alert(dd);
}
</script>

</body>
</html>