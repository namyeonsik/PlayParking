<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<!-- <meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
[if lt IE 9]>
<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]
<link href="css/styles.css" rel="stylesheet"> 
jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한)
 <script src="//code.jquery.com/jquery.js"></script>
합쳐지고 최소화된 최신 CSS
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
 합쳐지고 최소화된 최신 자바스크립트
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>
 -->

 <meta charset="utf-8">
<title>Geass - Creative Onepage Html5 Template</title>
<meta name="description" content="Geass is premium and creative multipurpose onepage template">
<meta name="author" content="Eon">

<!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/jquery.selectbox.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/fonts.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/prettyPhoto.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/revslider.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/responsive.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/bootstrap-switcch.css">
        <!-- Favicon and Apple Icons -->
        <link rel="shortcut icon" href="images/favicon.png">
        <link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/resources/geass/images/faviconx57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/geass/images/faviconx72.png">

        <!--- jQuery -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery-1.11.1.min.js"></script>

        <!-- Queryloader -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/queryloader2.min.js"></script>

        <!-- Modernizr -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/modernizr.js"></script>
        
<title>멤버 로그인</title>
<!-- <style>

#loginform { float: left; margin-top:14%; width: 35%;}
#joinform { float : right; ; width: 45%; margin-right: 10%; margin-top: 5%}
</style> -->

<!-- <meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한)
<script src="//code.jquery.com/jquery.js"></script>
합쳐지고 최소화된 최신 CSS
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
합쳐지고 최소화된 최신 자바스크립트
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>
 -->
<script type="text/javascript">

function validationcheck(){
	var mid = myfrm.mid.value;
	var mname = myfrm.mname.value;
	var mpwd = myfrm.mpwd.value;
	var mpwdcheck = myfrm.mpwdcheck.value;
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
	}else if(mpwd!=mpwdcheck){
		alert("비밀번호가 일치하지 않습니다.");
		loginfrm.mpwd.focus();
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
<div class="geass-loader-overlay left"></div><!-- End .geass-loader-overlay left -->
<div class="geass-loader-overlay right"></div><!-- End .geass-loader-overlay right -->
        <header id="header" class="transparent">
                <nav class="navbar navbar-default navbar-transparent" role="navigation">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-menu">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand navbar-brand-img" href="index.html"><img src="${pageContext.request.contextPath}/resources/geass/images/logo-white.png" class="img-responsive logo-white" alt="logo"><img src="${pageContext.request.contextPath}/resources/geass/images/logo.png" class="img-responsive logo-fixed" alt="logo"></a>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse navbar-right" id="main-menu">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="#home">Home</a></li>
                                <li><a href="#aboutus">About us</a></li>
                                <li><a href="#search">Search</a></li>
                                <li><a href="#portfolio">Notice</a></li>
                                <li class="dropdown">
                                    <a href="#pages" class="dropdown-toggle" data-toggle="dropdown"><span class="sm-separator">MyParking</span><i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="blog.html">myinfo update</a></li>
                                        <li><a href="blog.html">reserve check</a></li>
                                        <li><a href="single.html">point check</a></li>
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
       

<!-- 새로운 회원가입 -->

 <section id="contactus" class="section">
           <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-sm-10 col-md-push-2 col-sm-push-1">
                            <h2 class="text-center lg-margin">Create Account</h2>
                            <form action="join.do" id="contact-form" onsubmit="return validationcheck();" name="myfrm" style="width: 90%"method="post" novalidate>
                                <div class="form-group">
                                    <!-- <input type="text" name="mid" id="contactname" required class="form-control input-lg"> -->
                                     <input type="text" name="mid" id="mid" class="form-control" placeholder="">
                                    <span class="animated-label">Your Id *</span>
                                </div><!-- End .form-group -->	
                                <div class="form-group">
                                    <!-- <input type="text" name="mid" id="contactname" required class="form-control input-lg"> -->
                                     <input type="password" name="mpwd" id="mpwd" class="form-control" placeholder="">
                                    <span class="animated-label">Your Password *</span>
                                </div><!-- End .form-group -->
                                <div class="form-group">
                                    <!-- <input type="text" name="mid" id="contactname" required class="form-control input-lg"> -->
                                     <input type="password" name="mpwdcheck" id="mpwdcheck" class="form-control" placeholder="">
                                    <span class="animated-label">Password Check *</span>
                                </div><!-- End .form-group -->		
                                <div class="form-group">
                                     <input type="text" name="mname" id="mname" class="form-control" placeholder="">
                                    <span class="animated-label">Your Name *</span>
                                </div><!-- End .form-group -->				
                                <div class="form-group">
                                     <input type="text" name="memail" id="memail" class="form-control" placeholder="">
                                    <span class="animated-label">Your Email *</span>
                                </div><!-- End .form-group -->
                                
                                
                                 <div class="row">
                                  <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="normal-selectbox clearfix">
                                       <label>Car Model</label>
                                         <select id="cbrand" name="cbrand" class="selectbox" 
                                              onchange="call();" style="float: left; width:40%;">
                                             <option value="브랜드선택" selected="selected">브랜드선택</option>
     									     <option value="현대">현대</option>
     									     <option value="기아">기아</option>
     									     <option value="쉐보레">쉐보레</option>
     									     <option value="BMW">BMW</option>
     									     <option value="아우디">아우디</option>
                                        </select>
                                    </div><!-- End .normal-selectbox-->
                
                                    
                                    
                                   <div id="cnamediv">
                                   </div>                                     
                                </div><!-- End .col-md-6 -->
                            </div><!-- End .row -->
                            
                            <!-- <div class="row">
                                  <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="normal-selectbox clearfix">
                                        <select id="cnamediv" class="selectbox" name="cid" id="cname" style="float: right;width:40%;">
         								
         								</select>                                         
                                    </div>End .normal-selectbox
                                </div>End .col-md-6
                            </div>End .row
                  	    -->
							   <div class="form-group text-center">
                                    <input type="submit" class="btn btn-lightblue btn-lg" value="Send">
                                    <input type="reset" class="btn btn-yellow btn-lg" value="Reset">
                                </div><!-- End .form-group -->
                            </form>
                        </div><!-- End .col-md-8 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->
            </section>

<!-- 새로운 회원가입 -->









<!--  로그인 
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
</div> -->
<!-- 로그인끝 -->

<!--  회원가입 -->
<!-- <div id="joinform">
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
      <label for="inputPasswordcheck" class="col-lg-2 control-label">Password check</label>
      <div class="col-lg-10">
        <input type="password" class="form-control" name="mpwdcheck" placeholder="Password">
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
      <label for="inputEmail" class="col-lg-2 control-label">Email</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="memail" placeholder="email">
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
        <button type="submit" class="btn btn-primary">Join</button>
      </div>
    </div>
   </fieldset>
</form>
</div>-->



<!-- Plugins -->
		<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.selectbox.min.js"></script>
		
        <script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.prettyPhoto.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/twitter/jquery.tweet.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.tools.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.revolution.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/main.js"></script>

 <script>
 
 var elem = document.getElementById('loginmodal');
 elem.onclick = showModal;

 function showModal() {
     $('#modal-login-form').modal('show');
     return false;
 }
            /*----------------------------------------------------*/
            //* Google javascript api v3  -- map */
            /*----------------------------------------------------*/
            (function () {
                "use strict";

                if (document.getElementById("map")) {
                    var locations = [
                        ['<div class="map-info-box"><ul class="contact-info-list"><li><span><i class="fa fa-home fa-fw"></i></span> Mimar Sinan Mh., Konak/İzmir, Türkiye</li><li><span><i class="fa fa-phone fa-fw"></i></span> +90 0 (232) 324 11 83</li></ul></div>', 38.396652, 27.090560, 9],
                        ['<div class="map-info-box"><ul class="contact-info-list"><li><span><i class="fa fa-home fa-fw"></i></span> Kültür Mh., Konak/İzmir, Türkiye</li><li><span><i class="fa fa-phone fa-fw"></i></span> +90 0 (538) 324 11 84</li></ul></div>', 38.432742, 27.159140, 8]
                    ];

                    var map = new google.maps.Map(document.getElementById('map'), {
                        zoom: 13,
                        center: new google.maps.LatLng(38.414592, 27.143122),
                        scrollwheel: false,
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                    });

                    var infowindow = new google.maps.InfoWindow();


                    var marker, i;

                    for (i = 0; i < locations.length; i++) {  
                      marker = new google.maps.Marker({
                        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                        map: map,
                        animation: google.maps.Animation.DROP,
                        icon: 'images/pin.png',
                      });

                      google.maps.event.addListener(marker, 'click', (function(marker, i) {
                        return function() {
                          infowindow.setContent(locations[i][0]);
                          infowindow.open(map, marker);
                        }
                      })(marker, i));
                    }
                }

            }());

            $(function() {
                // Slider Revolution for Home Section
                jQuery('#revslider').revolution({
                    delay:9000,
                    startwidth: 1140,
                    startheight: 600,
                    onHoverStop:"true",
                    hideThumbs:0,
                    lazyLoad:"on",
                    navigationType:"none",
                    navigationHAlign:"center",
                    navigationVAlign:"bottom",
                    navigationHOffset:0,
                    navigationVOffset:20,
                    soloArrowLeftHalign:"left",
                    soloArrowLeftValign:"center",
                    soloArrowLeftHOffset:0,
                    soloArrowLeftVOffset:0,
                    soloArrowRightHalign:"right",
                    soloArrowRightValign:"center",
                    soloArrowRightHOffset:0,
                    soloArrowRightVOffset:0,
                    touchenabled:"on",
                    stopAtSlide:-1,
                    stopAfterLoops:-1,
                    dottedOverlay:"none",
                    spinned:"spinner5",
                    shadow:0,
                    hideTimerBar: "off",
                    fullWidth:"off",
                    fullScreen:"on",
                    navigationStyle:"preview4"
                  });
            });
        </script>

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
 	alert(data);
}

</script>
</body>
</html>