<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
<meta charset="utf-8">
<title>예약</title>
        <!-- <title>Geass - Creative Onepage Html5 Template</title> -->
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

<style type="text/css">
.header {height: 50px}
.body {margin-top: 100px;}
.col-md-6{
width: 80%;
	margin-top: 5%;
	margin-left: 10%;

}


.modal{width: 100%;
	
	}

.modal.modal-content{
width:100%;
height:20%;
margin-top: 80%;
	margin-left: 10%;
}
.modal-body{
width:100%;
height:10%;

margin-left:5%;

}


.btn1{
widhth:100%;
margin-bottom: 10%;
margin-left: 10%
 }
 
</style>


</head>
<body>
<!-- 진짜헤더시작 -->
<div class="header">
<%@ include file="../Header.jsp" %>
</div>
<!-- 진짜헤더끝 --> 

<div class="body">
<div class="col-md-6 col-sm-6 col-xs-6 xlg-margin">
 <div class="md-margin"></div><!--space -->
     <div class="accordion" id="accordion">
            <div class="accordion-group panel">
                  <div class="accordion-header">
                        <div class="accordion-title">날짜선택</div><!-- End .accourdion-title -->
                             <a class="accordion-btn open" data-toggle="collapse" data-parent="#accordion" href="#accordion-one"></a>
                  </div><!-- End .accordion-header -->

                  <div class="accordion-body collapse in" id="accordion-one">
                  <div class="accordion-body-wrapper"> <!-- 날짜선택폼을 넣는다 -->
                       <input type="date" class="form-control" min="1987-07-01"
                           max="2020-03-01" name="date" id="calendar" style="width: 40%;"><br><br>
                       <button type="button" onclick="getDate()" data-toggle="modal" data-target="#modal-text" class="btn btn-lightblue">Date Select</button>
                       <button type="reset" class="btn btn-default">reset</button>
                       
                       <!-- Modal Login From 2-->
                       <div class="modal fade" id="modal-text" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
                            <div class="modal-dialog modal-sm">
                                 <div class="modal-content">
                                      <div class="modal-header">
                                           <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                           <h4 class="modal-title" id="myModalLabel3">Message</h4>
                                       </div><!-- End .modal-header -->
                                  <div class="modal-body">
                                      <div id="msg1"></div><br><br><br><br>
                                  </div><!-- End .modal-body -->
                                  <button type="button" class="btn1 btn-orange" data-dismiss="modal">Close</button>
                                 </div><!-- End .modal-content -->
                             </div><!-- End .modal-dialog -->
                       </div><!-- End .modal -->
                                                        
                                                        
                  </div><!-- End .accordion-body-wrapper -->
                  </div><!-- End .accordion-body -->
            </div><!-- End .accordion-group -->
			
			<div class="accordion-group panel">
				<div class="accordion-header">
					<div class="accordion-title">주차 시간 선택</div>
					<!-- End .accourdion-title -->
					<a class="accordion-btn" data-toggle="collapse"
					data-parent="#accordion" href="#accordion-two"></a>
				</div>
				<!-- End .accordion-header -->
                <div class="accordion-body collapse" id="accordion-two">
					<div class="accordion-body-wrapper">
						<!-- 주차시간선택 -->
						<div id="timePrint"></div>
						<button type="button" data-toggle="modal"
							data-target="#modal-text1" onclick="getsDate()"
							class="btn btn-lightblue"
							position="position:absolute; top:0; left:0">Time
							Select</button>
						<button type="reset" class="btn btn-default">reset</button>

                      	<!-- Modal Login From 2-->
						<div class="modal fade" id="modal-text1" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
							
							<div class="modal-dialog modal-sm-9">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">
											<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
										</button>
										<h4 class="modal-title" id="myModalLabel3">Message</h4>
									</div>
									<!-- End .modal-header -->
									<div class="modal-body">
                                     	<div id="msg2"></div><br><br><br><br>
                                    </div>
									<!-- End .modal-body -->

									<button type="button" class="btn1 btn-orange"
										data-dismiss="modal">Close</button>
									<!-- <button class="btn btn-yellow">Action</button> -->

								</div>
								<!-- End .modal-content -->
							</div>
							<!-- End .modal-dialog -->
						
						<!-- End .modal -->

					</div>
                 </div><!-- End .accordion-body-wrapper -->
			</div>
			<!-- End .accordion-body -->

			<div class="accordion-group panel">
				<div class="accordion-header">
					<div class="accordion-title">이용시간선택</div>
					<!-- End .accourdion-title -->
					<a class="accordion-btn" data-toggle="collapse"
						data-parent="#accordion" href="#accordion-three"></a>
				</div>
				<!-- End .accordion-header -->

				<div class="accordion-body collapse" id="accordion-three">
					<div class="accordion-body-wrapper">
						<div id="selecttimePrint"></div>
						<!-- 이용시간선택 -->
						<div style="size: 60%">
							<div class="col-md-15 col-sm-15 col-xs-15" style="size: 60%">
								<input type="button" value="Select Time"
									class="btn btn-lightblue" onclick="getsTime()"
									data-toggle="modal" data-target="#modal-text2" />
								<h1></h1>
							</div>
						</div>
                     </div>
					<!-- End .accordion-group -->
               </div>
				<div id="submitPrint"></div>
			</div><!--  End .accordion-group -->
			<!-- Modal Login From 2-->
			<div class="modal fade" id="modal-text2" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel3" aria-hidden="true">
				<div class="modal-dialog modal-sm-9">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="myModalLabel3">Message</h4>
						</div>
						<!-- End .modal-header -->
						<div class="modal-body">
							<div id="msg3"></div><br><br><br><br>
						</div>
						<!-- End .modal-body -->

						<button type="button" class="btn1 btn-orange" data-dismiss="modal">Close</button>
						<!-- <button class="btn btn-yellow">Action</button> -->

					</div>
					<!-- End .modal-content -->
				</div>
				<!-- End .modal-dialog -->
			</div>
			<!-- End .modal -->

		</div><!-- End .accordion-body-wrapper -->
 </div><!-- col-md-6 col-sm-12 col-xs-12 xlg-margin -->

</div>




<script type="text/javascript">
	var date;
	var xhr = null;
	var time;
	var stime;
	var data;
	var msg1;

	function getsTime() {
		//alert(data);
		stime = document.getElementById("selectTime").value;
		//alert(stime);

		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = resultParse3;

		data = data + "&selectTime=" + stime;
		//   alert(data);

		msg1 = stime;
		viewData6();
		//포스트방식
		xhr.open("POST", "insert.do", true);//POST방식 비동기통신
		xhr.setRequestHeader("content-type",
				"application/x-www-form-urlencoded");
		xhr.send(data);//post방식일때는 요청body에 데이터를 담는다.

	}

	function getsDate(time) {
		time = document.getElementById("possibleTime").value;
		//   alert(time);

		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = resultParse2;

		data = data + "&possibleTime=" + time;
		msg1 = time;
		//alert(msg1.substring(0, 2));
		msg1 = msg1.substring(0, 2) + ":" + msg1.substring(2, 4);
		//alert(msg1);
		viewData5();
		//alert(data);
		//포스트방식
		xhr.open("POST", "reserve2.do", true);//POST방식 비동기통신
		xhr.setRequestHeader("content-type",
				"application/x-www-form-urlencoded");

		xhr.send(data);//post방식일때는 요청body에 데이터를 담는다.

	}

	function getDate(date) {
		date = document.getElementById("calendar").value;

		var now = new Date();
		var stringtempt = null;
		var tempdate2 = null;

		var tempint = parseInt(now.getMonth() + 1);

		if (tempint < 10) {
			stringtempt = "0" + tempint.toString();
			tempdate2 = now.getFullYear() + "-" + stringtempt + "-"
					+ now.getDate();
		} else {
			tempdate2 = now.getFullYear() + "-" + (now.getMonth() + 1) + "-"
					+ now.getDate();
		}

		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = resultParse1;

		data = "date=" + date;

		//alert(tempdate2);

		if (date == tempdate2) {
			msg1 = "당일예약입니다";
			//포스트방식
			viewData4();
			xhr.open("POST", "reserve1.do", true);//POST방식 비동기통신
			xhr.setRequestHeader("content-type",
					"application/x-www-form-urlencoded");
			xhr.send(data);//post방식일때는 요청body에 데이터를 담는다.
		} else if (date < tempdate2) {
			msg1 = "예약이 불가능한 날 입니다";
			//포스트방식
			viewData4();
			xhr.open("POST", "reserve.do", true);//POST방식 비동기통신
			xhr.setRequestHeader("content-type",
					"application/x-www-form-urlencoded");
			//xhr.send(data);//post방식일때는 요청body에 데이터를 담는다.
		} else {
			msg1 = "선택 가능한 날짜입니다.";
			//포스트방식
			viewData4();
			xhr.open("POST", "reserve1.do", true);//POST방식 비동기통신
			xhr.setRequestHeader("content-type",
					"application/x-www-form-urlencoded");
			xhr.send(data);//post방식일때는 요청body에 데이터를 담는다.

		}
		//   if(data)

	}
	function resultParse1() {
		if (xhr.readyState == 4) {//서버에서 전송이 끝남?
			if (xhr.status == 200) {//정상종료

				viewData1(xhr.responseText);//HTML
			}
		}

	}
	function resultParse2() {
		if (xhr.readyState == 4) {//서버에서 전송이 끝남?
			if (xhr.status == 200) {//정상종료

				viewData2(xhr.responseText);//HTML
			}
		}

	}
	function resultParse3() {
		if (xhr.readyState == 4) {//서버에서 전송이 끝남?
			if (xhr.status == 200) {//정상종료

				viewData3(xhr.responseText);//HTML
			}
		}

	}
	function viewData1(d) {
		//alert("viewData1:"+d);

		document.getElementById("timePrint").innerHTML = d;

	}
	function viewData2(d) {
		//alert("viewData2:"+d);
		document.getElementById("selecttimePrint").innerHTML = d;

	}
	function viewData3(d) {
		//alert("viewData2:"+d);
		document.getElementById("submitPrint").innerHTML = d;

	}

	function viewData4() {

		document.getElementById("msg1").innerHTML = '<h4>' + msg1 + '</h4>';

	}
	function viewData5() {

		document.getElementById("msg2").innerHTML = '<h6>' + msg1
				+ ' 까지 입차를 선택하셨습니다</h6>';

	}
	function viewData6() {

		document.getElementById("msg3").innerHTML = '<h6>' + msg1
				+ ' 시간을 선택하셨습니다</h6>';

	}
</script>
   
<!-- Plugins -->
<script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap-switch.min.js"></script>
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