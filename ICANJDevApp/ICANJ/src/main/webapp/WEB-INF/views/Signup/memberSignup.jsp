<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Home</title>
<jsp:include page="/WEB-INF/views/header.jsp">
	<jsp:param name="name" value="sos" />
</jsp:include>
<script>
	$(document).ready(function() {
		var alertmsg = ${alert};
		alert(alertmsg);
		$('.alerts').alert('close');
		$("#errorBox").hide();
		if(alertmsg != null){
			$("#errorBox").show();
		}
	});
</script>
<script type="text/javascript"></script>
</head>

<body>
	<div class="container">
	<div>
		<div class="page-header">
			<h1>Member Signup Page</h1>
		</div>
		
		<div class="{alert.cssAlertClass}" id="errorBox">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<h4>Warning! :</h4>
				${alert.message}
			</div>
			
		<form class="form-horizontal">
				<div class="page-header">
					<h4 align="left">Family Information</h4>
				</div>
				<div class="control-group">
					<label class="control-label" for="familyId">Family Id</label>
					<div class="controls">
						<span class="input-xlarge uneditable-input">${family.familyId}</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="familyName">Family Name</label>
					<div class="controls">
						<span class="input-xlarge uneditable-input">${family.familyName} & Family</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="homePhoneNumber">Home
						Phone Number</label>
					<div class="controls">
						<span class="input-xlarge uneditable-input">${family.homePhoneNumber}</span>
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="streetAddress">Street
						Address</label>
					<div class="controls">
						<span class="input-xlarge uneditable-input">${family.address.streetAddress}, ${family.address.city}, ${family.address.state}</span>
					</div>
				</div>
				</form>
		</div>
		<div>	
				<div class="page-header">
					<h4 align="left">Enter Member Information</h4>
				</div>
				
				<form class="form-horizontal" action="AddMember.html" method="get">
				<input type="hidden" name="familyId" value=${family.familyId}>
				<table class="table table-condensed">
				<tr>
				<td>Enter Name</td>
				<td><input class="input-medium" type="text" id="m1FirstName" name="m1FirstName" placeholder="First Name"></td>
				<td><input class="input-medium" type="text" id="m1MiddleName" name="m1MiddleName" placeholder="Middle Name"></td>
				<td><input class="input-medium" type="text" id="m1LastName" name="m1LastName" placeholder="Last Name"></td>
				<td>
				<select id="m1Relation" name="m1Relation">
							<option value="Head Of Household">Head Of Household</option>
							<option value="Wife">Wife</option>
							<option value="Mother">Mother</option>
							<option value="Father">Father</option>
							<option value="Son">Son</option>
							<option value="Daughter">Daughter</option>
						</select>
				</td>	
				</tr>
				
				<tr>
				<td>Enter Name</td>
				<td><input class="input-medium" type="text" id="m2FirstName" name="m2FirstName" placeholder="First Name"></td>
				<td><input class="input-medium" type="text" id="m2MiddleName" name="m2MiddleName" placeholder="Middle Name"></td>
				<td><input class="input-medium" type="text" id="m2LastName" name="m2LastName" placeholder="Last Name"></td>
				<td>
				<select id="m2Relation" name="m2Relation">
							<option value="Head Of Household">Head Of Household</option>
							<option value="Wife">Wife</option>
							<option value="Mother">Mother</option>
							<option value="Father">Father</option>
							<option value="Son">Son</option>
							<option value="Daughter">Daughter</option>
						</select>
				</td>	
				</tr>
				
				<tr>
				<td>Enter Name</td>
				<td><input class="input-medium" type="text" id="m3FirstName" name="m3FirstName" placeholder="First Name"></td>
				<td><input class="input-medium" type="text" id="m3MiddleName" name="m3MiddleName" placeholder="Middle Name"></td>
				<td><input class="input-medium" type="text" id="m3LastName" name="m3LastName" placeholder="Last Name"></td>
				<td>
				<select id="m3Relation" name="m3Relation">
							<option value="Head Of Household">Head Of Household</option>
							<option value="Wife">Wife</option>
							<option value="Mother">Mother</option>
							<option value="Father">Father</option>
							<option value="Son">Son</option>
							<option value="Daughter">Daughter</option>
						</select>
				</td>	
				</tr>								
				</table>
				<div class="form-actions">
					<button type="submit" class="btn btn-primary">Finish</button>
					<button type="button" class="btn">Cancel</button>
				</div>
				</form>
		</div>
				
	</div>
</body>
</html>