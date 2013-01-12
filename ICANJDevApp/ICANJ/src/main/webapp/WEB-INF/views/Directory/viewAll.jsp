<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<jsp:include page="/WEB-INF/views/Core/header.jsp">
	<jsp:param name="name" value="sos" />
</jsp:include>

<script>
function getFamilyInfo(familyId){
	$("#setFamilyId").attr({"value": familyId});
	
	}
</script>
</head>

<body>

	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/WEB-INF/views/sidebar.jsp">
				<jsp:param name="name" value="sos" />
			</jsp:include>

			<div class="span9">
			
				<form action="getMembers" method="post">
				<input id="setFamilyId" name="familyId" type="hidden">
					<h3>ICANJ Family Directory</h3>
					<table class="table table-hover">

						<th>Family Name</th>
						<th></th>
						<th></th>
						<c:forEach items="${families}" var="family" varStatus="loop">
							<tr>

								<td>${family.familyName} & Family</td>
								<td>${family.address.city},${family.address.state}</td>
								<td><button class="btn btn-info" onclick="getFamilyInfo(${family.familyId})">More Info</button></td>
							</tr>
						</c:forEach>

					</table>
				</form>

				
				<!-- body -->
			</div>
			<!--/span-->
		</div>
		<!--/row-->

		

		<jsp:include page="/WEB-INF/views/Core/footer.jsp">
			<jsp:param name="name" value="sos" />
		</jsp:include>

	</div>
	<!--/.fluid-container-->

</body>
</html>
