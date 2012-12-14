<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Member Details</title>
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
		<div class="page-header"><h1>Individual Details</h1></div>
		<div class="pager">
		<div class="alert alert-success">${message}</div>
			<form class="form-horizontal span6 offset3" action="AddFamily.html">
						
				<!-- 
				Personal Information
				-->
				<div class="page-header"><h4 align="left">Enter Personal Inforamtion</h4></div>				
				<div class="control-group">
					<label class="control-label" for="prefix">Prefix</label>
					<div class="controls" >
						<select id="prefix" name="prefix">
							<option value="MR">Mr.</option>
							<option value="DR">Dr.</option>
							<option value="MS">Ms.</option>
							<option value="MRS">Mrs.</option>
							<option value="PS">Ps.</option>
							<option value="REV">Rev.</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="firstName">First Name</label>
					<div class="controls">
						<input  type="text" id="firstName" name="firstName"
							placeholder="Enter First Name">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="middleName">Middle Name</label>
					<div class="controls">
						<input  type="text" id="middleName" name="middleName"
							placeholder="Enter Middle Name">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="lastName">Last Name</label>
					<div class="controls">
						<input  type="text" id="lastName" name="lastName"
							placeholder="Enter Last Name">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="nickname">Nickname</label>
					<div class="controls">
						<input  type="text" id="nickname" name="nickname"
							placeholder="Enter Nickname">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="phoneNumber">Phone Number</label>
					<div class="controls">
						<input  type="text" id="phoneNumber" name="phoneNumber"
							placeholder="Enter Phone Number ">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="dateOfBirth">Date of Birth</label>
					<div class="controls">
						<input  type="text" id="dateOfBirth" name="dateOfBirth"
							placeholder="Enter Date of Birth">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="relationship">Relationship</label>
					<div class="controls">
						<select id="relationship" name="relationship">
							<option value="0">Father</option>
							<option value="1">Mother</option>
							<option value="2">Daughter</option>
							<option value="3">Son</option>
							<option value="4">Grand Mother</option>
							<option value="5">Grand Father</option>
							<option value="6">Other</option>
						</select>
					</div>
				</div>
					<!-- Hidden till other is selected -->
				<div class="control-group other hide">
					<label class="control-label" for="other">Relationship</label>
					<div class="controls">
						<input  type="text" id="other" name="other"
							placeholder="Enter Relationship">
					</div>
				</div>
					<!-- Hidden till other is selected -->
				<div class="control-group gender hide">
					<label class="control-label" for="gender">Gender</label>
					<div class="controls">
						<select id="relationship" name="relationship">
							<option value="0">Male</option>
							<option value="1">Female</option>
						</select>
					</div>
				</div>
								
				<div class="form-actions">
					<button type="submit" class="btn btn-primary">Save changes</button>
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