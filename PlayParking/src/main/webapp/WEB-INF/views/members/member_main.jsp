<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<!--[if IE 9]> <html class="ie9"> <![endif]-->
<!--[if !IE]><!--><html lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>PlayParking</title>
        <meta name="description" content="Geass is premium and creative multipurpose onepage template">
        <meta name="author" content="Eon">

        <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/fonts.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/prettyPhoto.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/revslider.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/geass/css/jquery.selectbox.css">

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
        
       
  </head>
<body data-spy="scroll" data-target="#main-menu">
        <div class="geass-loader-overlay left"></div><!-- End .geass-loader-overlay left -->
        <div class="geass-loader-overlay right"></div><!-- End .geass-loader-overlay right -->
        <div id="wrapper">          
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
                                <li><a href="aboutus.do">About</a></li>
                                <li><a href="search.do">Search</a></li>
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

            <!-- Home Section -->
            <section id="home" class="section">
                <div id="revslider-container">
                    <div id="revslider">
                        <ul>
                           <!-- data-lazyload: 홈배경 -->
                            <li data-transition="random" data-slotamount="8" data-masterspeed="400" data-thumb="${pageContext.request.contextPath}/resources/geass/images/homeslider/slide12.jpg" data-saveperformance="on"  data-title="Welcome to Geass">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/revslider/dummy.png"  alt="slidebg1" data-lazyload="${pageContext.request.contextPath}/resources/geass/images/homeslider/slide12.jpg" data-kenburns="on" data-bgposition="center center" data-duration="4800" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center top" data-bgrepeat="no-repeat">
                                <div class="tp-caption rev-title rev-uppercase sft stt" data-x="center" data-hoffset="25" data-y="215" data-start="1000" data-speed="1000"><span class="yellow-color">Welcome</span> to</div>

                                <div class="tp-caption rev-title rev-title-biggest customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-start="600" data-splitin="chars" data-splitout="chars" data-elementdelay="0.3" data-endelementdelay="0.1" data-endspeed="600" data-x="center" data-y="205" data-speed="1200">Geass</div>
                            </li>
                            <li data-transition="random" data-slotamount="8" data-masterspeed="450" data-thumb="${pageContext.request.contextPath}/resources/geass/images/homeslider/slide2.jpg" data-saveperformance="on"  data-title="Awesome Designs">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/revslider/dummy.png"  alt="slidebg2" data-lazyload="${pageContext.request.contextPath}/resources/geass/images/homeslider/slide2.jpg"  data-kenburns="on" data-bgposition="center bottom" data-duration="4200" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center center" data-bgrepeat="no-repeat">
                                
                                <div class="tp-caption rev-title rev-border sft stt" data-x="center" data-y="210" data-start="1000" data-speed="1000">We Like to <span class="yellow-color">Create</span></div>

                                <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-start="600" data-splitin="chars" data-splitout="chars" data-elementdelay="0.3" data-endelementdelay="0.1" data-endspeed="600" data-x="center" data-y="295" data-speed="1200">Awesome Designs</div>
                            </li>
                            <li data-transition="random" data-slotamount="8" data-masterspeed="450" data-thumb="${pageContext.request.contextPath}/resources/geass/images/homeslider/slide5.jpg" data-saveperformance="on" data-title="Creative Team">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/revslider/dummy.png"  alt="slidebg3" data-lazyload="${pageContext.request.contextPath}/resources/geass/images/homeslider/slide5.jpg" data-kenburns="on" data-bgposition="center bottom" data-duration="5200" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center center" data-bgrepeat="no-repeat">
                                <div class="tp-caption rev-title sft stt" data-x="center" data-hoffset="-125" data-y="145" data-start="600" data-speed="1000">Couple Of</div>
                                <div class="tp-caption rev-title lightblue-color sfb stb" data-x="center" data-hoffset="125" data-y="145" data-start="600" data-speed="1000">Creative Minds</div>

                                <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="center" data-hoffset="-180" data-y="206" data-start="600" data-speed="1200">Waiting to</div>

                                <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-start="2600" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="center" data-hoffset="100" data-y="306" data-speed="1200">work with you</div>

                                <div class="tp-caption rev-title-big randomrotate randomrotateout" data-x="center" data-y="460" data-start="3200" data-speed="1000"><a href="#" class="btn btn-lightblue">Contact Now</a></div>
                            </li>
                        </ul>
                    </div><!-- End revslider -->
                </div><!-- End revslider-container -->
            </section><!-- End #home -->


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
 
               <div class="footer-social-icons transparent">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="social-icons-container">
                                    <li><a href="#" class="facebook add-tooltip" data-placement="top" data-toggle="tooltip" title="Follow us on Facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" class="twitter add-tooltip" data-placement="top" data-toggle="tooltip" title="Follow us on Twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" class="googleplus add-tooltip" data-placement="top" data-toggle="tooltip" title="Follow us on Google +"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#" class="dribbble add-tooltip" data-placement="top" data-toggle="tooltip" title="Find us at Dribbble"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#" class="tumblr add-tooltip" data-placement="top" data-toggle="tooltip" title="Find us at Tumblr"><i class="fa fa-tumblr"></i></a></li>
                                    <li><a href="#" class="flickr add-tooltip" data-placement="top" data-toggle="tooltip" title="Find us at Flickr"><i class="fa fa-flickr"></i></a></li>
                                </ul>
                            </div><!-- End .col-md-12 -->
                        </div><!-- End .row -->
                    </div><!-- End .container -->
                </div><!-- End .footer-social-icons -->
         <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <p>All rights reserved &copy; <a href="//wrapbootstrap.com/user/eony" title="Eonythemes">Eonythemes&trade;</a></p>
                            <span class="footer-date highlight yellow">2014</span>
                        </div><!-- End .col-md-12 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->
            </footer>
            
        </div><!-- End #wrapper -->

        <!-- Scroll Top Button -->
        <a href="#home" id="scroll-top" class="add-tooltip" data-placement="top" title="Go to top"><i class="fa fa-angle-double-up"></i></a>

        <!-- Plugins -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.prettyPhoto.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/twitter/jquery.tweet.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.tools.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.revolution.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/main.js"></script>
            
        <!-- Google map javascript api v3 -->
        <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

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
	/*----------------------------------------------------*/
	//* Google javascript api v3  -- map */
	/*----------------------------------------------------*/
	(function() {
		"use strict";

		if (document.getElementById("map")) {
			var locations = [
					[
							'<div class="map-info-box"><ul class="contact-info-list"><li><span><i class="fa fa-home fa-fw"></i></span> Mimar Sinan Mh., Konak/İzmir, Türkiye</li><li><span><i class="fa fa-phone fa-fw"></i></span> +90 0 (232) 324 11 83</li></ul></div>',
							38.396652, 27.090560, 9 ],
					[
							'<div class="map-info-box"><ul class="contact-info-list"><li><span><i class="fa fa-home fa-fw"></i></span> Kültür Mh., Konak/İzmir, Türkiye</li><li><span><i class="fa fa-phone fa-fw"></i></span> +90 0 (538) 324 11 84</li></ul></div>',
							38.432742, 27.159140, 8 ] ];

			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 13,
				center : new google.maps.LatLng(38.414592, 27.143122),
				scrollwheel : false,
				mapTypeId : google.maps.MapTypeId.ROADMAP
			});

			var infowindow = new google.maps.InfoWindow();

			var marker, i;

			for (i = 0; i < locations.length; i++) {
				marker = new google.maps.Marker({
					position : new google.maps.LatLng(locations[i][1],
							locations[i][2]),
					map : map,
					animation : google.maps.Animation.DROP,
					icon : 'images/pin.png',
				});

				google.maps.event.addListener(marker, 'click', (function(
						marker, i) {
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
			delay : 9000,
			startwidth : 1140,
			startheight : 600,
			onHoverStop : "true",
			hideThumbs : 0,
			lazyLoad : "on",
			navigationType : "none",
			navigationHAlign : "center",
			navigationVAlign : "bottom",
			navigationHOffset : 0,
			navigationVOffset : 20,
			soloArrowLeftHalign : "left",
			soloArrowLeftValign : "center",
			soloArrowLeftHOffset : 0,
			soloArrowLeftVOffset : 0,
			soloArrowRightHalign : "right",
			soloArrowRightValign : "center",
			soloArrowRightHOffset : 0,
			soloArrowRightVOffset : 0,
			touchenabled : "on",
			stopAtSlide : -1,
			stopAfterLoops : -1,
			dottedOverlay : "none",
			spinned : "spinner5",
			shadow : 0,
			hideTimerBar : "off",
			fullWidth : "off",
			fullScreen : "on",
			navigationStyle : "preview4"
		});
	});
</script>
    </body>
</html>
