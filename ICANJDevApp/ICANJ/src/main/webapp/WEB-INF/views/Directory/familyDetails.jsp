<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
	<head>
		<jsp:include page="/WEB-INF/views/Core/header.jsp">
			<jsp:param name="name" value="sos" />
		</jsp:include>
	</head>
	<body>

		<div class="container-fluid">
      <div class="row-fluid">
  <jsp:include page="/WEB-INF/views/Core/sidebar.jsp">
		<jsp:param name="name" value="sos" />
	</jsp:include>


        <div class="span9">
					<c:if test="${not empty alert}">
						<div class="alert ${alert.cssAlertClass}" id="errorBox">
							<button type="button" class="close" data-dismiss="alert">�</button>
							<strong>Warning! :</strong>
							${alert.message}
						</div>
					</c:if>
					<h3>ICANJ Family Details</h3>
					<div class="hero-unit familyName pull-left">
						<h2>${family.familyName} & Family</h2>
						<address class="float-right">
							<strong>Home Address</strong><br>
							${family.address.streetAddress}<br> ${family.address.city},
							${family.address.state}<br> <abbr title="Phone">P:</abbr>
							+1${family.homePhoneNumber}
						</address>
						<p>Parking Info: ${family.address.parkingDetails}	</p>
					</div>

					<table class="table table-hover">
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email Address</th>
						<th>Cell Phone</th>
						<th>Work Phone</th>

						<th></th>
						<c:forEach items="${members}" var="member">
							<tr>
								<td>${member.firstName}</td>
								<td>${member.lastName}</td>
								<td>${member.email}</td>
								<td>${member.cellPhoneNumber}</td>
								<td>${member.workPhoneNumber}</td>
							</tr>
						</c:forEach>

					</table>
					<div class="modal-footer">

						<button class="btn btn-primary" ONCLICK="history.go(-1)">Go Back</button>
					</div>
				</div>

			</div>
			<jsp:include page="/WEB-INF/views/Core/footer.jsp">
				<jsp:param name="name" value="sos" />
			</jsp:include>
			<script type="text/javascript" src="/resources/js/mobile.js"></script>
		</div>
	</body>
</html>
