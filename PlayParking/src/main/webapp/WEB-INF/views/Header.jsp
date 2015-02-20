<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div class="header">
        <div class="geass-loader-overlay left"></div><!-- End .geass-loader-overlay left -->
        <div class="geass-loader-overlay right"></div><!-- End .geass-loader-overlay right -->
        <div id="aaa">          
            <header id="header" class="transparent nav-fixed">
                <nav class="navbar navbar-default " role="navigation">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-menu">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="" href="membermain.do"><%-- <img src="${pageContext.request.contextPath}/resources/geass/images/logo-white.png" class="img-responsive logo-white" alt="logo"> --%><img src="${pageContext.request.contextPath}/resources/geass/images/logo.png" class="img-responsive logo-fixed" alt="logo"></a> 
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse navbar-right" id="main-menu">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="membermain.do">Home</a></li>
                                <li><a href="aboutus.do">About</a></li>
                                <li><a href="search.do">Reservation</a></li>
                                <li><a href="noticelist1.do">Notice</a></li>
                                <li class="dropdown">
                                    <a href="#pages" class="dropdown-toggle" data-toggle="dropdown"><span class="sm-separator">MyParking</span><i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="memberupdate.do">내 정보 수정</a></li>
                                        <li><a href="reservecheck.do">예약 확인</a></li>
                                        <li><a href="pointcheck.do">포인트 확인</a></li>
                                    </ul>
                                </li>
                                
                                <li><a id="loginmodal" href=${sessionScope.memcheck.mname==null?"memberlogin.do":"memberlogout.do"}> 
             ${sessionScope.memcheck.mname==null?"Login":"Logout"}</a></li>
                         <li><a href="adminlogin.do">Admin</a></li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
            </header><!-- 헤더끝 -->
  	</div>
  </div>
<!-- 진짜헤더끝 --> 
<!-- Modal Login Form-->
      <div class="modal fade" id="modal-login-form" tabindex="-1"
         role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
         <form id="login-form" method="post" action="memberlogin.do">
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                     </button>
                     <h4 class="modal-title" id="myModalLabel1">Login Form</h4>
                  </div>
                  <!-- End .modal-header -->
         <div class="modal-body">
            <div class="form-group">
                  <label for="email2" class="form-label">Your Id<span
                           class="required">*</span></label> <input type="text" name="mid"
                           id="mid" class="form-control input-lg">
                     </div>
                     <!-- End .form-group -->
                     <div class="form-group">
                        <label for="password2" class="form-label">Your Passowrd<span
                           class="required">*</span></label> <input type="password"
                           name="mpwd" id="mpwd" class="form-control input-lg">
                     </div>
                     <!-- End .form-group -->

                  </div>
                  <!-- End .modal-body -->
                  
                  <div class="modal-footer">
                     <button type="button" style="float: left;" class="btn btn-default"><a href="join.do">Join</a></button>
                     <button type="submit" class="btn btn-blue">Login</button>
                     <button type="button" class="btn btn-yellow" data-dismiss="modal">CLOSE</button>
                  </div>
                  <!-- End .modal-footer -->
               </div>
               <!-- End .modal-content -->
            </div>
            <!-- End .modal-dialog -->
         </form>
      </div>
      <!-- End .modal -->
<input id="mm" value="${msg}" type="hidden"> 

<script>
var dd = document.getElementById("mm").value;
if(dd!=''){
	alert("*"+dd+"*");
}

var elem = document.getElementById('loginmodal');
elem.onclick = showModal;

function showModal() {
	var val = elem.toString().split("/");
	if(val[val.length-1]=="memberlogout.do"){
		$('#myModal').modal('hide');
		return true;
	}else{
		$('#modal-login-form').modal('show');
		return false;
	}
}
</script>

</body>
</html>