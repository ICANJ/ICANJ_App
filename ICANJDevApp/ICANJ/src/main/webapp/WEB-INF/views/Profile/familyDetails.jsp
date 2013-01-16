<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>My Family Details</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<jsp:include page="/WEB-INF/views/Core/header.jsp">
		<jsp:param name="name" value="sos" />
	</jsp:include>
	<script>
	function getMemberInfo(memberId){
		$("#memberId").attr({"value": memberId});
	}
	</script>
</head>

<body>
	<div class="container-fluid">
		<div class="row-fluid">

			<jsp:include page="/WEB-INF/views/Core/sidebar.jsp">
				<jsp:param name="name" value="sos" />
			</jsp:include>

			<div class="span9">
			<h3>My Family Profile</h3>
				<div class="alert alert-success">${message}</div>

				<form action="UpdateFamily" method="post">
					<div class="hero-unit familyName pull-left">
						<input type="hidden" id="formPostType" name="formPostType" value="">
						<h2>${family.familyName} & Family</h2>
						<h4><em>${family.tagLine}</em></h4>
						<address class="float-right">
							<strong>Home Address</strong><br>
							${family.address.streetAddress}<br> ${family.address.city},
							${family.address.state},${family.address.zip}<br> <abbr title="Phone">P:</abbr>
							+1${family.homePhoneNumber}
						</address>
						<p>Parking Info: ${family.address.parkingDetails}</p>
						<a href="#addressModal" role="button"
					  		data-toggle="modal">Click to Edit Address</a>
					</div>
				</form>

				<form action="GetMemberProfile" method="post">
					<input type="hidden" id="memberId" name="memberId">
					<input type="hidden" name="familyId" value="${family.familyId}">
					<table class="table table-hover">
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email Address</th>
							<th>Cell Phone</th>
							<th>Work Phone</th>

							<th></th>
						</tr>
						<c:forEach items="${members}" var="member">
						<tr>
							<td>${member.firstName}</td>
							<td>${member.lastName}</td>
							<td>${member.email}</td>
							<td>${member.cellPhoneNumber}</td>
							<td>${member.workPhoneNumber}</td>
							<td> <button class="btn btn-info"
									onclick="getMemberInfo(${member.memberId})">Edit Detail</button></td>

						</tr>
						</c:forEach>
					</table>
				</form>


					<!-- Address Modal Start -->
					<div id="addressModal" class="modal hide fade">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h3>Edit Address</h3>
						</div>
						<div class="modal-body">


							<div class="control-group">
								<label class="control-label" for="familyName">Family
									Name</label>
								<div class="controls">
									<input type="text" id="familyName" name="familyName"
										value="${family.familyName}" placeholder="Enter Family Name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="familyTagLine">Line
									about your family.</label>
								<div class="controls">
									<input type="text" id="familyTagLine" name="familyTagLine"
										value="${family.tagLine}" placeholder="A Line About Your Family">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="street">Street Name</label>
								<div class="controls">
									<input type="text" id="street" name="street"
										value="${family.address.streetAddress}"
										placeholder="Enter Street Name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="city">City</label>
								<div class="controls">
									<input type="text" id="city" name="city"
										value="${family.address.city}" placeholder="Enter City">
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
								<label class="control-label" for="zip">Zip</label>
								<div class="controls">
									<input type="text" id="zip" name="zip" value="${family.address.zip}" placeholder="Enter Zip">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="Country">Home Phone
									Number</label>
								<div class="controls">
									<input type="text" id="homePhoneNumber" name="homePhoneNumber"
										value="${family.homePhoneNumber}"
										placeholder="Enter Phone number">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="parkingInfo">Parking
									Info Details</label>
								<div class="controls">
									<textarea rows="5" name="parkingInfo"
										placeholder="${family.address.parkingDetails}"></textarea>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
							<button class="btn btn-primary">Save changes</button>
						</div>
					</div>
					<!-- Address Modal End -->



			</div>
		</div>
	</div>


	<jsp:include page="/WEB-INF/views/Core/footer.jsp">
		<jsp:param name="name" value="sos" />
	</jsp:include>
</body>
</html>
