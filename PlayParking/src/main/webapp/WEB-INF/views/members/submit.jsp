<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="col-md-12 col-sm-12 col-xs-12">
	<form action="insert1.do" method="post" onsubmit="pointmsg()">
		<input id="mesa" value="${msg}" type="hidden">
		<div class="alert alert-info">
			당신의 포인트는 <strong><span class="highlight lightblue">${mpoint}</span></strong>
			입니다.
		</div>
		<div class="alert alert-danger">
			결제하실 포인트는 <strong><span class="highlight red">${minusMpoint}</span></strong>
			입니다.
		</div>
		<input type="submit" class="btn btn-lightblue"
			class="btn btn-lightblue" value="예약완료"> <input type="button"
			class="btn btn-default" class="btn btn-default" value="충전하기"
			onclick="window.open('paypoint.do', 'window팝업', 'width=400,height=400, menubar=no, status=no, toolbar=no, top=200, left=200');">
	</form>
	<!-- End .col-md-12 -->
</div>
<script type="text/javascript">
	function pointmsg() {
		var dd = document.getElementById("mesa").value;
		if (dd != '') {
			alert(dd);
		}
	}
</script>

