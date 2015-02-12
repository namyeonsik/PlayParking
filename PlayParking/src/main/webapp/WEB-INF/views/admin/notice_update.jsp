<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> ***공지사항 수정***</h1>
	<form action="noticeupdate.do" method="post">
	${notice.aid }
	<input type="hidden" name="aid" value="${notice.aid}"><br>
		번호 : <input type="hidden" name="nno" value="${notice.nno}"><br>
		제목 : <input type="text" name="ntitle" value="${notice.ntitle}"><br>
		내용 : <input type="text" name="ntext" value="${notice.ntext}"><br>
			
		<input type="submit" value="수정">
		<input type="reset" value="취소">
		<input type="button" value="삭제" onclick="location.href='noticedelete.do?nno=${notice.nno}'">
		<input type="button" value="클릭!!" onclick="alert('눌렀어!')">
</form>
</body>
</html>