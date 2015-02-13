<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
            </header>







<!-- Portfolio Section -->
            <section id="portfolio" class="section">
                <header class="container text-center">
                    <h1 class="section-title">Portfolio</h1>
                    <p class="section-desc">
                        Check out our portfolio. We love to make creative and modern things. Explore our portfolio before hiring us...
                    </p>
                </header>

                <ul id="portfolio-filter" class="container text-center clearfix ">
                    <li><a href="#" class="active" data-filter="*">All</a></li>
                    <li><a href="#" data-filter=".photography">Photography</a></li>
                    <li><a href="#" data-filter=".design">Design</a></li>
                    <li><a href="#" data-filter=".video">Video</a></li>
                    <li><a href="#" data-filter=".illustration">Illustration</a></li>
                </ul><!-- End .portfolio-filter -->

                <div id="portfolio-single-content" class="container"></div><!-- End #portfolio-single-content -->
                
                <div id="portfolio-wrapper">
                    <ul id="portfolio-item-container" class="clearfix" data-maxcolumn="4" data-rotateanimation="true" data-animationclass="fadeInUpBig">
                        <li class="portfolio-item animate-item photography" data-animate-time="80">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item1.jpg" alt="item 1">
                                <div class="portfolio-overlay yellowbg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="images/portfolio/item1.jpg" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                                <a href="#" title="Photography">Photography</a>
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                        <li class="portfolio-item animate-item design illustration video" data-animate-time="160">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item2.jpg" alt="item 2">
                                <div class="portfolio-overlay lightbluebg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="//www.youtube.com/watch?v=bnb5bog0HsI" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                                <a href="#" title="Design">Design</a>
                                                <a href="#" title="Illustration">Illustration</a>
                                                <a href="#" title="Video">Video</a>
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                        <li class="portfolio-item animate-item design" data-animate-time="240">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item3.jpg" alt="item 3">
                                <div class="portfolio-overlay redbg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="images/portfolio/item3.jpg" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                                <a href="#" title="Design">Design</a>
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                        <li class="portfolio-item animate-item photography video" data-animate-time="320">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item4.jpg" alt="item 4">
                                <div class="portfolio-overlay lightgreenbg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="//www.youtube.com/watch?v=Ginx7WKq5GE" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                                <a href="#" title="Photography">Photography</a>
                                                <a href="#" title="Video">Video</a>
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                        <li class="portfolio-item animate-item illustration design" data-animate-time="400">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item5.jpg" alt="item 5">
                                <div class="portfolio-overlay bluebg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="images/portfolio/item5.jpg" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                            <a href="#" title="Illustrator">Illustrator</a>
                                            <a href="#" title="Design">Design</a>
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                        <li class="portfolio-item animate-item design" data-animate-time="480">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item6.jpg" alt="item 6">
                                <div class="portfolio-overlay greenbg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="${pageContext.request.contextPath}/resources/geass/images/portfolio/item6.jpg" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                            <a href="#" title="Design">Design</a>
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                        <li class="portfolio-item animate-item photography illustration" data-animate-time="560">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item7.jpg" alt="item 7">
                                <div class="portfolio-overlay orangebg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="images/portfolio/item7.jpg" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                            <a href="#" title="Photography">Photography</a>
                                            <a href="#" title="Illustration">Illustration</a>
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                        <li class="portfolio-item animate-item illustration" data-animate-time="640">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item8.jpg" alt="item 8">
                                <div class="portfolio-overlay purplebg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="${pageContext.request.contextPath}/resources/geass/images/portfolio/item8.jpg" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                            <a href="#" title="Illustration">Illustration</a>
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                        <li class="portfolio-item animate-item photography" data-animate-time="720">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item9.jpg" alt="item 9">
                                <div class="portfolio-overlay yellowbg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="${pageContext.request.contextPath}/resources/geass/images/portfolio/item9.jpg" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                            <a href="#" title="Photography">Photography</a>
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                        <li class="portfolio-item animate-item photography" data-animate-time="800">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item10.jpg" alt="item 10">
                                <div class="portfolio-overlay lightbluebg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="images/portfolio/item10.jpg" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                            <a href="#" title="Photography">Photography</a>,
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                        <li class="portfolio-item animate-item design video" data-animate-time="880">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item11.jpg" alt="item 11">
                                <div class="portfolio-overlay lightgreenbg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="images/portfolio/item11.jpg" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                            <a href="#" title="Design">Design</a>
                                            <a href="#" title="Video">Video</a>
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                        <li class="portfolio-item animate-item photography video" data-animate-time="960">
                            <div class="portfolio-item-wrapper">
                                <img src="${pageContext.request.contextPath}/resources/geass/images/portfolio/item12.jpg" alt="item 12">
                                <div class="portfolio-overlay purplebg">
                                    <div class="vcenter-container">
                                        <div class="vcenter">
                                            <a data-rel="prettyPhoto[portfolio]" href="images/portfolio/item12.jpg" title="Nam facilisis condimentum" class="zoom-btn"></a>
                                            <h2 class="portfolio-title"><a href="single-portfolio.html" title="Single Portfoli Page">Lorem ipsum dolor</a></h2>
                                            <p class="portfolio-tags">
                                            <a href="#" title="Photography">Photography</a>
                                            <a href="#" title="Video">Video</a>
                                            </p>
                                        </div><!-- End .portfolio-overlay -->
                                    </div><!-- End .portfolio-item-wrapper -->
                                </div><!-- End .portfolio-overlay -->
                            </div><!-- End .portfolio-item-wrapper -->
                        </li>
                    </ul><!-- End #portfolio-item-container -->
                </div><!-- End .portfolio-wrapper -->
            </section>
</div><!-- wrapper -->            
</body>
</html>