<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="insert1.do" method="post">

<h1>당신의 포인트는 ${mpoint} 입니다.</h1>

<h1>지불하실 포인트는 ${minusMpoint} 입니다.</h1>

	<input type="submit" value="예약완료"><br>
	<input type="button" value="충전하기" 
onclick="window.open('paypoint.do', 'window팝업', 'width=400,height=400, menubar=no, status=no, toolbar=no, top=200, left=200');"> 
	</form>
	
	
	