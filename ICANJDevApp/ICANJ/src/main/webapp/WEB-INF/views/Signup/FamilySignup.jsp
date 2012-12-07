<html>
<head>
<title>Home</title>
<jsp:include page="/WEB-INF/views/header.jsp">
	<jsp:param name="name" value="sos" />
</jsp:include>
</head>

<body>
	<div class="container">
		<div class="page-header"><h1>Family Signup Page</h1></div>
		<div class="pager">
		<div class="alert alert-success">${message}</div>
			<form class="form-horizontal" action="AddFamily.html">
			<div class="page-header"><h4 align="left">Enter Family Information</h4></div>
				<div class="control-group">
					<label class="control-label" for="familyName">Family Name</label>
					<div class="controls">
						<input class="input-xlarge" type="text" id="familyName" name="familyName" placeholder="Enter Family Name" >
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="homePhoneNumber">Home Phone Number</label>
					<div class="controls">
						<input type="text" id="homePhoneNumber" name="homePhoneNumber"
							placeholder="Enter Phone number">
					</div>
				</div>
				<div class="page-header"><h4 align="left">Enter Address Information</h4></div>
				<div class="control-group">
					<label class="control-label" for="streetAddress">Street
						Address</label>
					<div class="controls">
						<input class="input-xlarge" type="text" id="streetAddress" name="streetAddress"
							placeholder="Enter Street Address">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="city">City</label>
					<div class="controls">
						<input class="input-xlarge" type="text" id="city" name="city" placeholder="Enter City">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="state">State</label>
					<div class="controls" >
						<select id="state" name="state">
							<option value="NJ">New Jersey</option>
							<option value="NY">New York</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="country">Country</label>
					<div class="controls">
						<input class="input-xlarge" type="text" id="country" name="country" value="USA" placeholder="Enter Country">
					</div>
				</div>
				<div class="form-actions">
					<button type="submit" class="btn btn-primary">Save changes</button>
					<button type="button" class="btn">Cancel</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>