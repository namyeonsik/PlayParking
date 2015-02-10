<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>포인트 충전</title>


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


</head>
<body>
<%@ include file="../../Header.jsp" %>

	<!-- 포인트충전 -->
<div id="paypointform">
<form class="form-horizontal" action="paypoint.do" method="post" style="width: 50%">
  <fieldset>
    <legend>포인트 충전</legend>
   <div class="form-group">
      <label for="inputId" class="col-lg-2 control-label"></label>
      <div class="col-lg-10">
        <input type="hidden" class="form-control" name="mid" placeholder="Id" value="${memcheck.mid}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">충전할금액</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="mpoint" placeholder="금액을 입력하세요(단위:천원)">
        <br>
      </div>
    </div>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="submit" class="btn btn-primary">충전</button>
      </div>
    </div>
    
  </fieldset>
</form>
</div>
<!-- 포인트충전 -->

</body>
</html>