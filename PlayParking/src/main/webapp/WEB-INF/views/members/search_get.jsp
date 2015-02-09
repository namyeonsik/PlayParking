<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>(html)주차장 검색페이지</title>

<!-- 부트스트랩 -->
<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<script src="//code.jquery.com/jquery.js"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>

</head>

<body>
	<%@ include file="../Header.jsp"%>

<!-- 지역선택 select box -->
<form name="f">
    <select onchange="change(value);" name="plocation">
		<option >지역 선택</option>
			<option value="강북구" ${selected[0]}>강북구</option>
            <option value="강남구" ${selected[1]}>강남구</option>
            <option value="마포구" ${selected[2]}>마포구</option>
            <option value="종로구" ${selected[3]}>종로구</option>
            <option value="은평구" ${selected[4]}>은평구</option>
            <option value="서대문구" ${selected[5]}>서대문구</option>
    </select>
</form> 

<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:50%;height:550px;"></div>
<script type="text/javascript" 
src="//apis.daum.net/maps/maps3.js?apikey=c05e019c266785a869e42a43d7a7d076&libraries=services"></script>

<script>
	/*----------------------------지도-------------------------------*/
	
	var infowindow = new daum.maps.InfoWindow({zIndex:1});	
	/*처음에 서울 뿌려놓기*/
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new daum.maps.LatLng(37.5666102, 126.9783881), // 지도의 중심좌표
		        level: 4// 지도의 확대 레벨
		    };  
	
	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 
	
	var tlist;
	var t1;
	var t2;	
	var httpRequest = null;
	
	function getXMLHttpRequest(){
		if (window.ActiveXObject) {
			try {
				return new ActiveXObject("Msxml2.XMLHTTP");
			} catch(e) {
				try {
					return new ActiveXObject("Microsoft.XMLHTTP");
				} catch(e1) { 
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
		httpRequest.setRequestHeader("content-type", "application/x-www-form-urlencoded");
		httpRequest.send(params);
} 
	
	function viewTable(){
		 if(httpRequest.readyState==4){//서버에서 전송이 끝났니?
				if(httpRequest.status==200){ //정상 종료했니?
										
					tlist = httpRequest.responseText.split(';');
					t1 = tlist[0];
					t2 = tlist[1];
					
					document.getElementById("t1").innerHTML = t1;
					
					search();
				}
			}    	 
	 }
	
	var str;
	function change(){        
	    if(document.f.plocation.selectedIndex != 0){
	        str = document.f.plocation.value; //구이름 받기
	    }else{
	        return;
	    }        
		var param = "plocation=" + str;
		sendRequest(param);		
	 }
	
	function search(){
		/*----------------------------검색-------------------------------*/
			// 장소 검색 객체를 생성합니다
			 var ps = new daum.maps.services.Places(); 
			 
		     // 키워드로 장소를 검색합니다 //여기서 구 이름을 받음 = str
			 ps.keywordSearch(str, placesSearchCB); 

			 // 키워드 검색 완료 시 호출되는 콜백함수 입니다
			 function placesSearchCB (status, data, pagination) {
			     if (status === daum.maps.services.Status.OK) {

			         // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
			         // LatLngBounds 객체에 좌표를 추가합니다
			         var bounds = new daum.maps.LatLngBounds();
			        
			         for (var i=0; i<data.places.length; i++) {
			             displayMarker(data.places[i]);
			             bounds.extend(new daum.maps.LatLng(data.places[i].latitude, data.places[i].longitude));
			         }       

			         // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			         map.setBounds(bounds);
			     } 
			 }			
			 			 
			 var markers = eval("(["+t2+"])"); 
						 
			 // 지도에 마커를 표시하는 함수입니다 positions.length
			 function displayMarker(place) {		
				var marker = new Array();
				var infowindow = new Array();
			 	for (var i = 0; i < markers.length; i ++) {			 			
				     	
			 			// 마커를 생성하고 지도에 표시합니다
					     marker[i] = new daum.maps.Marker({
					         map: map,
					         position: markers[i].latlng,
					         title:markers[i].title
					     });
			 			
					     marker[i].index = i;
				     
			 			//인포윈도우 생성
					     infowindow[i] = new daum.maps.InfoWindow({
					         content: '<div style="padding:5px;font-size:12px;">' + markers[i].title + '</div>',
					         removable : true
					     });
					     
					 	// 마커에 클릭이벤트를 등록합니다
					     daum.maps.event.addListener(marker[i], 'click', function() {
					    	 
					    	 for ( var i = 0; i < marker.length ; i++) {
					    		 infowindow[i].close();
					    	}
					    	 
					   		 /****** 클릭한 마커의 좌표를 받아와서 그 좌표의 이름을 뿌려줘라! ******/	
					         infowindow[this.index].open(map, marker[this.index]);					       	
					     });
				    }
			 		
					/*
					// 인포윈도우를 생성합니다
					var infowindow = new daum.maps.InfoWindow({
					    position : maker.position,
					    content : '<div style="padding:5px;">Hello World!</div>',
					    removable : true
					});
					
					// 마커에 클릭이벤트를 등록합니다
					daum.maps.event.addListener(marker, 'click', function() {
					      // 마커 위에 인포윈도우를 표시합니다
					      infowindow.open(map, marker);  
					}); */
				    
				  
				 }
			 }
			
	
	
</script>

<!-- 주차장 검색 후 리스트 -->
<table border='1'>
	<tr>
		<th>주차장 이름</th>
		<th>요금</th>
	</tr>	
	
	<tr>
		<p id="t1"></p>
	</tr>	
	
</table>





</body>
</html>