<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if IE 9]> <html class="ie9"> <![endif]-->
<!--[if !IE]><!--><html lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>Geass - Creative Onepage Html5 Template</title>
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
        
	    
    </head>
    <body data-spy="scroll" data-target="#main-menu">
        <div class="geass-loader-overlay left"></div><!-- End .geass-loader-overlay left -->
        <div class="geass-loader-overlay right"></div><!-- End .geass-loader-overlay right -->
        <div id="wrapper">

            <!-- Header / Menu Section -->
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
                                <li><a href="#services">reserve</a></li>
                                <li><a href="#search">search</a></li>
                                <li><a href="#portfolio">Notice</a></li>
                                <li class="dropdown">
                                    <a href="#pages" class="dropdown-toggle" data-toggle="dropdown"><span class="sm-separator">MyParking</span><i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="blog.html">myinfo update</a></li>
                                        <li><a href="blog.html">reserve check</a></li>
                                        <li><a href="single.html">point check</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
            </header>

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


            
            <!-- Skills Section -->
            <div class="skills-container parallax" data-stellar-background-ratio="0.4">
                <div class="overlaybg"></div><!-- End .overlaybg -->
                <div class="parallax-content">
                        <div class="container">
                            <header class="parallax-header clearfix text-center">
                                <h2 class="parallax-title">Our Experience</h2>
                                <p class="parallax-desc">Some of our lucky numbers, our experiences. How good we are and What do we offer...</p>
                            </header>
                            <div class="row">

                                <div class="col-md-3 col-sm-6 col-xs-6 circle-progress-container">
                                    <div class="circle-progress progress-animate">
                                        <input type="text" class="knob" data-width="160"  data-height="160" data-readOnly="true" data-fgColor="#f8d61b" data-animateto="92" data-thickness=".06" data-animatespeed="1000">
                                    </div><!-- End .circle-progress -->
                                    <h3 class="progress-title">Web Design</h3>
                                </div><!-- End .col-md-3 -->

                                <div class="col-md-3 col-sm-6 col-xs-6 circle-progress-container">
                                    <div class="circle-progress progress-animate">
                                        <input type="text" class="knob" data-width="160"  data-height="160" data-readOnly="true" data-fgColor="#1bc4f5" data-animateto="86" data-thickness=".06" data-animatespeed="1400">
                                    </div><!-- End .circle-progress -->
                                    <h3 class="progress-title">Logo Design</h3>
                                </div><!-- End .col-md-3 -->

                                <div class="lg-margin visible-sm visible-xs hidden-xss clearfix"></div><!-- space -->

                                <div class="col-md-3 col-sm-6 col-xs-6 circle-progress-container">
                                    <div class="circle-progress progress-animate">
                                        <input type="text" class="knob" data-width="160"  data-height="160" data-readOnly="true" data-fgColor="#c90e31" data-animateto="90" data-thickness=".06" data-animatespeed="1800">
                                    </div><!-- End .circle-progress -->
                                    <h3 class="progress-title">Advertising</h3>
                                </div><!-- End .col-md-3 -->

                                <div class="col-md-3 col-sm-6 col-xs-6 circle-progress-container">
                                    <div class="circle-progress progress-animate">
                                        <input type="text" class="knob" data-width="160"  data-height="160" data-readOnly="true" data-fgColor="#09d33d" data-animateto="100" data-thickness=".06" data-animatespeed="2200">
                                    </div><!-- End .circle-progress -->
                                    <h3 class="progress-title">Happy Face</h3>
                                </div><!-- End .col-md-3 -->
                                
                            </div><!-- End .row -->
                        </div><!-- End .container -->
                </div><!-- End parallax-content -->
            </div><!-- End .countto-container -->

         
            <!-- Count Parallax Section -->
            <div class="countto-container parallax" data-stellar-background-ratio="0.4">
                <div class="overlaybg"></div><!-- End .overlaybg -->
                <div class="parallax-content">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-3 col-sm-6 col-xs-6 count-container">
                                <span class="count" data-from="0" data-to="724" data-speed="3000" data-refresh-interval="50">0</span>
                                <h3>Complated <span>Projects</span></h3>
                            </div><!-- End .count-container -->

                            <div class="col-md-3 col-sm-6 col-xs-6 count-container">
                                <span class="count" data-from="0" data-to="476" data-speed="3000" data-refresh-interval="50">0</span>
                                <h3>Satisfied <span>Customers</span></h3>
                            </div><!-- End .count-container -->

                            <div class="xlg-margin visible-sm visible-xs hidden-xss clearfix"></div><!-- space -->

                            <div class="col-md-3 col-sm-6 col-xs-6 count-container">
                                <span class="count" data-from="0" data-to="89" data-speed="3000" data-refresh-interval="50">0</span>
                                <h3>Winning <span>Awards</span></h3>
                            </div><!-- End .count-container -->

                            <div class="col-md-3 col-sm-6 col-xs-6 count-container">
                                <span class="count" data-from="0" data-to="1174" data-speed="3000" data-refresh-interval="50">0</span>
                                <h3>Enjoyable <span>Days</span></h3>
                            </div><!-- End .count-container -->

                        </div><!-- End .row -->
                    </div><!-- End .container -->
                </div><!-- End .parallax-content -->
            </div><!-- End .countto-container -->

            

            <!-- Testimonials Section -->
            <div class="testimonials-container parallax" data-stellar-background-ratio="0.4">
                <div class="overlaybg"></div><!-- End .overlaybg -->
                <div class="parallax-content">
                    <div class="container">
                        <header class="parallax-header clearfix text-center md-margin2x">
                            <h2 class="parallax-title clear-margin">Testimonials</h2>
                        </header>
                        <div class="row">

                            <div class="col-md-8 col-md-push-2 col-sm-8 col-sm-push-2">
                                <div class="owl-carousel testimonials-carousel">
                                    <div class="testimonial">
                                        <figure><img src="${pageContext.request.contextPath}/resources/geass/images/testimonials/dean.jpg" alt="Dean Winchester"></figure>
                                        <p>First of all thank you very much for awesome product. What i like about you, is you don't give us only quality products, you also provide awesome supports. I am a life time customer here. When i need to design a website, you will be the one that i will ask to create. Thanks again for the world class design and clean code. Really appreciate.</p>
                                        <span class="testimonial-owner">Dean Winchester - <span>Ceo of Parke</span></span>
                                    </div><!-- End .testimonial -->

                                    <div class="testimonial">
                                        <figure><img src="${pageContext.request.contextPath}/resources/geass/images/testimonials/jane.jpg" alt="Jane Watson"></figure>
                                        <p>I have used Geass’s services for the last three years. I have three sources of income - one from my rental property, one from my full time job and the other from my investments. Geass pointed out ways I can reduce taxes and boost my income in legitimately creative ways.</p>
                                        <span class="testimonial-owner">Jane Watson - <span>Developer of Cacky</span></span>
                                    </div><!-- End .testimonial -->

                                    <div class="testimonial">
                                        <figure><img src="${pageContext.request.contextPath}/resources/geass/images/testimonials/sam.jpg" alt="Sam Smimsonn"></figure>
                                        <p>Fantastic product, my sites all run super fast and the support is excellent! Fortunately, Geass was my knight in shining armor. They set me up on their enterprise plan and handled the entire process flawlessly. Thank you very much for helping our company getting better. Can't wait to wokr with you again.</p>
                                        <span class="testimonial-owner">Sam Smimsonn - <span>Designer of Goopsy</span></span>
                                    </div><!-- End .testimonial -->
                                </div><!-- End. owl-carousel -->
                            </div><!-- End .col-md-8 -->
                            
                        </div><!-- End .row -->
                    </div><!-- End .container -->
                </div><!-- End parallax-content -->
            </div><!-- End .testimonials-container -->


            <footer id="footer" class="pattern13">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="index.html" class="footer-logo" title="Geass - Creative Onepage Template"><img src="${pageContext.request.contextPath}/resources/geass/images/logo.png" width="210" height="75" alt="Geass Logo"></a>
                        </div><!-- End .col-md-12 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->

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

        <script>
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
    </body>
</html>
