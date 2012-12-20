<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>ICANJ - Account Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <jsp:include page="/WEB-INF/views/Core/header.jsp">
        <jsp:param name="name" value="sos" />
    </jsp:include>
    
<script>
function createAccountModal(memberID){
	$("#setMemberId").attr({"value": memberID});
	}
</script>
</head>

<body>
	
    <div class="row-fluid">
		<div class="header span12 offset2"></div>
	</div>
	

	<div class="container">
		<div class="page-header"><h1>Register Accounts</h1></div>
		
		<div class="alert alert-success">${message}</div>
		<div class="row">
			<form class="form-horizontal span4 " action="AddFamily.html">
								
				<div class="hero-unit familyName pull-left">
					<h2>${family.familyName} & Family</h2>
					<address class="float-right">
					<strong>Home Address</strong><br>
					${family.address.streetAddress}<br>
					${family.address.city}, ${family.address.state}<br>
					<abbr title="Phone">P:</abbr>   +1${family.homePhoneNumber}
				</address>
				
				</div>
						
			</form>
			<form class="form-horizontal span8 " action="AddFamily.html">
				<h3>Member Information </h3>				
				<table class="table table-hover">
				<th>First Name</th>
				<th>Last Name</th>
				<th></th>
				<c:forEach items="${members}" var="member">
				<tr>				
				<td>${member.firstName}</td>
				<td>${member.lastName}</td>
				<td><a href="#accountModal" type="button" data-toggle="modal" class="btn btn-info" onclick="createAccountModal(${member.memberId})">Create Account</a></td>
				</tr>       			 
    			</c:forEach>
				
				</table>		
			</form>
			</div>
			
					<div id="accountModal" class="modal hide fade">
					<form action="createAccount" method="POST"> 
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h3>Create Member Account</h3>
					</div>
					<div class="modal-body">
					
						<div class="control-group">
							<label class="control-label" for="emailAddress">Member Id</label>
							<div class="controls">
								<input id="setMemberId" name="memberId" type="hidden" >
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="emailAddress">Enter Email Address</label>
							<div class="controls">
								<input type="text" id="emailAddress" name="emailAddress"
									placeholder="Enter email address">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="emailAddress2">Re-Enter Email Address</label>
							<div class="controls">
								<input type="text" id="emailAddress2" 
									placeholder="Re-Enter Email Address">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="password1">Enter Password</label>
							<div class="controls">
								<input type="password" id="password1" name="password"
									placeholder="Enter Password">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="password2">Re-Enter Password</label>
							<div class="controls">
								<input type="password" id="password2" placeholder="Re-Enter Password">
							</div>
						</div>
						
						
					</div>
					<div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
						<button class="btn btn-primary">Create Account</button>
					</div>
					</form>
				</div>
	</div>
	
            
    <jsp:include page="/WEB-INF/views/Core/footer.jsp">
        <jsp:param name="name" value="sos" />
    </jsp:include>
</body>
</html>