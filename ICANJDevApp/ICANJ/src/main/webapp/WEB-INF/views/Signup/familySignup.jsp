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
</head>
<body>
    
    <div class="row-fluid">
		<div class="header span8 offset2"></div>
	</div>
    
	<div class="container">
		<div class="page-header">
			<h1>Family Signup Page</h1>
		</div>
		<div class="pager">

            
            <div class="${alert.cssAlertClass} hide" id="errorBox">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<h4>Warning! :</h4>
				${alert.message}
			</div>

			<form class="form-horizontal" action="AddFamily.html" method="post">
				<div class="page-header">
					<h4 align="left">Enter Family Information</h4>
				</div>
				<div class="control-group">
					<label class="control-label" for="familyName">Family Name</label>
					<div class="controls">
						<input type="text" id="familyName" name="familyName"
							placeholder="Enter Family Name">
					</div>
				</div>
				<div class="control-group">
			<label class="control-label" for="homePhoneNumber">Home Phone Number</label>
			<div class="controls">
			<div class="form-inline">
			<input type="text" name="i1" class="input-small" maxlength="3" size="3"> 
			<input type="text" name="i2" class="input-small" maxlength="3" size="3">
			<input type="text" name="i3" class="input-small" maxlength="4" size="4">
			</div>
			</div>
			</div>
				<div class="page-header">
					<h4 align="left">Enter Address Information</h4>
				</div>
				<div class="control-group">
					<label class="control-label" for="streetAddress">Street
						Address</label>
					<div class="controls">
						<input type="text" id="streetAddress" name="streetAddress"
							placeholder="Enter Street Address">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="city">City</label>
					<div class="controls">
						<input type="text" id="city" name="city" placeholder="Enter City">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="state">State</label>
					<div class="controls">
						<select id="state" name="state">
							<option value="NJ">New Jersey</option>
							<option value="NY">New York</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="country">Country</label>
					<div class="controls">
						<input type="text" id="country" name="country" value="USA"
							placeholder="Enter Country">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="parkingInfo">Parking Info
						Details</label>
					<div class="controls">
						<textarea rows="5" name="parkingInfo"
							placeholder="Enter Parking information for church members"></textarea>
					</div>
				</div>
				<div class="form-actions">
					<button type="submit" class="btn btn-primary">Next</button>
					<button type="button" class="btn">Cancel</button>
				</div>
			</form>
		</div>
	</div>
            
    <jsp:include page="/WEB-INF/views/Core/footer.jsp">
        <jsp:param name="name" value="sos" />
    </jsp:include>
</body>
</html>
