<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Family Signup</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<jsp:include page="/WEB-INF/views/Core/anonHeader.jsp">
	<jsp:param name="name" value="sos" />
</jsp:include>


</head>
<body>

	<div class="container">
		<div class="page-header">
			<h1>User Registration</h1>
		</div>
		<c:if ${alert.message.isEmpty()} >
			<div class="alert ${alert.cssAlertClass}" id="errorBox">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<strong>Warning! :</strong>
				${alert.message}
			</div>
		</c:if>

		<form class="form-horizontal" id="registrationForm" name="registrationForm"
					action="validate" method="post">
			<div class="control-group">
				<label class="control-label" id="reg-phone-label">Enter Phone Number </label>
				<div class="controls">
					<input type="text" name="phone" class="input-medium" maxlength="12"
								 placeholder="enter phone number" size="12" data-required
								 data-pattern="^(\([2-9]|[2-9])(\d{2}|\d{2}\))(-|.|\s)?\d{3}(-|.|\s)?\d{4}$"
								 id="reg-phone">
					<span class="help-block"></span>
				</div>
			</div>

			<div class="control-group">
				
					
							<div class="modal-footer">
			<button type="submit" class="btn">Next</button>
			<a href="/" type="button" class="btn btn-primary">Login</a>
		</div>

			</div>
		</form>
	</div>
	<jsp:include page="/WEB-INF/views/Core/anonFooter.jsp">
		<jsp:param name="name" value="sos" />
	</jsp:include>
	<script type="text/javascript">
		$(document).ready(function() {

			$(".errorBox").alert();

//			$("#registrationForm").validate({
//				rules: {
//					phone: {
//						required: true,
//						phoneUS: true
//					}
//				}
//			});


			$('#registrationForm').validate({
				onChange : true,
				eachValidField : function() {
					$(this).closest('div').removeClass('error').addClass('success');
					$(this).find('.help-block').text('');
				},
				eachInvalidField : function() {
					$(this).closest('div').removeClass('success').addClass('error');
					$(this).find('.help-block').text('Incorrect value');
				}
			});


		});
	</script>
</body>
</html>
