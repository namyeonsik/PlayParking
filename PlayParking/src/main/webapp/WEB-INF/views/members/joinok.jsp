<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
String joinok= request.getParameter("joinok");

%>


	<!-- Modal Login From 2-->
	<div class="modal fade" id="modal-text" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel3" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel3">Geass</h4>
				</div>
				<!-- End .modal-header -->
				<div class="modal-body">

					<p>Maecenas feugiat tellus neque, ac pharetra lacus venenatis
						non. Donec condimentum viverra nunc, vitae feugiat est eleifend
						vitae. Maecenas a lectus eget lorem lacinia condimentum.
						Vestibulum non orci dictum, ullamcorper tellus non, porta nisi.
						Nulla aliquam sem et enim dictum eleifend. Etiam eget ultricies
						velit.</p>


				</div>
				<!-- End .modal-body -->
				<div class="modal-footer">
					<button type="button" class="btn btn-orange" data-dismiss="modal">Close</button>
					<button class="btn btn-yellow">Action</button>
				</div>
				<!-- End .modal-footer -->
			</div>
			<!-- End .modal-content -->
		</div>
		<!-- End .modal-dialog -->
	</div>
	<!-- End .modal -->

</body>
<script type="text/javascript">

var elem = document.getElementById('joinok');
elem.onload = showModal;

function showModal() {
	/* var val = elem.toString().split("/");
	if(val[val.length-1]=="memberlogout.do"){
		$('#myModal').modal('hide');
		return true;
	}else{
		$('#modal-login-form').modal('show');
		return false;
	} */
	$('#modal-text').modal('show');
	
}
</script>
</html>