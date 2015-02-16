<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- 부트스트랩 !!!!!!!!!!!!!!!!!!!! -->
<!-- <meta charset="utf-8">
        <title>Geass - Creative Onepage Html5 Template</title> -->
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

<style>
	#selectform { float:left; width: 100%; height:30%;}
	#listform { float:right; width: 100%; height:100%;}
</style> 

<style>
	html, body {width:100%;height:100%;margin:0;padding:0;} 
	/* .map_wrap {position:relative;overflow:hidden;width:100%;height:60%;} */
	.radius_border{border:1px solid #919191;border-radius:5px;}     
	.custom_zoomcontrol {position:absolute;top:10px;right:5px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
	.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
	.custom_zoomcontrol span img {width:20px;height:42px;padding:12px 0;border:none;}             
	.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}    
</style> 

<style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>

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
	
	
		<%-- <div id="menu_wrap" class="bg_white">
	        <div class="option">
	       
	        <h4>Search and Reservation</h4>
		    	    
		    <font size="3"><b>지역을 검색한 후 예약을 할 수 있습니다.</b></font><br>
	  		<font size="2">알맞은 맞춤형을 클릭하면 리스트의 순서가 바뀝니다.</font>
	  		
	  		<br>
	  		
	  		
	  		<div class="input-group">
	          <span class="input-group-addon">지역 선택</span>
	          <div class="clearfix">
		          <select onchange="change(value);change2();" name="plocation" class="selectbox">
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
	          </div>
	        </div>
	        
			 <div class="input-group">
				 <span class="input-group-addon no-minwidth">
			     	<input type="radio" id="radio" name="radio" value="절약형" onclick="change();">
			     </span>
			     <input type="text" class="form-control" placeholder="절약형">
			    
			   	 
			     <span class="input-group-addon no-minwidth">
			     	<input type="radio" id="radio" name="radio" value="지각형" onclick="change();">
			     </span>
			     <input type="text" class="form-control" placeholder="지각형">
			     
			     
			     <span class="input-group-addon no-minwidth">
			     	<input type="radio" id="radio" name="radio" value="안전형" onclick="change();">
			     </span>
			     <input type="text" class="form-control" placeholder="안전형">
		     </div>
	            
	        </div>
	        
	        <hr>
	        <ul id="placesList"></ul>
	        <div id="pagination"></div>
	    </div> --%>
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
					
					//alert(t2);
								
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
				//alert( "*****"+markers[0].parkingimage);
						
				var marker = new Array();
				var infowindow = new Array();
										
			 	for (var i = 0; i < markers.length; i ++) {				 		
			 		   // 마커를 생성하고 지도에 표시합니다
			 		 	 		   
					    marker[i] = new daum.maps.Marker({
					         position: markers[i].latlng,
					         title:markers[i].title,
					         fare:markers[i].fare,
					         parkingimage1:markers[i].parkingimage1,
					         parkingimage2:markers[i].parkingimage2,
					         parkingimage3:markers[i].parkingimage3,
					         image:markerImage
					     });
			 		   
					    marker[i].setMap(map);			 			
					    
					    arr.push(marker[i]); //arr에 총 마커 개수 구하기
					    
					    marker[i].index = i;
					   
				         var realcontent = '<div style="padding:10px;font-size:15px;">'+
				         '이름 : ' + markers[i].title + '<br>'+
				         '요금 : ' + markers[i].fare + '<br>'+
				         '<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="7000">'+
				         '<ol class="carousel-indicators">'+
				         '<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>'+
                         '<li data-target="#carousel-example-generic" data-slide-to="1"></li>'+
                         '<li data-target="#carousel-example-generic" data-slide-to="2"></li>'+
                         '</ol>'+
                         '<div class="carousel-inner">'+
                           '<div class="item active">'+
                             '<img src='+markers[i].parkingimage1+' class="img-responsive" width=500 heigth=500>'+
                              '<div class="carousel-caption">'+
                              '1'+
                              '</div>'+
                            '</div>'+
                            '<div class="item">'+
                            '<img src='+markers[i].parkingimage2+' class="img-responsive" width=500 heigth=500>'+
                             '<div class="carousel-caption">'+
                             '2'+
                             '</div>'+
                           '</div>'+
                           '<div class="item">'+
                           '<img src='+markers[i].parkingimage3+' class="img-responsive" width=500 heigth=500>'+
                            '<div class="carousel-caption">'+
                            '3'+
                            '</div>'+
                          '</div>'+
					     '</div>'+
						 
					     '<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>'+
                         '<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>'+
                         '</div>'+
                        '</div>';
				        	
				        /*  '<div style="padding:10px;font-size:15px;">'+
				         '이름 : ' + markers[i].title + '<br>'
				         +'요금 : ' + markers[i].fare + '<br>'
				         +'<img src='+markers[i].parkingimage+' width=500 heigth=500>'
				         +'</div>'; */
				         
			 			 //인포윈도우 생성
					     infowindow[i] = new daum.maps.InfoWindow({
					         content: realcontent,
					         removable : true
					     }); 
			 						  	
					     
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
				if(i!=index2){
					document.getElementById('tr'+i).style.backgroundColor = "#ffffff";
					document.getElementById('cnt'+i).style.backgroundColor="#ffffff";
				}
				else{//#D9EDF7
					document.getElementById('tr'+i).style.backgroundColor = "#EAEAEA";
					document.getElementById('cnt'+i).style.backgroundColor="#EAEAEA";
				}
			}
		}else{
			
		}
	}
	</script>
	
<div id="selectform" >	
<form name="f">
   <div class="col-md-12 col-sm-12 col-xs-12">
  
  <br>
	   <h4>Search and Reservation</h4>
	    	    
	    <font color="#D5D5D5" size="3"><b>지역을 검색한 후 예약을 할 수 있습니다.</b></font><br>
  		<font color="#D5D5D5" size="2">알맞은 맞춤형을 클릭하면 리스트의 순서가 바뀝니다.</font>
  		
  		<br>
  		
  		
  		<div class="input-group">
          <span class="input-group-addon">지역 선택</span>
          <div class="clearfix">
	          <select onchange="change(value);change2();" name="plocation" class="selectbox">
				<option>선택하시오</option>
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
		      </select>
          </div>
        </div>
        
		 <div class="input-group">
			 <span class="input-group-addon no-minwidth">
		     	<input type="radio" id="radio" name="radio" value="절약형" onclick="change();">
		     </span>
		     <input type="text" class="form-control" placeholder="절약형">
		    
		   	 
		     <span class="input-group-addon no-minwidth">
		     	<input type="radio" id="radio" name="radio" value="지각형" onclick="change();">
		     </span>
		     <input type="text" class="form-control" placeholder="지각형">
		     
		     
		     <span class="input-group-addon no-minwidth">
		     	<input type="radio" id="radio" name="radio" value="안전형" onclick="change();">
		     </span>
		     <input type="text" class="form-control" placeholder="안전형">
	     </div>
	 
	 
	</div> 
		
	</form>	
</div>

<div id="listform">
	<!-- 주차장 검색 후 리스트 -->	
	<p id="t1"></p>
	<p id="t3"></p>
</div>	

		<!-- Plugins -->
        <script src="${pageContext.request.contextPath}/resources/geass/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.prettyPhoto.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/twitter/jquery.tweet.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.tools.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.themepunch.revolution.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/resources/geass/js/jquery.selectbox.min.js"></script>        
  
</body>
</html>
