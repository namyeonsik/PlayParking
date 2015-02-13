<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>(html)주차장 검색페이지</title>

<style>
#selectform { float:left; width: 25%; height:40%;}
#listform { float:right; width: 75%; height:40%;}
</style> 

<style>
html, body {width:100%;height:100%;margin:0;padding:0;} 
.map_wrap {position:relative;overflow:hidden;width:100%;height:60%;}
.radius_border{border:1px solid #919191;border-radius:5px;}     
.custom_zoomcontrol {position:absolute;top:10px;right:5px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
.custom_zoomcontrol span img {width:20px;height:42px;padding:12px 0;border:none;}             
.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}    
@import url("bootswatch.less");
@import url("variables.less");
@import url("_bootswatch.scss");
@import url("_variables.scss");
h2{  
  text-align: center;
}
</style> 

<meta name="generator" content="Bootply"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<script src="//code.jquery.com/jquery.js"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/less/bootswatch.less"></script>
<script src="${pageContext.request.contextPath}/resources/less/variables.less"></script>
<script src="${pageContext.request.contextPath}/resources/css/bootstrap.css"></script>
<script src="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"></script>
<script src="${pageContext.request.contextPath}/resources/scss/_bootstrap.scss"></script>
<script src="${pageContext.request.contextPath}/resources/scss/_variables.scss"></script>
</head>

<body>
<%@ include file="../Header.jsp"%>
<!-- style="border:#6B71BD solid 1px" -->
	<!-- ---------------------------**지도**--------------------------- -->
	
	<div class="map_wrap" >
		<!-- 지도를 표시할 div 입니다 -->
	    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div> 
	    <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
	    <div class="custom_zoomcontrol radius_border"> 
	        <span onclick="zoomIn()"><img src="${pageContext.request.contextPath}/resources/ico_plus.png" alt="확대"></span>  
	        <span onclick="zoomOut()"><img src="${pageContext.request.contextPath}/resources/ico_minus.png" alt="축소"></span>
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
					t3 = tlist[2];
									
					alert(t2);
					
					if(t3.length>1000){
							document.getElementById("t1").innerHTML ="";
							document.getElementById("t3").innerHTML = t3;
					}
					else{
						document.getElementById("t3").innerHTML ="";
						document.getElementById("t1").innerHTML = t1;
					}
					search();
				}
			}    	 
	 }
	
	var str;
	
	var arr = [];
	function setMarkers(map) {
	    for (var i = 0; i < arr.length-10; i++) {
	        arr[i].setMap(map);
	    }            
	}
	function change2(){		
		var radio = document.getElementsByName("radio");
        for(var i=0;i<radio.length;i++){	
             if(radio[i].checked == true){
            	 radio[i].checked = false;
             }
		 }
	}
	function change(){			
	    if(document.f.plocation.selectedIndex != 0){
	        str = document.f.plocation.value; //구이름 받기	
	   	}else{
	        return;
	    }
	    
	   	str2 = document.f.radio.value; //맞춤형 받기      
	    if(str2 == null)
	   		str2 = "";
	    
	    var param = null;
	    
	    if(str2==""){
	    	param = "plocation=" + str;
	    }
	    else{
	    	param = "plocation=" + str + "&makchum="+str2;
	    }
	    
		sendRequest(param);		
	 }
	
	function search(){
				
		/*----------------------------마커 이미지 설정----------------------------*/
		var imageSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다    
   		imageSize = new daum.maps.Size(34,39), // 마커이미지의 크기입니다
    	imageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
      
		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption);
    	
		/*----------------------------마커 객체 변환----------------------------*/
		
		var markers = eval("(["+t2+"])");
					
		/*----------------------------검색-------------------------------*/
			// 장소 검색 객체를 생성합니다
			 var ps = new daum.maps.services.Places(); 
			 
		     // 키워드로 장소를 검색합니다 //여기서 구 이름을 받음 = str
			 ps.keywordSearch(str, placesSearchCB); 
			
			 // 키워드 검색 완료 시 호출되는 콜백함수 입니다
			 function placesSearchCB (status, data, pagination) {
				
			     if (status === daum.maps.services.Status.OK) {
					
			    	 displayMarker();
			    	 			    	
			         // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
			         // LatLngBounds 객체에 좌표를 추가합니다 ***********지도레벨 재지정**************
			         var bounds = new daum.maps.LatLngBounds();			        
			         for (var i=0; i<markers.length; i++) {
					 	bounds.extend(markers[i].latlng);
			         }  
			         // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			        map.setBounds(bounds);
			    } 
			 }		 
						 
			 // 지도에 마커를 표시하는 함수입니다 positions.length
			 function displayMarker() {
				alert( "*****"+markers[0].parkingimage);
						
				var marker = new Array();
				var infowindow = new Array();
										
			 	for (var i = 0; i < markers.length; i ++) {				 		
			 		   // 마커를 생성하고 지도에 표시합니다
			 		  			 		   
					    marker[i] = new daum.maps.Marker({
					         position: markers[i].latlng,
					         title:markers[i].title,
					         fare:markers[i].fare,
					         parkingimage:markers[i].parkingimage,
					         image:markerImage
					     });
			 		   
					    marker[i].setMap(map);			 			
					    
					    arr.push(marker[i]); //arr에 총 마커 개수 구하기
					    
					    marker[i].index = i;				     
					   
				         var realcontent = '<div style="padding:10px;font-size:15px;">'+
				         '이름 : ' + markers[i].title + '<br>'
				         +'요금 : ' + markers[i].fare + '<br>'
				         +'<img src='+markers[i].parkingimage+' width=500 heigth=500>'
				         +'</div>';
				         
			 			 //인포윈도우 생성
					     infowindow[i] = new daum.maps.InfoWindow({
					         content: realcontent,
					         removable : true
					     }); 
			 			 
					  	 /* 
					  	 // 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				 			var content = '<div class="customoverlay">' +
				 		    '  <a href="http://map.daum.net/link/map/11394059" target="_blank">' +
				 		    '    <span class="title">구의야구공원</span>' +
				 		    '  </a>' +
				 		    '</div>';
				 		    
				 			// 커스텀 오버레이를 생성합니다
				 		   var customOverlay = new daum.maps.CustomOverlay({
				 		       map: map,
				 		       position: position,
				 		       content: content,
				 		       yAnchor: 1 
				 		   });  */
					     
					 	// 마커에 클릭이벤트를 등록합니다
					     daum.maps.event.addListener(marker[i], 'click', function() {
					    	 
					    	 for ( var i = 0; i < marker.length ; i++) {
					    		 infowindow[i].close();
					    	}
					    	
					   		 /****** 클릭한 마커의 좌표를 받아와서 그 좌표의 이름을 뿌려줘라! ******/	
					         infowindow[this.index].open(map, marker[this.index]);	
					   		 
					   		 tablechange(this.index);
					     });
					 	
			 		}
			 	if(arr.length>=20){ 
			 		setMarkers(null);
			 	}
			}
	}

	 function tablechange(index){
		var index2 = (index+1);
		
		if(index2 == document.getElementById('cnt'+index2).value){
			//document.getElementById('tr'+index2).style.backgroundColor = "#627bfc";		
			for(var i=1; i<11; i++){
				if(i!=index2)
					document.getElementById('tr'+i).style.backgroundColor = "#ffffff";	
				else
					document.getElementById('tr'+i).style.backgroundColor = "#627bfc";		
			}
		}else{
			
		}
	}
	</script>

<div id="selectform">	
	<div id="gu" class="alert alert-info">
	    <h2>지역(구) 선택</h2>
	    <p>지역(구)를 선택한 후 알맞은 맞춤형을 선택하세요</p>
  	</div>
  	
  	<div>
	<!-- 지역선택 select box -->
	<form name="f">
	    <select onchange="change(value);change2();" name="plocation" class="form-control">
			<option>선택하시오</option>
				<option value="강남구" ${selected[0]}>강남구</option>
	            <option value="송파구" ${selected[1]}>송파구</option>
	            <option value="서초구" ${selected[2]}>서초구</option>
	            <option value="중구" ${selected[3]}>중구</option>
	            <option value="영등포구" ${selected[4]}>영등포구</option>
	            <option value="마포구" ${selected[5]}>마포구</option>
	            <option value="종로구" ${selected[6]}>종로구</option>
	            <option value="강동구" ${selected[7]}>강동구</option>
	            <option value="관악구" ${selected[8]}>관악구</option>
	            <option value="광진구" ${selected[9]}>광진구</option>
	            <option value="구로구" ${selected[10]}>구로구</option>
	            <option value="강서구" ${selected[11]}>강서구</option>
	            <option value="동대문구" ${selected[12]}>동대문구</option>
	            <option value="노원구" ${selected[13]}>노원구</option>
	            <option value="서대문구" ${selected[14]}>서대문구</option>
	            <option value="은평구" ${selected[15]}>은평구</option>
	            <option value="용산구" ${selected[16]}>용산구</option>
	            <option value="동작구" ${selected[17]}>동작구</option>
	             <option value="성북구" ${selected[18]}>성북구</option>
	            <option value="양천구" ${selected[19]}>양천구</option>
	            <option value="강북구" ${selected[20]}>강북구</option>
	            <option value="중랑구" ${selected[21]}>중랑구</option>
	            <option value="성동구" ${selected[22]}>성동구</option>
	            <option value="금천구" ${selected[23]}>금천구</option>
	            <option value="도봉구" ${selected[24]}>도봉구</option>   
	    </select>
	    
	    <div class="col-lg-10">
        <div class="radio">
	    <input type="radio" id="radio" name="radio" value="절약형" onclick="change();">절약형
		</div>
		<div class="radio">
		<input type="radio" id="radio" name="radio" value="지각형" onclick="change();">지각형
		</div>
		<div class="radio">
		<input type="radio" id="radio" name="radio" value="안전형" onclick="change();">안전형
		</div>
		</div>
	</form> 
	
	</div>
</div>

<div id="listform">
	<!-- 주차장 검색 후 리스트 -->	
	<p id="t1"></p>
	<p id="t3"></p>
</div>	
</body>
</html>
