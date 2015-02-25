<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<title>주차장 검색</title>
<!-- 부트스트랩-->
<!-- <meta charset="utf-8">-->
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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/logo_small.png">
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

<!-- 부트스트랩 끝-->

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

@font-face {
	font-family: "HU미드나잇140";
	src:
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.eot');
	src:
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.eot?#iefix')
		format('embedded-opentype'),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.woff) format('
		woff '),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.ttf')
		format('truetype');
	src: local(※),
		url('${pageContext.request.contextPath}/resources/font/HU미드나잇140.woff')
		format('woff');
}

#selectform {
	float: left;
	width: 100%;
	height: 30%;
}

#listform {
	float: right;
	width: 100%;
	height: 55%;
}

html,body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

.radius_border {
	border: 1px solid #919191;
	border-radius: 5px;
}

.custom_zoomcontrol {
	position: absolute;
	top: 1px;
	right: 5px;
	width: 3%;
	height: 10%;
	overflow: hidden;
	z-index: 1;
	background-color: #f5f5f5;
	padding-left: 5px;
}

.custom_zoomcontrol span {
	display: block;
	width: 100%;
	height: 40px;
	text-align: center;
	cursor: pointer;
}

.custom_zoomcontrol span img {
	width: 20px;
	height: 42px;
	padding: 12px 0;
	border: none;
}

.custom_zoomcontrol span:first-child {
	border-bottom: 1px solid #bfbfbf;
}

.header {
	height: 30px
}

.map_wrap,.map_wrap * {
	margin-top: 4%;
	padding: 0;
	font-family: 'HU미드나잇120';
}

.map_wrap a,.map_wrap a:hover,.map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 85%;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 27%;
	height: 80%;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.8);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 1;
	border-top: 5px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}
</style>
</head>

<body>
	<!-- 진짜헤더시작 -->
	<div class="header">
		<%@ include file="../Header.jsp"%>
	</div>
	<!-- 진짜헤더끝 -->

	<!-----------**지도**-------------->

	<div class="map_wrap">

		<!-- 지도를 표시할 div 입니다 -->
		<div id="map"
			style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

		<!-- 지도 확대, 축소 컨트롤 div 입니다 -->
		<div class="custom_zoomcontrol radius_border">
			<span onclick="zoomIn()"><img
				src="${pageContext.request.contextPath}/resources/ico_plus.png"
				alt="확대"></span> <span onclick="zoomOut()"><img
				src="${pageContext.request.contextPath}/resources/ico_minus.png"
				alt="축소"></span>
		</div>

		<div id="menu_wrap" class="bg_white">
			<div id="option">
				<form name="f">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<font size="8"><b><strong>&nbsp;주차장 검색</strong></b></font><br>
						<font face="HU미드나잇120" color="#5D5D5D" size="3"><b>&nbsp;&nbsp;지역을
								검색한 후 예약을 할 수 있습니다.</b></font><br> <font face="HU미드나잇120"
							color="#5D5D5D" size="2">&nbsp;&nbsp;알맞은 맞춤형을 <b>클릭</b>하면
							리스트의 순서가 바뀝니다.
						</font><br> <br>
						<hr>
						<br>

						<div class="col-md-12 col-sm-12 col-xs-12 md-margin">
							<span><font face="HU미드나잇120" color="#5D5D5D" size="3"><b>&nbsp;1.
										지역 선택</b></font></span> <select onchange="change(value);change2();"
								name="plocation"
								style="height: 50px; width: 335px; padding-top: 0px"
								class="form-control">
								<option>Search Country</option>
								<option value="강남구">강남구</option>
								<option value="송파구">송파구</option>
								<option value="서초구">서초구</option>
								<option value="중구">중구</option>
								<option value="영등포구">영등포구</option>
								<option value="마포구">마포구</option>
								<option value="종로구">종로구</option>
								<option value="강동구">강동구</option>
								<option value="관악구">관악구</option>
								<option value="광진구">광진구</option>
								<option value="구로구">구로구</option>
								<option value="강서구">강서구</option>
								<option value="동대문구">동대문구</option>
								<option value="노원구">노원구</option>
								<option value="서대문구">서대문구</option>
								<option value="은평구">은평구</option>
								<option value="용산구">용산구</option>
								<option value="동작구">동작구</option>
								<option value="성북구">성북구</option>
								<option value="양천구">양천구</option>
								<option value="강북구">강북구</option>
								<option value="중랑구">중랑구</option>
								<option value="성동구">성동구</option>
								<option value="금천구">금천구</option>
								<option value="도봉구">도봉구</option>
							</select> <br> <span><font face="HU미드나잇120" color="#5D5D5D"
								size="3"><b>&nbsp;<font face="HU미드나잇120">2.
											맞춤형 선택</font></b></font></span> <br> <span><font face="HU미드나잇120"
								color="#5D5D5D" size="2"><b>&nbsp;(맞춤형 이름을 클릭하시면 설명을
										볼 수 있습니다!)</b></font></span>
							<div class="radio" style="margin-top: 0px;">
								<label style="margin-right: 10%; padding-right: 10%"> <input
									type="radio" id="radio" name="radio" value="절약형"
									onclick="change();"> <font size="3"> <input
										type="text" size="6"
										style="border: 0; background: transparent;" value="절약형"
										readonly="readonly" class="add-popover red"
										data-toggle="popover" data-placement="right"
										title="&nbsp;절약형이란?"
										data-content="&nbsp;주차장 요금이 저렴한 순서로 리스트를 보여줍니다!">
								</font>
								</label> <br> <label
									style="margin-right: 10px; padding-right: 10px"> <input
									type="radio" id="radio" name="radio" value="지각형"
									onclick="change();"> <font size="3"> <input
										type="text" size="6"
										style="border: 0; background: transparent;" value="지각형"
										readonly="readonly" class="add-popover red"
										data-toggle="popover" data-placement="right"
										title="&nbsp;지각형이란?"
										data-content="&nbsp;자주 주차장 예약 종료 시간 내에 오지않고 지각을 많이 하는 
						 분들을 위해서 주차장 추가 요금이 저렴한 순서로 리스트를 보여줍니다!">
								</font>
								</label> <br> <label
									style="margin-right: 10px; padding-right: 10px"> <input
									type="radio" id="radio" name="radio" value="안전형"
									onclick="change();"> <font size="3"> <input
										type="text" size="6"
										style="border: 0; background: transparent;" value="안전형"
										readonly="readonly" class="add-popover red"
										data-toggle="popover" data-placement="right"
										title="&nbsp;안전형이란?"
										data-content="&nbsp;주차하기 힘드신 분들을 위해서 너비와 길이가 다른 주차장보다
						 큰 순서로 리스트를 보여줍니다!">
								</font>
								</label>
							</div>
						</div>
					</div>
				</form>
			</div>

		</div>

	</div>

	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=c05e019c266785a869e42a43d7a7d076&libraries=services">
		
	</script>

	<script>
		//지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
		function zoomIn() {
			map.setLevel(map.getLevel() - 1);
		}

		// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
		function zoomOut() {
			map.setLevel(map.getLevel() + 1);
		}

		var infowindow = new daum.maps.InfoWindow({
			zIndex : 1
		});
		/*처음에 서울 뿌려놓기*/
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.5666102, 126.9783881), // 지도의 중심좌표
			level : 4
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다 
		var map = new daum.maps.Map(mapContainer, mapOption);

		var tlist;
		var t1;
		var t2;
		var httpRequest = null;

		function getXMLHttpRequest() {
			if (window.ActiveXObject) {
				try {
					return new ActiveXObject("Msxml2.XMLHTTP");
				} catch (e) {
					try {
						return new ActiveXObject("Microsoft.XMLHTTP");
					} catch (e1) {
						return null;
					}
				}
			} else if (window.XMLHttpRequest) {
				return new XMLHttpRequest();
			} else {
				return null;
			}
		}

		function sendRequest(params) {
			httpRequest = getXMLHttpRequest();
			httpRequest.onreadystatechange = viewTable;
			httpRequest.open("POST", "search.do", true);
			httpRequest.setRequestHeader("content-type",
					"application/x-www-form-urlencoded");
			httpRequest.send(params);
		}

		function viewTable() {
			if (httpRequest.readyState == 4) {//서버에서 전송이 끝났니?
				if (httpRequest.status == 200) { //정상 종료했니?

					tlist = httpRequest.responseText.split(';');
					t1 = tlist[0];
					t2 = tlist[1];
					t3 = tlist[2];

					//alert(t1);

					if (t3.length > 1000) {
						document.getElementById("t1").innerHTML = null;
						document.getElementById("t3").innerHTML = t3;
					} else {
						document.getElementById("t3").innerHTML = null;
						document.getElementById("t1").innerHTML = t1;
					}
					search();
				}
			}
		}

		var str;

		var arr = [];
		function setMarkers(map) {
			for (var i = 0; i < arr.length - 10; i++) {
				arr[i].setMap(map);
			}
		}
		function change2() {
			var radio = document.getElementsByName("radio");
			for (var i = 0; i < radio.length; i++) {
				if (radio[i].checked == true) {
					radio[i].checked = false;
				}
			}
		}
		function change() {
			//alert(infowindow.length);
			for (var i = 0; i < infowindow.length; i++) {
				infowindow[i].close();
			}

			if (document.f.plocation.selectedIndex != 0) {
				str = document.f.plocation.value; //구이름 받기	
			} else {
				return;
			}

			str2 = document.f.radio.value; //맞춤형 받기      
			if (str2 == null)
				str2 = "";

			var param = null;

			if (str2 == "") {
				param = "plocation=" + str;
			} else {
				param = "plocation=" + str + "&makchum=" + str2;
			}

			sendRequest(param);
		}

		var infowindow;

		function search() {

			/*----------------------------마커 이미지 설정----------------------------*/
			var imageSrc = 'resources/pin_1.png', // 마커이미지의 주소입니다    
			imageSize = new daum.maps.Size(34, 45), // 마커이미지의 크기입니다
			imageOption = {
				offset : new daum.maps.Point(27, 69)
			}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

			// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
			var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
					imageOption);

			/*----------------------------마커 객체 변환----------------------------*/

			var markers = eval("([" + t2 + "])");

			/*----------------------------검색-------------------------------*/
			// 장소 검색 객체를 생성합니다
			var ps = new daum.maps.services.Places();

			// 키워드로 장소를 검색합니다 //여기서 구 이름을 받음 = str
			ps.keywordSearch(str, placesSearchCB);

			// 키워드 검색 완료 시 호출되는 콜백함수 입니다
			function placesSearchCB(status, data, pagination) {

				if (status === daum.maps.services.Status.OK) {

					displayMarker();

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					// LatLngBounds 객체에 좌표를 추가합니다 ***********지도레벨 재지정**************
					var bounds = new daum.maps.LatLngBounds();
					for (var i = 0; i < markers.length; i++) {
						bounds.extend(markers[i].latlng);
					}
					// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					map.setBounds(bounds);
				}
			}

			// 지도에 마커를 표시하는 함수입니다 positions.length
			function displayMarker() {

				var marker = new Array();
				infowindow = new Array();

				for (var i = 0; i < markers.length; i++) {
					// 마커를 생성하고 지도에 표시합니다

					marker[i] = new daum.maps.Marker({
						position : markers[i].latlng,
						title : markers[i].title,
						fare : markers[i].fare,
						parkingimage1 : markers[i].parkingimage1,
						parkingimage2 : markers[i].parkingimage2,
						parkingimage3 : markers[i].parkingimage3,
						image : markerImage
					});

					marker[i].setMap(map);

					arr.push(marker[i]); //arr에 총 마커 개수 구하기

					marker[i].index = i;

					var realcontent = '<div style="padding-top:0;padding-bottom:40px;padding-right:10px;padding-left:10px;font-size:10px;">'
							+ '<h6 class="list-group-item-heading"><strong>주차장명</strong></h6>'
							+ '<span class="list-group-item-text">&nbsp;&nbsp;&nbsp;<font size=2>'
							+ markers[i].title
							+ '</font></span>'
							+ '<h6 class="list-group-item-heading"><strong>시간당 요금</strong></h6>'
							+ '<span class="list-group-item-text">&nbsp;&nbsp;&nbsp;<font size=2>'
							+ markers[i].fare
							+ '원</font></span>'
							+ '<div style="padding: 0px;" id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="7000">'
							+

							'<ol class="carousel-indicators">'
							+ '<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>'
							+ '<li data-target="#carousel-example-generic" data-slide-to="1"></li>'
							+ '<li data-target="#carousel-example-generic" data-slide-to="2"></li>'
							+ '</ol>'
							+

							'<div class="carousel-inner" style="padding: 0px;">'
							+ '<div class="item active" style="padding: 0px;">'
							+ '<img src='+markers[i].parkingimage1+' class="img-responsive" width=500 heigth=500>'
							+ '</div>'
							+ '<div class="item" style="padding: 0px;">'
							+ '<img src='+markers[i].parkingimage2+' class="img-responsive" width=500 heigth=500>'
							+ '</div>'
							+ '<div class="item" style="padding: 0px;">'
							+ '<img src='+markers[i].parkingimage3+' class="img-responsive" width=500 heigth=500>'
							+ '</div>'
							+ '</div>'
							+

							'<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"><img src="${pageContext.request.contextPath}/resources/left.png" width="27"></a>'
							+ '<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"><img src="${pageContext.request.contextPath}/resources/right.png" width="27"></a>'
							+ '</div>' + '</div>';

					//인포윈도우 생성
					infowindow[i] = new daum.maps.InfoWindow({
						content : realcontent,
						removable : true
					});

					// 마커에 클릭이벤트를 등록합니다
					daum.maps.event.addListener(marker[i], 'click', function() {

						for (var i = 0; i < marker.length; i++) {
							infowindow[i].close();
						}

						/****** 클릭한 마커의 좌표를 받아와서 그 좌표의 이름을 뿌려줘라! ******/
						infowindow[this.index].open(map, marker[this.index]);

						tablechange(markers[this.index]);
					});

				}
				if (arr.length >= 20) {
					setMarkers(null);
				}
			}
		}

		function tablechange(a) {

			if ((a.title) == (document.getElementById('pname' + a.title).value)) {

				$('tr').css("backgroundColor", "#ffffff");
				$('input').css("backgroundColor", "#ffffff");

				document.getElementById('tr' + (a.title)).style.backgroundColor = "#D9EDF7";
				document.getElementById('pname' + (a.title)).style.backgroundColor = "#D9EDF7";
			} else {
			}
		}
	</script>

	<div id="listform">
		<!-- 주차장 검색 후 리스트 -->
		<p id="t1"></p>
		<p id="t3"></p>
		<div id="footer" style="padding: 13px;">
			<%@ include file="../Tail.jsp"%>
		</div>
	</div>
	<!-- Plugins -->
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
		src="${pageContext.request.contextPath}/resources/geass/js/jquery.selectbox.min.js"></script>

</body>
</html>
