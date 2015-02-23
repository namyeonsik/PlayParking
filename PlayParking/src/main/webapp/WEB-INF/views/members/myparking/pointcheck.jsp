<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
<meta charset="utf-8">
<title>포인트 확인 및 이용내역</title>
<!-- <title>Geass - Creative Onepage Html5 Template</title> -->
<meta name="description"
   content="Geass is premium and creative multipurpose onepage template">
<meta name="author" content="Eon">

<!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass/css/jquery.selectbox.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass/css/bootstrap-switch.css">


<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass/css/fonts.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass/css/bootstrap.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass/css/font-awesome.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass/css/animate.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass/css/prettyPhoto.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass/css/revslider.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass/css/style.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/geass/css/responsive.css">

<!-- Favicon and Apple Icons -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/logo_small.png">
<link rel="apple-touch-icon" sizes="57x57"
   href="${pageContext.request.contextPath}/resources/geass/images/faviconx57.png">
<link rel="apple-touch-icon" sizes="72x72"
   href="${pageContext.request.contextPath}/resources/geass/images/faviconx72.png">

<!--- jQuery -->
<script
   src="${pageContext.request.contextPath}/resources/geass/js/jquery-1.11.1.min.js"></script>

 <!-- Queryloader -->
<script
   src="${pageContext.request.contextPath}/resources/geass/js/queryloader2.min.js"></script>

<!-- Modernizr -->
<script
   src="${pageContext.request.contextPath}/resources/geass/js/modernizr.js"></script>



<!-- 부트스트랩 끝!!!!!!!!!!!!!!!!!!!! -->

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

.header {
   height: 50px
}

.body {
   margin-top: 50px;
   margin-left: 9%;
   font-family: HU미드나잇120;
}

.mypoint {
   width: 30%;
   margin-top: 5%;
   margin-left: 10%;
   float: left;
   border:1px solid #d9d7d8;
   background-color: #f4f3f3;
   padding: 2%;
   
   	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;  
}

.mypoint .mpoint {
   float: right;
   margin-right: 5%;
   font-family: HU미드나잇120;
}

.charge {
   width: 30%;
   margin-top: 5%;
   margin-left: 14%;
   float: left;
   height: 60%;
   border:1px solid #d9d7d8;
   background-color: #f4f3f3;
   padding: 2%;
   
   border-bottom-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;  
}

.charge .cbtn {
   float: right;
   margin-right: 5%;
   margin-top: 8%;
   height: 20%;
}
.history{
	border:1px solid #d9d7d8;
    background-color: #f4f3f3;
	margin-top: 5%;
	margin-left: 9%;
	margin-right: 15%;
	padding-bottom: 3%;
	
	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;  
}
.title {
   width: 80%;
   margin-top: 5%;
   margin-left: 3%;
   float: left;
}

.paypoint {
   width: 45%;
   margin-top: 3%;
   margin-left: 5%;
   float: left;
}

.paypoint ul {
   clear: left;
   margin: 0;
   padding: 0;
   list-style-type: none;
}

.paypoint .ptitle {
   font-weight: bold;
   text-align: center;
}

.paypoint ul li {
   text-align: center;
   float: left;
   margin: 0;
   padding: 2px, 1px;
   width: 200px;
}

.paypoint ul .list-group-item list-group-item-lightblue {
   width: 199px;
} /* 표 라인 맞추기기 위해*/
.paypoint ul .list-group-item {
   width: 199px;
}

.usepoint {
   width: 45%;
   margin-top: 3%;
   margin-right: 5%;
   float: right;
}

.usepoint ul {
   clear: left;
   margin: 0;
   padding: 0;
   list-style-type: none;
}

.usepoint .utitle {
   font-weight: bold;
   text-align: center;
}

.usepoint ul li {
   text-align: center;
   float: left;
   margin: 0;
   padding: 2px, 1px;
   width: 200px;
}

.usepoint ul .list-group-item list-group-item-lightblue {
   width: 199px;
} /* 표 라인 맞추기기 위해*/
.usepoint ul .list-group-item {
   width: 199px;
}
</style>

<style>
#point {
   margin-left: 5%;
   margin-top: 5%;
   width: 80%;
}
</style>

</head>

<body>
   <!-- 진짜헤더시작 -->
   <div class="header">
      <%@ include file="../../Header.jsp"%>
   </div>
   <!-- 진짜헤더끝 -->

   <div class="body">

      <div class="row">
         <div class="mypoint">
            <h3><font face="HU미드나잇120">나의 포인트</font></h3>
            <div class="mpoint">
               <h1>${point.mpoint}P</h1>
            </div>
         </div>
		<div class="non">
		</div>
         <div class="charge">
            <h3><font face="HU미드나잇120">포인트 충전</font></h3>
            <div class="cbtn">
               <input class="btn btn-lightblue" type="button" value="충전하기"
                  onclick="window.open('paypoint.do', 'window팝업', 'width=400, height=400, menubar=no, status=no, toolbar=no, top=200, left=200');">
            <br> <br>
            </div>
            <br> <br>
         </div>
      </div>
		<div class="history">
      <div class="title">
         <h3><font face="HU미드나잇120">포인트 내역</font></h3>
      </div>

      <div class="row">
         <!--  포인트 충전내역 -->
         <div class="paypoint">

            <!-- Tab nav -->
            <ul class="nav nav-tabs" role="tablist" style="border-color: #f4f3f3;">
               <li class="active"><a href="#pay1" role="tab"
                  data-toggle="tab">최근내역</a></li>
               <li><a href="#pay2" role="tab" data-toggle="tab">전체내역</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
               <div class="tab-pane fade in active" id="pay1">
                  <ul class="ptitle">
                     <li class="list-group-item list-group-item-lightblue">충전날짜</li>
                     <li class="list-group-item list-group-item-lightblue">충전내역</li>
                  </ul>

                  <c:forEach items="${tenpaypointlist}" var="tenpaypointlist">
                     <ul>
                        <li class="list-group-item"><c:set var="d"
                              value="${tenpaypointlist.paydate}" /> <fmt:formatDate
                              value="${d}" pattern="yy-MM-dd" /></li>
                        <li class="list-group-item">${tenpaypointlist.paypoint}</li>
                     </ul>
                  </c:forEach>
               </div>
               <!-- End .tab-pane -->
               <div class="tab-pane fade" id="pay2">
                  <ul class="ptitle">
                     <li class="list-group-item list-group-item-lightblue">충전날짜</li>
                     <li class="list-group-item list-group-item-lightblue">충전내역</li>
                  </ul>

                  <c:forEach items="${paypointlist}" var="paypointlist">
                     <ul>
                        <li class="list-group-item"><c:set var="d"
                              value="${paypointlist.paydate}" /> <fmt:formatDate
                              value="${d}" pattern="yy-MM-dd" /></li>
                        <li class="list-group-item">${paypointlist.paypoint}</li>
                     </ul>
                  </c:forEach>
               </div>
            </div>
            <!-- End .tab-content -->

         </div>
         <!--  포인트 충전내역 끝 -->

         <!--  포인트 사용내역 -->
         <div class="usepoint">

            <!-- Tab nav -->
            <ul class="nav nav-tabs" role="tablist" style="border-color: #f4f3f3;">
               <li class="active"><a href="#use1" role="tab"
                  data-toggle="tab">최근내역</a></li>
               <li><a href="#use2" role="tab" data-toggle="tab">전체내역</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
               <div class="tab-pane fade in active" id="use1">
                  <ul class="utitle">
                     <li class="list-group-item list-group-item-lightblue">사용날짜</li>
                     <li class="list-group-item list-group-item-lightblue">사용내역</li>
                  </ul>

                  <c:forEach items="${tenusepointlist}" var="tenusepointlist">
                     <ul>
                        <li class="list-group-item"><c:set var="d"
                              value="${tenusepointlist.usedate}" /> <fmt:formatDate
                              value="${d}" pattern="yy-MM-dd" /></li>
                        <li class="list-group-item">${tenusepointlist.usepoint}</li>
                     </ul>
                  </c:forEach>
               </div>
               <!-- End .tab-pane -->
               <div class="tab-pane fade" id="use2">
                  <ul class="utitle">
                     <li class="list-group-item list-group-item-lightblue">사용날짜</li>
                     <li class="list-group-item list-group-item-lightblue">사용내역</li>
                  </ul>

                  <c:forEach items="${usepointlist}" var="usepointlist">
                     <ul>
                        <li class="list-group-item"><c:set var="d"
                              value="${usepointlist.usedate}" /> <fmt:formatDate
                              value="${d}" pattern="yy-MM-dd" /></li>
                        <li class="list-group-item">${usepointlist.usepoint}</li>
                     </ul>
                  </c:forEach>
               </div>
            </div>
            <!-- End .tab-content -->

         </div>
         <!--  포인트 사용내역 끝 -->
      </div>
</div>
   </div>
   <!-- Plugins -->
   <script
      src="${pageContext.request.contextPath}/resources/geass/js/jquery.selectbox.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass/js/bootstrap.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass/js/plugins.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass/js/jquery.prettyPhoto.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass/js/twitter/jquery.tweet.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.tools.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.revolution.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass/js/main.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/geass/js/bootstrap-switch.min.js"></script>
</body>
</html>
