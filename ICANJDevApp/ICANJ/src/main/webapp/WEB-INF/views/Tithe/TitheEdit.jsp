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
				


				<!-- Modal  Start -->
				<form action="/Admin/Tithe/AddTithe" method="post">
					
						<h3>Edit/Delete Transaction</h3>
					
										
						
						
						<div class="control-group">
							<div class="controls">
							<span class="input-xlarge uneditable-input">Transaction Id : ${tithe.transactionId}</span>
								<input id="transactionId" name="transactionId" type="hidden" value="${tithe.transactionId}">
								<input id="memberId" name="memberId" type="hidden" value="${tithe.memberID}">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="amount">Payment Amount</label>
							<div class="input-prepend input-append">
								<span class="add-on">$</span> <input class="span2" id="amount"
									name="amount" type="text" value="${tithe.amount}"> <span class="add-on">.00</span>
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

						<div class="control-group">
							<label class="control-label" for="rcvdDate">Received Date</label>
							<div class="controls">
								<input type="text" name="rcvdDate" class="span2" value="${tithe.dateRecieved}"
									data-date-format="mm/dd/yy" id="rcvdDate">
							</div>
						</div>
						
						<div class="control-group">
						<label class="control-label" for="checkDate">Check Date</label>
							<div class="controls">
								<input type="text" name="checkDate" class="span2" 
									value="${tithe.checkDate}" data-date-format="mm/dd/yy" id="checkDate">
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label" for="checkInfo">Check
								Info/Number</label>
							<div class="controls">
								<input type="text" id="checkInfo" name="checkInfo" value="${tithe.checkInfo}"
									placeholder="Enter Check Information">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="memo">Memo/Comments</label>
							<div class="controls">
								<input type="text" id="memo" name="memo" value="${tithe.memo}"
									placeholder="Enter Comments if Any">
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
							<span class="input-xlarge uneditable-input">Last Updated at : ${tithe.lastUpdatedAt}</span>
							
							</div>
						</div>

					<div class="modal-footer">
						<button class="btn btn-primary">Save changes</button>
						<a href="/Admin/Tithe/Delete/${tithe.transactionId}" type="button"class="btn btn-danger">Delete Transaction</a>
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
