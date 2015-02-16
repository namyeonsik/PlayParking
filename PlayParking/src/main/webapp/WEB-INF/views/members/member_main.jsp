<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 메인</title>


<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
<!-- <meta charset="utf-8">
        <title>Geass - Creative Onepage Html5 Template</title> -->
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
       
<!-- Plugins -->
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.selectbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.prettyPhoto.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/twitter/jquery.tweet.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.tools.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.revolution.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/geass/js/main.js"></script>
</head>
<body>
<%@ include file="../Header.jsp" %>

<div id="myCarousel" class="carousel slide">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <img src="${pageContext.request.contextPath}/resources/0202.jpg" width="100%" class="img-responsive">
      <div class="container">
        <div class="carousel-caption">
          <h1>1번</h1>
          <p>부트스트랩 어렵당</p>
          <p><a class="btn btn-lg btn-primary" href="http://getbootstrap.com">Learn More</a>
        </p>
        </div>
      </div>
    </div>
    <div class="item">
      <img src="${pageContext.request.contextPath}/resources/KakaoTalk_20150203_175007496.jpg" class="img-responsive" width="100%">
      <div class="container">
        <div class="carousel-caption">
          <h1>2번</h1>
          <p>Bootstrap 3 still features a 12-column grid, but many of the CSS class names have completely changed.</p>
          <p><a class="btn btn-large btn-primary" href="#">Learn more</a></p>
        </div>
      </div>
    </div>
    <div class="item">
      <img src="${pageContext.request.contextPath}/resources/야경.jpg" class="img-responsive">
      <div class="container">
        <div class="carousel-caption">
          <h1>3번</h1>
          <p>With "mobile-first" there is now only one percentage-based grid.</p>
          <p><a class="btn btn-large btn-primary" href="#">Browse gallery</a></p>
        </div>
      </div>
    </div>
  </div>
  <!-- Controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="icon-prev"></span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="icon-next"></span>
  </a>  
</div><!-- 메인 -->

	<!-- / END TOP BAR -->
	
	
	
	
	



<!-- Carousel
================================================== -->

<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<!-- <div class="container marketing">

  Three columns of text below the carousel
  <div class="row">
    <div class="col-md-4 text-center">
      <img class="img-circle" src="http://placehold.it/140x140">
      <h2>Mobile-first</h2>
      <p>Tablets, phones, laptops. The new 3 promises to be mobile friendly from the start.</p>
      <p><a class="btn btn-default" href="#">View details »</a></p>
    </div>
    <div class="col-md-4 text-center">
      <img class="img-circle" src="http://placehold.it/140x140">
      <h2>One Fluid Grid</h2>
      <p>There is now just one percentage-based grid for Bootstrap 3. Customize for fixed widths.</p>
      <p><a class="btn btn-default" href="#">View details »</a></p>
    </div>
    <div class="col-md-4 text-center">
      <img class="img-circle" src="http://placehold.it/140x140">
      <h2>LESS is More</h2>
      <p>Improved support for mixins make the new Bootstrap 3 easier to customize.</p>
      <p><a class="btn btn-default" href="#">View details »</a></p>
    </div>
  </div> --><!-- /.row -->


  <!-- START THE FEATURETTES -->

  <!-- <hr class="featurette-divider">

  <div class="featurette">
    <img class="featurette-image img-circle pull-right" src="http://placehold.it/512">
    <h2 class="featurette-heading">Responsive Design. <span class="text-muted">It'll blow your mind.</span></h2>
    <p class="lead">In simple terms, a responsive web design figures out what resolution of device it's being served on. Flexible grids then size correctly to fit the screen.</p>
  </div>

  <hr class="featurette-divider">

<<<<<<< HEAD
  <div class="featurette">
    <img class="featurette-image img-circle pull-left" src="http://placehold.it/512">
    <h2 class="featurette-heading">Smaller Footprint. <span class="text-muted">Lightweight.</span></h2>
    <p class="lead">The new Bootstrap 3 promises to be a smaller build. The separate Bootstrap base and responsive.css files have now been merged into one. There is no more fixed grid, only fluid.</p>
  </div>

  <hr class="featurette-divider">

  <div class="featurette">
    <img class="featurette-image img-circle pull-right" src="http://placehold.it/512">
    <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Flatness.</span></h2>
    <p class="lead">A big design trend for 2013 is "flat" design. Gone are the days of excessive gradients and shadows. Designers are producing cleaner flat designs, and Bootstrap 3 takes advantage of this minimalist trend.</p>
  </div>

  <hr class="featurette-divider"> -->

  <!-- /END THE FEATURETTES -->


  <!-- FOOTER -->
  <footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>안녕하세요 저희는 나는개발자에요!!!!!</p>
  </footer>

</div><!-- /.container -->

<input id="mm" value="${msg}" type="hidden"> 


<script type="text/javascript">
var dd = document.getElementById("mm").value;
if(dd!=''){
	alert("*"+dd+"*");
}
</script>


	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		
		
		
</body>
<script>
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
