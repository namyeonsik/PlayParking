<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<form name="chulfrm" action="reservationupdate.do" method="post" onsubmit="call2()"> 
<fmt:formatNumber value="${naga }" type="number" var="extrapaypoint"/><br>
<h1>예약번호: ${rid }</h1>
<h1>추가요금: ${extrapaypoint} </h1>
<input type="hidden" name="rid" value="${rid }"> 
<input type="hidden" name="naga" value="${naga }">

<input type="submit" class="btn btn-inverse" value="출차확인" style="float: right; margin-right: 5%;" >
<!-- <input type="hidden" value="call()"> -->
 </form> 

<script type="text/javascript">
  function call2(){
	  //alert("call2입니다."+document.chulfrm.rid.value);
	  
	  document.chulfrm.action="reservationupdate1.do";
	  document.chulfrm.method = "post";
	  document.chulfrm.submit();
	  
	  	  
  }
</script>




<!-- /* function call(){
window.opener.location.reload();

  window.close(); 
  
  

} */ -->


