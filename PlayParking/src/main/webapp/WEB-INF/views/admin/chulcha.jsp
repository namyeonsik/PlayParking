<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="reservationupdate.do" method="post">

<h1>${naga}원 더 내라</h1>
<h1>${rid }</h1>
<input type="hidden" name="rid" value="${rid }"> 
<input type="hidden" name="naga" value="${naga }">

<input type="submit" value="출차확인" onclick="call()">
<!-- <input type="hidden" value="call()"> -->
<script type="text/javascript">
function call(){
window.opener.location.reload();
window.close();
}
</script>
</form>
</body>
</html>