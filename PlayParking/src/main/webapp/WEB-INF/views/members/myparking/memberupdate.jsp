<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>
<style>

#updateform { float: left; margin-left: 30%; margin-top:5%; width: 60%;}

</style>

<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- [if lt IE 9]>
<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif] -->
<link href="css/styles.css" rel="stylesheet"> 
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
 <script src="//code.jquery.com/jquery.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
 <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>

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
       
</head>
<body>
<%@ include file="../../Header.jsp" %>
                                    
<!-- 회원정보수정 -->
<!-- <div class="col-md-10 col-sm-9 col-xs-12" id="updateform"> -->
                                    
<div class="col-md-6 col-sm-12 col-xs-12 lg-margin" id="updateform">
<form class="form-horizontal" action="memberupdate.do" method="post" style="width: 60%">
    
    <h2>Update Information</h2>
      
      <label for="inputId"></label>
      <input type="hidden" class="form-control" name="mid" placeholder="Id" value="${memcheck.mid}">

      <label for="inputName">Name</label>
      <input type="text" class="form-control" name="mname" placeholder="Name" value="${memcheck.mname}">

      <label for="inputPassword">Password</label>
      <input type="password" class="form-control" name="mpwd" placeholder="Password" value="${memcheck.mpwd}">
    
      <label for="inputPhone">Phone</label>
      <input type="text" class="form-control" name="mphone" placeholder="Phone" value="${memcheck.mphone}">
   
      <label for="inputEmail">Email</label>
      <input type="text" class="form-control" name="memail" placeholder="Email" value="${memcheck.memail}">

      <label>Car Model</label>
       <div class="normal-selectbox clearfix">
         <select id="cbrand" name="cbrand" class="selectbox" onchange="call();">
            <option  value="브랜드선택">브랜드선택</option>
            <option value="현대">현대</option>
          	<option value="기아">기아</option>
         	<option value="쉐보레">쉐보레</option>
            <option  value="BMW">BMW</option>
            <option  value="아우디">아우디</option>
         </select>
       </div><!-- End .normal-selectbox-->
        
        <div id="cnamediv" class="normal-selectbox clearfix">
        </div><br><br>
 
    <div class="form-group" style="margin-left: 10%">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-lightblue">Complete</button>
      </div>
    </div>

</form>
</div>
<!-- 회원정보수정 -->

<script type="text/javascript">
var xhr;//전역변수

function call(){
	
xhr = new XMLHttpRequest();
xhr.onreadystatechange = resultParse; //함수등록후 재정의

var data = document.getElementById("cbrand").value;
/* alert(data);
data="cbrand="+data;
data.submit(); */

xhr.open("POST", "carname_update.do", true); //POST방식.비동기통식.
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

</body>
</html> 