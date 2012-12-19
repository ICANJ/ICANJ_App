<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Family Signup</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<jsp:include page="/WEB-INF/views/Core/header.jsp">
	<jsp:param name="name" value="sos" />
</jsp:include>
  <script type="text/javascript"> 
    $(document).ready(function(){ 
     
      $(".errorBox").alert();
    });
  </script>
</head>
<body>

	<div class="container">
		<div class="page-header">
			<h1>User Registration</h1>
		</div>
		<div class="${alert.cssAlertClass}" id="errorBox">
			<button type="button" class="close" data-dismiss="alert">×</button>
			<h4>Warning! :</h4>
			${alert.message}
		</div>
		
		<form class="form-horizontal" action="getPhoneNumber.html" method="post">
			<div class="control-group">
			<label class="control-label" for="homePhoneNumber">Enter Home Phone Number </label>
			<div class="controls">
			<div class="form-inline">
			<input type="text" name="i1" class="input-small" maxlength="3" size="3"> 
			<input type="text" name="i2" class="input-small" maxlength="3" size="3">
			<input type="text" name="i3" class="input-small" maxlength="4" size="4">
			</div>
			</div>
			</div>
			
			<div class="control-group">
    		<div class="controls">
			<button type="submit" class="btn btn-primary">Next</button>
			</div>
			</div>
		</form>
	</div>
	<jsp:include page="/WEB-INF/views/Core/footer.jsp">
		<jsp:param name="name" value="sos" />
	</jsp:include>
</body>
</html>