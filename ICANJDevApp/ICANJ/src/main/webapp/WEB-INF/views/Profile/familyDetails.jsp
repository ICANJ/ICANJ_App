<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Family Details</title>
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
		<div class="page-header"><h1>Family Page</h1></div>
		<div class="pager">
		<div class="alert alert-success">${message}</div>
			<form class="form-horizontal span6 offset3" action="AddFamily.html">

				
				
				<div class="hero-unit familyName pull-left">
					<h1>Family Name</h1>
					<p>Some fancy line about your family. Leave blank if you don't want anything
					<address class="float-right">
					<strong>Twitter, Inc.</strong><br>
					795 Folsom Ave, Suite 600<br>
					San Francisco, CA 94107<br>
					<abbr title="Phone">P:</abbr> (123) 456-7890
				</address>
				<a href="#addressModal" role="button" data-toggle="modal">Click to Edit Address</a>
				</div>
				
				
							
				<div id="addressModal" class="modal hide fade">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h3>Edit Address</h3>
					</div>
					<div class="modal-body">
						<div class="control-group">
							<label class="control-label" for="familyName">Family Name</label>
							<div class="controls">
								<input type="text" id="familyName" name="familyName"
									placeholder="Enter Family Name">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="familyTagLine">Line about your family.</label>
							<div class="controls">
								<input type="text" id="familyTagLine" name="familyTagLine"
									placeholder="A Line About Your Family">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="houseOrApt">House/Apt #</label>
							<div class="controls">
								<input type="text" id="houseOrApt" name="houseOrApt"
									placeholder="Enter House or Apt #">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="street">Street Name</label>
							<div class="controls">
								<input type="text" id="street" name="street"
									placeholder="Enter Street Name">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="city">City</label>
							<div class="controls">
								<input type="text" id="city" name="city"
									placeholder="Enter City">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="state">State</label>
							<div class="controls">
								<input type="text" id="state" name="state"
									placeholder="Enter State">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="zip">Zip</label>
							<div class="controls">
								<input type="text" id="zip" name="zip"
									placeholder="Enter Zip">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="Country">Home Phone Number</label>
							<div class="controls">
								<input type="text" id="homePhoneNumber" name="homePhoneNumber"
									placeholder="Enter Phone number">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
						<button class="btn btn-primary">Save changes</button>
					</div>
				</div>
			
			</form>
		</div>
	</div>
	
            
    <jsp:include page="/WEB-INF/views/Core/footer.jsp">
        <jsp:param name="name" value="sos" />
    </jsp:include>
</body>
</html>