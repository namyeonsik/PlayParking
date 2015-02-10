<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주차장 정보 수정</title>
<style>

#updateform { float: left; margin-left: 10%; margin-top:10%; width: 50%;}

</style>

<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<script src="//code.jquery.com/jquery.js"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="{{ STATIC_URL }}js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootswatch/3.3.2/cosmo/bootstrap.min.css" rel="stylesheet">
 


</head>
<body>
<%@ include file="AdminHeader.jsp" %>

<!-- 주차장정보수정 -->
<div id="updateform">
<form class="form-horizontal" action="parkingupdate.do" method="post" style="width: 50%">
  <fieldset>
    <legend>Update Information</legend>
    <div class="form-group">
      <label for="inputId" class="col-lg-2 control-label"></label>
      <div class="col-lg-10">
        <input type="hidden" class="form-control" name="pid" placeholder="Id" value="${parking.pid}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputName" class="col-lg-2 control-label">Name</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="pname" placeholder="Name" value="${parking.pname}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputName" class="col-lg-2 control-label">Fare</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="pfare" placeholder="Fare" value="${parking.pfare}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Phone</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="pphone" placeholder="Phone" value="${parking.pphone}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <label for="inputPhone" class="col-lg-2 control-label">Count</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="pcount" placeholder="수용가능한 대수" value="${parking.pcount}">
        <br>
      </div>
    </div>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Complete</button>
      </div>
    </div>
  </fieldset>
</form>
</div>
<!-- 주차장정보수정 -->

</body>
</html>