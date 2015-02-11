<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약페이지</title>


<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
<!-- [if lt IE 9]>
<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif] -->
<!-- <link href="css/styles.css" rel="stylesheet">  -->
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
 <script src="//code.jquery.com/jquery.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
 <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>

</head>
<body>

<!-- TOP BAR -->
<%@ include file="../Header.jsp" %>
	<h1>예약페이지입니다!</h1>
	
		<input type = "date" min = "1987-07-01" max = "2020-03-01" name = "date" id="calendar" " >
	                    <br><br>
	                    <input type = "button" value = "날짜선택" onclick="getDate()"/>
	                    <input type = "reset" value = "reset"/>
		
		
		
		
		<div id="timePrint" style="size: 300px"></div>
		
		   
	
		
		
			
		<div id="selectTime" ></div>

	
	
	
	<script type="text/javascript">
	var date;
	var xhr=null;
	var time;
	var stime;
	var data;
	
	
	
	
	
	function getsTime(stime){
		 alert(data);
		stime = document.getElementById("selectTime").value;
		alert(stime);
		
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = resultParse;
	
	data =data + "&selectTime=" + stime;
		alert(data);

		//포스트방식
	xhr.open("POST", "insert.do", true);//POST방식 비동기통신
		xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
		xhr.send(data);//post방식일때는 요청body에 데이터를 담는다.
 
	
/*    frm.action="insert.do";
  frm.method="post";
  frm.submit();
		  */
		
		
		
	}
	
	
	
	
	function getsDate(time){
		time = document.getElementById("possibleTime").value;
		alert(time);
		
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = resultParse;
	
		data = data+ "&possibleTime=" + time;
	alert(data);
		//포스트방식
		xhr.open("POST", "reserve2.do", true);//POST방식 비동기통신
		xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
		xhr.send(data);//post방식일때는 요청body에 데이터를 담는다.

	
		
		
		
	}
	
	function getDate(date){
		date = document.getElementById("calendar").value;
		alert(date);
		
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = resultParse;
	
		data = "date=" + date;
		alert(data);

		//포스트방식
		xhr.open("POST", "reserve1.do", true);//POST방식 비동기통신
		xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
		xhr.send(data);//post방식일때는 요청body에 데이터를 담는다.

	
		
		
		
	}
	function resultParse() {
		if (xhr.readyState == 4) {//서버에서 전송이 끝남?
			if (xhr.status == 200) {//정상종료
				//alert(xhr.responseText);
				// 					viewData1(xhr.responseText);
				// 					viewData2(xhr.responseText); //->JSON
				// 					viewData3(xhr.responseXML);  //XML
				viewData3(xhr.responseText);//HTML
			}
		}

	}
	function viewData3(data) {
		
		document.getElementById("timePrint").innerHTML += data;
		//alert(f.possibleTime.value);
		//alert(document.getElementById("timePrint").innerHTML);

	}
	</script>
</body>
</html>