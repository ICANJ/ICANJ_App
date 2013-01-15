<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>ICANJ Family Directory</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

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
			<jsp:include page="/WEB-INF/views/Core/sidebar.jsp">
				<jsp:param name="name" value="sos" />
			</jsp:include>

			<div class="span9">

				<form action="getMembers" method="post">
				<input id="setFamilyId" name="familyId" type="hidden">
					<h3>ICANJ Family Directory</h3>
					<table id="directory" class="table table-hover">
						<thead>
							<tr>
								<th>Family Name</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${families}" var="family" varStatus="loop">
								<tr>
									<td>${family.familyName} & Family</td>
									<td>${family.address.city},${family.address.state}</td>
									<td><button class="btn btn-info" onclick="getFamilyInfo(${family.familyId})">More Info</button></td>
								</tr>
							</c:forEach>
						</tbody>
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
