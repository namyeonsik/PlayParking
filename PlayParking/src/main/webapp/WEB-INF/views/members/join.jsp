<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
<meta charset="utf-8">
<title>회원가입</title>
        <!-- <title>Geass - Creative Onepage Html5 Template</title> -->
        <meta name="description" content="Geass is premium and creative multipurpose onepage template">
        <meta name="author" content="Eon">

        <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/jquery.selectbox.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/bootstrap-switch.css">
		
		
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/fonts.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/prettyPhoto.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/revslider.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/responsive.css">

        <!-- Favicon and Apple Icons -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/geass/images/favicon.png">
        <link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/resources/geass/images/faviconx57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/geass/images/faviconx72.png">

        <!--- jQuery -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery-1.11.1.min.js"></script>

        <!-- Queryloader -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/queryloader2.min.js"></script>

        <!-- Modernizr -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/modernizr.js"></script>

       <!-- 부트스트랩 끝!!!!!!!!!!!!!!!!!!!! -->

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

<style type="text/css">
.header {height: 50px}
</style>

</head>

<body>
<!-- 진짜헤더시작 -->
<div class="header">
<%@ include file="../Header.jsp" %>
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
       

<!-- 새로운 회원가입 -->
 <section id="contactus" class="section">
           <!-- <div class="container" style="border:#6B71BD solid 1px"> -->
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
                
                                    
                                    
                                                                   
                                </div><!-- End .col-md-6 -->
                                
                                
                                <div id="cnamediv"><h1>들어왓니</h1>
									
								</div> 
                            </div><!-- End .row -->

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


<!-- Plugins -->
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.selectbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.prettyPhoto.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/twitter/jquery.tweet.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.tools.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.revolution.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap-switch.min.js"></script>


</body>
</html>