<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
            </header><!-- 헤더 -->
            
             <!-- 예약 Section -->
            <section id="reserve" class="section">
                <header class="container text-center">
                    <h1 class="section-title">Reserve</h1>
                    <p class="section-desc">
                        What we offer is our best. We promise you that we will do what we are best at. Check out our services and find the one you want...
                    </p>
                </header>

                <div id="our-services">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div class="service wow fadeInUp" data-wow-delay="0.25s">
                                    <div class="service-header">
                                        <span class="service-icon yellowbg"><i class="fa fa-photo"></i></span>
                                        <h2>Web Design</h2>
                                    </div><!-- End .services-header -->
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, animi nemo tempora, explicabo accusantium distinctio.</p>
                                </div><!-- End .service -->
                            </div><!-- End .col-md-3 -->
                            <div class="col-md-3 col-sm-6">
                                <div class="service wow fadeInUp" data-wow-delay="0.5s">
                                    <div class="service-header">
                                        <span class="service-icon orangebg"><i class="fa fa-file-code-o"></i></span>
                                        <h2>Web Development</h2>
                                    </div><!-- End .services-header -->
                                    <p>Donec fring explicabo accusantium tellus auctor, placerat dolor bibendum. Cras et blandit justo, at mattis uspen disse tortor.</p>
                                </div><!-- End .service -->
                            </div><!-- End .col-md-3 -->
                            <div class="visible-sm clearfix md-margin"></div><!-- clear -->
                            <div class="col-md-3 col-sm-6">
                                <div class="service  wow fadeInUp" data-wow-delay="0.75s">
                                    <div class="service-header">
                                        <span class="service-icon lightbluebg"><i class="fa fa-certificate"></i></span>
                                        <h2>Logo Design</h2>
                                    </div><!-- End .services-header -->
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, animi nemo tempora, quis explicabo accusantium.</p>
                                </div><!-- End .service -->
                            </div><!-- End .col-md-3 -->
                            <div class="col-md-3 col-sm-6">
                                <div class="service wow fadeInUp" data-wow-delay="1s">
                                    <div class="service-header">
                                        <span class="service-icon bluebg"><i class="fa fa-cloud"></i></span>
                                        <h2>Hosting</h2>
                                    </div><!-- End .services-header -->
                                    <p>Fusce eu tellus ut est congue efficitur. Fusce pharetra nisi finibus dolor porttitor, at imperdiet odio commodo morbi. </p>
                                </div><!-- End .service -->
                            </div><!-- End .col-md-3 -->
                        </div><!-- End .row -->


                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div class="service wow fadeInUp" data-wow-delay="0.25s">
                                    <div class="service-header">
                                        <span class="service-icon redbg"><i class="fa fa-eye"></i></span>
                                        <h2>Advertisement</h2>
                                    </div><!-- End .services-header -->
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, animi nemo tempora, explicabo accusantium distinctio.</p>
                                </div><!-- End .service -->
                            </div><!-- End .col-md-3 -->
                            <div class="col-md-3 col-sm-6">
                                <div class="service wow fadeInUp" data-wow-delay="0.5s">
                                    <div class="service-header">
                                        <span class="service-icon purplebg"><i class="fa fa-group"></i></span>
                                        <h2>Social Media</h2>
                                    </div><!-- End .services-header -->
                                    <p>Donec fring explicabo accusantium tellus auctor, placerat dolor bibendum. Cras et blandit justo, at mattis uspen disse tortor.</p>
                                </div><!-- End .service -->
                            </div><!-- End .col-md-3 -->
                            <div class="visible-sm clearfix md-margin"></div><!-- clear -->
                            <div class="col-md-3 col-sm-6">
                                <div class="service  wow fadeInUp" data-wow-delay="0.75s">
                                    <div class="service-header">
                                        <span class="service-icon lightgreenbg"><i class="fa fa-sitemap"></i></span>
                                        <h2>Seo</h2>
                                    </div><!-- End .services-header -->
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, animi nemo tempora, quis explicabo accusantium.</p>
                                </div><!-- End .service -->
                            </div><!-- End .col-md-3 -->
                            <div class="col-md-3 col-sm-6">
                                <div class="service wow fadeInUp" data-wow-delay="1s">
                                    <div class="service-header">
                                        <span class="service-icon greenbg"><i class="fa fa-support"></i></span>
                                        <h2>Support</h2>
                                    </div><!-- End .services-header -->
                                    <p>Fusce eu tellus ut est congue efficitur. Fusce pharetra nisi finibus dolor porttitor, at imperdiet odio commodo morbi. </p>
                                </div><!-- End .service -->
                            </div><!-- End .col-md-3 -->
                        </div><!-- End .row -->
                    </div><!-- Ênd .container -->

                    <div class="sm-margin"></div><!-- space -->

                    <div class="container text-center">
                        <a href="#" class="btn btn-lg btn-yellow  wow tada">More Services</a>
                    </div>
                </div><!-- End #our-services -->
            </section>
            




</body>
</html>