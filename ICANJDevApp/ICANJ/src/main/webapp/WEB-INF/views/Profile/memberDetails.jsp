<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<jsp:include page="/WEB-INF/views/Core/sidebar.jsp">
			<jsp:param name="name" value="sos" />
		</jsp:include>

		<div class="container-fluid page">
			<div class="row-fluid">

				<div class="span9">
					<c:if test="${not empty alert}">
						<div class="alert ${alert.cssAlertClass}" id="errorBox">
							<button type="button" class="close" data-dismiss="alert">×</button>
							<strong>Warning! :</strong>
							${alert.message}
						</div>
					</c:if>
					<h3>Member Detail</h3>
					<form action="UpdateMember" method="post">

						<!--
						Personal Information
						-->
						<div class="page-header"><h4 align="left">Personal Information</h4></div>
						<input  type="hidden" id="memberId" name="memberId"
										value="${member.memberId}">
						<input  type="hidden" id="memberId" name="familyId"
										value="${member.familyId}">
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
												placeholder="Enter First Name" value="${member.firstName}"
												data-required>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="middleName">Middle Name</label>
							<div class="controls">
								<input  type="text" id="middleName" name="middleName"
												placeholder="Enter Middle Name" value="${member.middleName}">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="lastName">Last Name</label>
							<div class="controls">
								<input  type="text" id="lastName" name="lastName"
												placeholder="Enter Last Name" value="${member.lastName}"
												data-required>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="nickName">Nickname</label>
							<div class="controls">
								<input  type="text" id="nickname" name="nickName"
												placeholder="Enter Nickname" value="${member.nickName}">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="email">Email</label>
							<div class="controls">
								<input  type="text" id="nickname" name="email"
												placeholder="Enter Email" value="${member.email}"
												data-required>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="cellPhoneNumber">Cell Phone Number</label>
							<div class="controls">
								<input  type="text" id="phoneNumber" name="phoneNumber"
												placeholder="Enter Phone Number" value="${member.cellPhoneNumber}"
												data-required>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="workPhoneNumber">Work Phone Number</label>
							<div class="controls">
								<input  type="text" id="phoneNumber" name="workPhoneNumber"
												placeholder="Enter Phone Number" value="${member.workPhoneNumber}">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="dateOfBirth">Date of Birth</label>
							<div class="controls">
								<input  type="text" id="dateOfBirth" name="dateOfBirth"
												placeholder="Enter Date of Birth" value="${member.dateOfBirth}"
												data-required>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="relationship">Relationship</label>
							<div class="controls">
								<select id="relationship" name="relationship" data-required>
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
								<input  type="text" id="other" name="other" data-required
												placeholder="Enter Relationship">
							</div>
						</div>
						<!-- Hidden till other is selected -->
						<div class="control-group gender">
							<label class="control-label" for="gender">Gender</label>
							<div class="controls">
								<select id="relationship" name="relationship" data-required>
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
		</div>



    <jsp:include page="/WEB-INF/views/Core/footer.jsp">
			<jsp:param name="name" value="sos" />
    </jsp:include>

		<script type="text/javascript" src="/resources/js/icanj.js"></script>
		<script type="text/javascript" src="/resources/js/mobile.js"></script>

	</body>
</html>