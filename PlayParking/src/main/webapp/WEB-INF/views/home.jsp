<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 9]> <html class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>PlayParking</title>

<meta name="description"
   content="Geass is premium and creative multipurpose onepage template">
<meta name="author" content="Eon">

<!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass2/css/fonts.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass2/css/font-awesome.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass2/css/animate.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass2/css/prettyPhoto.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass2/css/revslider.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass2/css/style.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass2/css/responsive.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass2/css/jquery.selectbox.css">

<!-- Favicon and Apple Icons -->
<link rel="shortcut icon"
   href="${pageContext.request.contextPath}/resources/logo_small.png">
<link rel="apple-touch-icon" sizes="57x57"
   href="${pageContext.request.contextPath}/resources/geass2/images/faviconx57.png">
<link rel="apple-touch-icon" sizes="72x72"
   href="${pageContext.request.contextPath}/resources/geass2/images/faviconx72.png">

<!--- jQuery -->
<script
   src="${pageContext.request.contextPath}/resources/geass2/js/jquery-1.11.1.min.js"></script>

<!-- Queryloader -->
<script
   src="${pageContext.request.contextPath}/resources/geass2/js/queryloader2.min.js"></script>

<!-- Modernizr -->
<script
   src="${pageContext.request.contextPath}/resources/geass2/js/modernizr.js"></script>
<style>
@font-face {
   font-family: "HU미드나잇120";
   src:
      url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.eot');
   src:
      url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.eot?#iefix')
      format('embedded-opentype'),
      url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.woff) format('
      woff '),
      url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.ttf')
      format('truetype');
   src: local(※),
      url('${pageContext.request.contextPath}/resources/font/HU미드나잇120.woff')
      format('woff');
}

.dropdown-menu {
   font-family: "HU미드나잇120";
}
</style>

</head>
<body data-spy="scroll" data-target="#main-menu">
   <div class="geass-loader-overlay left"></div>
   <!-- End .geass-loader-overlay left -->
   <div class="geass-loader-overlay right"></div>
   <!-- End .geass-loader-overlay right -->
   <div id="wrapper">
      <header id="header" class="transparent">
         <nav class="navbar navbar-default navbar-transparent"
            role="navigation">
            <div class="container">
               <!-- Brand and toggle get grouped for better mobile display -->
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse"
                     data-target="#main-menu">
                     <span class="sr-only">Toggle navigation</span> <span
                        class="icon-bar"></span> <span class="icon-bar"></span> <span
                        class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand navbar-brand-img" href="membermain.do"><img
                     src="${pageContext.request.contextPath}/resources/logo_design.png"
                     class="img-responsive logo-white" alt="logo"></a>
               </div>

               <!-- Collect the nav links, forms, and other content for toggling -->
               <div class="collapse navbar-collapse navbar-right" id="main-menu">
                  <ul class="nav navbar-nav">
                     <li class="active"><a href="#home">Home</a></li>
                     <li><a href="aboutus.do">About</a></li>
                     <li><a href="search.do">Reservation</a></li>
                     <li><a href="noticelist1.do">Notice</a></li>
                     <li class="dropdown"><a href="#pages"
                        class="dropdown-toggle" data-toggle="dropdown"><span
                           class="sm-separator">MyParking</span><i
                           class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
                           <li><a href="memberupdate.do">내 정보 수정</a></li>
                           <li><a href="reservecheck.do">예약 확인</a></li>
                           <li><a href="reservecancel.do">예약 취소</a></li>
                           <li><a href="pointcheck.do">포인트 확인</a></li>
                        </ul></li>

                     <li><a id="loginmodal"
                        href=${sessionScope.memcheck.mname==null?"memberlogin.do":"memberlogout.do"}>
                           ${sessionScope.memcheck.mname==null?"Login":"Logout"}</a></li>
                     <li><a href="adminlogin.do">Manager</a></li>
                  </ul>
               </div>
               <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
         </nav>
      </header>
      <!-- 헤더끝 -->


      <!-- Home Section -->
            <section id="home" class="section">
                <div id="revslider-container">
                    <div id="revslider">
                        <ul>
                            <li data-transition="random" data-slotamount="8"
							data-masterspeed="400" data-saveperformance="off"><img
							src="${pageContext.request.contextPath}/resources/geass2/images/revslider/dummy.png"
							alt="slidebg1"
							data-lazyload="${pageContext.request.contextPath}/resources/geass2/images/homeslider/slide00.jpg"
							data-kenburns="off" data-bgposition="center center"
							data-duration="4800" data-bgfit="115" data-bgfitend="100"
							data-bgpositionend="center top" data-bgrepeat="no-repeat">
							<div class="tp-caption rev-title rev-title-main sft stt"
								data-x="center" data-hoffset="25" data-y="170" data-start="1000"
								data-speed="1000">
								<span class="white-color">Welcome</span> <span
									class="lightblue-color">to</span>
							</div>
 						<div
								class="tp-caption rev-title rev-title-main main customin customout"
								data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
								data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
								data-start="600" data-splitin="chars" data-splitout="chars"
								data-elementdelay="0.3" data-endelementdelay="0.1"
								data-endspeed="600" data-x="center" data-y="305"
								data-speed="600">Play Parking</div>
						</li>
						
                            <li data-transition="random" data-slotamount="8" data-masterspeed="450" data-thumb="${pageContext.request.contextPath}/resources/geass2/images/homeslider/slide00.jpg" data-saveperformance="off">
                                <img src="${pageContext.request.contextPath}/resources/geass2/images/revslider/dummy.png"  alt="slidebg3" data-lazyload="${pageContext.request.contextPath}/resources/slide_test.jpg" data-kenburns="on" data-bgposition="center bottom" data-duration="5200" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center center" data-bgrepeat="no-repeat">
                                <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="100" data-hoffset="-180" data-color="#d5d5d5" data-y="50" data-start="600" data-speed="1200">Why?</div>
                                <!-- <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="center" data-hoffset="-180" data-y="206" data-start="600" data-speed="1200">How?</div> -->
                                <div class="tp-caption rev-title title" data-x="130" data-hoffset="-125" data-y="350" data-start="600" data-speed="1000"><img src="${pageContext.request.contextPath}/resources/geass2/images/people.png"></div>
                                <div class="tp-caption rev-title title" data-x="480" data-hoffset="-125" data-y="360" data-start="600" data-speed="1000"><img src="${pageContext.request.contextPath}/resources/geass2/images/car.png"></div>                                
                                <div class="tp-caption rev-title title" data-x="830" data-hoffset="-125" data-y="250" data-start="600" data-speed="1000"><img src="${pageContext.request.contextPath}/resources/geass2/images/building.png"></div>
                                
                                <div class="tp-caption rev-title title why sft stt" data-x="150" data-hoffset="-125" data-y="550" data-start="600" data-speed="1000">주말마다 붐비는 도심</div>
                                <div class="tp-caption rev-title title why sft stt" data-x="500" data-hoffset="-125" data-y="550" data-start="600" data-speed="1000">가득찬 공영 주차장</div>
                                <div class="tp-caption rev-title title why sft stt" data-x="850" data-hoffset="-125" data-y="550" data-start="600" data-speed="1000">텅 빈 기업 주차장</div>
							</li>
                            <li data-transition="random" data-slotamount="8" data-masterspeed="450" data-thumb="${pageContext.request.contextPath}/resources/geass2/images/homeslider/slide00.jpg" data-saveperformance="off" >
                                <img src="${pageContext.request.contextPath}/resources/geass2/images/revslider/dummy.png"  alt="slidebg3" data-lazyload="${pageContext.request.contextPath}/resources/slide_test.jpg" data-kenburns="on" data-bgposition="center bottom" data-duration="5200" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center center" data-bgrepeat="no-repeat">
                                <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="100" data-hoffset="-180" data-color="#d5d5d5" data-y="50" data-start="600" data-speed="1200">How?</div>
                                <!-- <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="center" data-hoffset="-180" data-y="206" data-start="600" data-speed="1200">How?</div> -->
                                <div class="tp-caption rev-title title sft stt" data-x="300" data-hoffset="-125" data-y="330" data-start="600" data-speed="1000">검색부터 예약까지 한번에,</div>
                                <div class="tp-caption rev-title title lightblue-color sfb stb" data-x="720" data-hoffset="125" data-y="330" data-start="600" data-speed="1000">원-스톱서비스</div>
                                <div class="tp-caption rev-title title sft stt" data-x="300" data-hoffset="-125" data-y="400" data-start="600" data-speed="1000">유휴 주차장 활용,</div>
                                <div class="tp-caption rev-title title lightblue-color sfb stb" data-x="600" data-hoffset="125" data-y="400" data-start="600" data-speed="1000">폭넓어진 선택</div>
                                <div class="tp-caption rev-title title sft stt" data-x="300" data-hoffset="-125" data-y="470" data-start="600" data-speed="1000">편리한 주차장 관리,</div>
                                <div class="tp-caption rev-title title lightblue-color sfb stb" data-x="620" data-hoffset="125" data-y="470" data-start="600" data-speed="1000">고객과 주차장의 win-win</div>
							</li>
							
							<li data-transition="random" data-slotamount="8" data-masterspeed="450" data-thumb="${pageContext.request.contextPath}/resources/geass2/images/homeslider/slide00.jpg" data-saveperformance="off">
                                <img src="${pageContext.request.contextPath}/resources/geass2/images/revslider/dummy.png"  alt="slidebg3" data-lazyload="${pageContext.request.contextPath}/resources/slide_test.jpg" data-kenburns="on" data-bgposition="center bottom" data-duration="5200" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center center" data-bgrepeat="no-repeat">
                                <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="100" data-hoffset="-180" data-color="#d5d5d5" data-y="50" data-start="600" data-speed="1200">Effect?</div>
                                <!-- <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="center" data-hoffset="-180" data-y="206" data-start="600" data-speed="1200">How?</div> -->
                                <div class="tp-caption rev-title title sft stt" data-x="300" data-hoffset="-125" data-y="330" data-start="600" data-speed="1000">사용자 -</div>
                                <div class="tp-caption rev-title title lightblue-color sfb stb" data-x="460" data-hoffset="125" data-y="330" data-start="600" data-speed="1000">주말에 내 주차공간 미리 확보</div>
                                <div class="tp-caption rev-title title sft stt" data-x="300" data-hoffset="-125" data-y="400" data-start="600" data-speed="1000">기업 -</div>
                                <div class="tp-caption rev-title title lightblue-color sfb stb" data-x="420" data-hoffset="125" data-y="400" data-start="600" data-speed="1000">공유가치창출(CSV) 및 이미지 제고</div>
							</li>
                            
                        </ul>
                    </div><!-- End revslider -->
                </div><!-- End revslider-container -->
            </section><!-- End #home -->
                  
                            <li data-transition="random" data-slotamount="8" data-masterspeed="450" data-thumb="${pageContext.request.contextPath}/resources/geass2/images/homeslider/slide00.jpg" data-saveperformance="off">
                                <img src="${pageContext.request.contextPath}/resources/geass2/images/revslider/dummy.png"  alt="slidebg3" data-lazyload="${pageContext.request.contextPath}/resources/slide_test.jpg" data-kenburns="on" data-bgposition="center bottom" data-duration="5200" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center center" data-bgrepeat="no-repeat">
                                <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="100" data-hoffset="-180" data-color="#d5d5d5" data-y="50" data-start="600" data-speed="1200">Why?</div>
                                <!-- <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="center" data-hoffset="-180" data-y="206" data-start="600" data-speed="1200">How?</div> -->
                                <div class="tp-caption rev-title title" data-x="130" data-hoffset="-125" data-y="350" data-start="600" data-speed="1000"><img src="${pageContext.request.contextPath}/resources/geass2/images/people.png"></div>
                                <div class="tp-caption rev-title title" data-x="480" data-hoffset="-125" data-y="360" data-start="600" data-speed="1000"><img src="${pageContext.request.contextPath}/resources/geass2/images/car.png"></div>                                
                                <div class="tp-caption rev-title title" data-x="830" data-hoffset="-125" data-y="250" data-start="600" data-speed="1000"><img src="${pageContext.request.contextPath}/resources/geass2/images/building.png"></div>
                                
                                <div class="tp-caption rev-title title why sft stt" data-x="150" data-hoffset="-125" data-y="550" data-start="600" data-speed="1000">주말마다 붐비는 도심</div>
                                <div class="tp-caption rev-title title why sft stt" data-x="500" data-hoffset="-125" data-y="550" data-start="600" data-speed="1000">가득찬 공영 주차장</div>
                                <div class="tp-caption rev-title title why sft stt" data-x="850" data-hoffset="-125" data-y="550" data-start="600" data-speed="1000">텅 빈 기업 주차장</div>
                     </li>
                            <li data-transition="random" data-slotamount="8" data-masterspeed="450" data-thumb="${pageContext.request.contextPath}/resources/geass2/images/homeslider/slide00.jpg" data-saveperformance="off" >
                                <img src="${pageContext.request.contextPath}/resources/geass2/images/revslider/dummy.png"  alt="slidebg3" data-lazyload="${pageContext.request.contextPath}/resources/slide_test.jpg" data-kenburns="on" data-bgposition="center bottom" data-duration="5200" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center center" data-bgrepeat="no-repeat">
                                <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="100" data-hoffset="-180" data-color="#d5d5d5" data-y="50" data-start="600" data-speed="1200">How?</div>
                                <!-- <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="center" data-hoffset="-180" data-y="206" data-start="600" data-speed="1200">How?</div> -->
                                <div class="tp-caption rev-title title sft stt" data-x="300" data-hoffset="-125" data-y="330" data-start="600" data-speed="1000">검색부터 예약까지 한번에,</div>
                                <div class="tp-caption rev-title title lightblue-color sfb stb" data-x="720" data-hoffset="125" data-y="330" data-start="600" data-speed="1000">원-스톱서비스</div>
                                <div class="tp-caption rev-title title sft stt" data-x="300" data-hoffset="-125" data-y="400" data-start="600" data-speed="1000">유휴 주차장 활용,</div>
                                <div class="tp-caption rev-title title lightblue-color sfb stb" data-x="600" data-hoffset="125" data-y="400" data-start="600" data-speed="1000">폭넓어진 선택</div>
                                <div class="tp-caption rev-title title sft stt" data-x="300" data-hoffset="-125" data-y="470" data-start="600" data-speed="1000">편리한 주차장 관리,</div>
                                <div class="tp-caption rev-title title lightblue-color sfb stb" data-x="620" data-hoffset="125" data-y="470" data-start="600" data-speed="1000">고객과 주차장의 win-win</div>
                     </li>
                     
                     <li data-transition="random" data-slotamount="8" data-masterspeed="450" data-thumb="${pageContext.request.contextPath}/resources/geass2/images/homeslider/slide00.jpg" data-saveperformance="off">
                                <img src="${pageContext.request.contextPath}/resources/geass2/images/revslider/dummy.png"  alt="slidebg3" data-lazyload="${pageContext.request.contextPath}/resources/slide_test.jpg" data-kenburns="on" data-bgposition="center bottom" data-duration="5200" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center center" data-bgrepeat="no-repeat">
                                <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="100" data-hoffset="-180" data-color="#d5d5d5" data-y="50" data-start="600" data-speed="1200">Effect?</div>
                                <!-- <div class="tp-caption rev-title rev-title-big customin customout" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-splitin="chars" data-splitout="chars" data-elementdelay="0.2" data-endelementdelay="0.1" data-endspeed="600" data-x="center" data-hoffset="-180" data-y="206" data-start="600" data-speed="1200">How?</div> -->
                                <div class="tp-caption rev-title title sft stt" data-x="300" data-hoffset="-125" data-y="330" data-start="600" data-speed="1000">사용자 -</div>
                                <div class="tp-caption rev-title title lightblue-color sfb stb" data-x="460" data-hoffset="125" data-y="330" data-start="600" data-speed="1000">주말에 내 주차공간 미리 확보</div>
                                <div class="tp-caption rev-title title sft stt" data-x="300" data-hoffset="-125" data-y="400" data-start="600" data-speed="1000">기업 -</div>
                                <div class="tp-caption rev-title title lightblue-color sfb stb" data-x="420" data-hoffset="125" data-y="400" data-start="600" data-speed="1000">공유가치창출(CSV) 및 이미지 제고</div>
                     </li>
                            
                        </ul>
                    </div><!-- End revslider -->
                </div><!-- End revslider-container -->
            </section><!-- End #home -->
>>>>>>> branch 'master' of https://github.com/namyeonsik/PlayParking


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
                     <h4 class="modal-title" id="myModalLabel1">Login</h4>
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
                           class="required">*</span></label> <input type="password" name="mpwd"
                           id="mpwd" class="form-control input-lg">
                     </div>
                     <!-- End .form-group -->

                  </div>
                  <!-- End .modal-body -->

                  <div class="modal-footer">
                     <button type="button" style="float: left;"
                        class="btn btn-default" onClick="location.href='join.do';">JOIN</button>
                     <button type="submit" class="btn btn-blue">LOGIN</button>
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

      <footer>
         <div class="tail" style="padding: 13px;">
            <%@ include file="Tail.jsp"%>
         </div>
      </footer>

   </div>
   <!-- End #wrapper -->

   <!-- Scroll Top Button -->
   <a href="#home" id="scroll-top" class="add-tooltip"
      data-placement="top" title="Go to top"><i
      class="fa fa-angle-double-up"></i></a>

   <!-- Plugins -->
   <script
      src="${pageContext.request.contextPath}/resources/geass2/js/bootstrap.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass2/js/plugins.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass2/js/jquery.prettyPhoto.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass2/js/twitter/jquery.tweet.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass2/js/jquery.themepunch.tools.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass2/js/jquery.themepunch.revolution.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass2/js/main.js"></script>

   <!-- Google map javascript api v3 -->
   <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

   <input id="mm" value="${msg}" type="hidden">
   <input id="joinmsg" value="${joinok}" type="hidden">

   <script>
      var dd = document.getElementById("mm").value;
      if (dd != '') {
         alert("" + dd + "");
      }

      var elem = document.getElementById('loginmodal');
      elem.onclick = showModal;

      function showModal() {
         var val = elem.toString().split("/");
         if (val[val.length - 1] == "memberlogout.do") {
            $('#myModal').modal('hide');
            return true;
         } else {
            $('#modal-login-form').modal('show');
            return false;
         }
      }

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