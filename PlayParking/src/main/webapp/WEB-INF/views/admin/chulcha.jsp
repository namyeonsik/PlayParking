<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form name="chulfrm" action="reservationupdate.do" method="post" onsubmit="call2()"> 

<h1>${naga}원 더 내라</h1>
<h1>${rid }</h1>
<input type="hidden" name="rid" value="${rid }"> 
<input type="hidden" name="naga" value="${naga }">

<input type="submit" value="출차확인" >
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


<script type="text/javascript">

/* function call(){
window.opener.location.reload();

  window.close(); 
  
  

} */
</script>

