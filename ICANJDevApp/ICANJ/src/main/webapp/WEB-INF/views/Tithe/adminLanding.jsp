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
				<!-- form -->
				<h3>Tithe Management</h3>
				<form class="form-horizontal" method="get">
					<div class="control-group">
						<label class="control-label" for="inputMember">Search
							Member</label>
						<div class="controls">
							<input type="text" id="inputMember" placeholder="Search Member"
								onkeyup="showMember(this.value)">
						</div>
					</div>
					<div class="control-group">
						<h4>Select Member</h4>
						<div class="controls">
							<span id="txtHint"></span>
						</div>
					</div>

				</form>
				<!-- Form End  -->

				<!-- Table start -->
				<h3>Recent Transactions</h3>
				<table class="table table-bordered">
					<thead>
						<th>Transaction Id</th>
						<th>Full Name</th>
						<th>Check Date</th>
						<th>Amount</th>
						<th>Last Updated On</th>
						<th></th>
					</thead>
					<c:forEach items="${tithes}" var="tithe" varStatus="idx">
						<tr>
							<td>${tithe.transactionId}</td>
							<td>${tithe.memberID}</td>
							<td>${tithe.checkDate}</td>
							<td>$ ${tithe.amount}</td>
							<td>${tithe.lastUpdatedAt}</td>
							<td><a href="Edit/${tithe.transactionId}" type="button"
								data-toggle="modal" class="btn btn-info">Edit Data</a></td>
							
						</tr>
					</c:forEach>
				</table>
				<!-- Table End -->


				<!-- Modal  Start -->
				<form action="/Admin/Tithe/AddTithe" method="post">
				<div id="titheModal" class="modal hide fade">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h3>Add New Tithe</h3>
					</div>
					<div class="modal-body">
						<div class="control-group">
							<div class="controls">
								<input id="setMemberId" name="memberId" type="hidden">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="amount">Payment Amount</label>
							<div class="input-prepend input-append">
								<span class="add-on">$</span> <input class="span2" id="amount"
									name="amount" type="text"> <span class="add-on">.00</span>
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="paymentType">Payment Type</label>
							<div class="controls">
								<select id="paymentType" name="paymentType">
									<option value="Check">Check</option>
									<option value="Cash">Cash</option>

								</select>
							</div>
						</div>

						<div class=""form-inline"">
							<label class="control-label" for="rcvdDate">Received Date</label>
							<div class="controls">
								<input type="text" name="rcvdDate" class="span2"
									value="2012-02-16" data-date-format="mm/dd/yy" id="rcvdDate">
							</div>

							<label class="control-label" for="checkDate">Check Date</label>
							<div class="controls">
								<input type="text" name="checkDate" class="span2"
									value="2012-02-18" data-date-format="mm/dd/yy" id="checkDate">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="checkInfo">Check
								Info/Number</label>
							<div class="controls">
								<input type="text" id="checkInfo" name="checkInfo"
									placeholder="Enter Check Information">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="memo">Memo/Comments</label>
							<div class="controls">
								<input type="text" id="memo" name="memo"
									placeholder="Enter Comments if Any">
							</div>
						</div>

					</div>
					<div class="modal-footer">
						<button class="btn btn-primary">Save changes</button>
						
					</div>
				</div>
				</form>

				<!-- Modal End  -->
			</div>
			<!--/span-->
		</div>
		<!--/row-->

		

		<jsp:include page="/WEB-INF/views/Core/footer.jsp">
			<jsp:param name="name" value="sos" />
		</jsp:include>

	</div>
	<!--/.fluid-container-->
	<script type="text/javascript" src="/resources/js/tithe.js"></script>
	<link href="/resources/datepicker/css/datepicker.css" rel="stylesheet">
	<script type="text/javascript"
		src="/resources/datepicker/js/bootstrap-datepicker.js"></script>
	<script>
		$(function(){
			$('#dp2').datepicker();	
		});
</script>
</body>
</html>
