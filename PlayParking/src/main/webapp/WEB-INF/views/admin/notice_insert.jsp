<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 입력</title>
<script type="text/javascript">
	function validation(){
		var email = myfrm.email.value;
		var mname = myfrm.mname.value;
		var pwd = myfrm.pwd.value;
		if(email == "" || email==null){
			alert("email 입력하세용");
			myfrm.email.focus();
			return false;
		}
		if(mname == "" || mname==null){
			alert("mname 입력하세용");
			myfrm.mname.focus();
			return false;
		}
		
		return true;
	}
</script>
</head>
<body>
공지사항 입력페이지

<form action="noticeinsert.do" method="post" 
	name="myfrm" onsubmit="return validation();">
		<!-- add라는 서블릿을 찾아서 dopost로 -->
		<h1>${adminid}</h1>
		<h1>${cnt}<</h1>
		
		<input type="hidden" name="nno" value="${cnt}">
		<input type="hidden" name="aid" id="aid" value="${adminid}">		
		제목 : <input type="text" name="ntitle"  value="" placeholder="제목을 입력하세요"><br>
		내용 : <input type="text" name="ntext" value="" ><br>
		<input type="submit" value="입력">
		<input type="reset" value="취소">
</form>	
	
</body>
</html>