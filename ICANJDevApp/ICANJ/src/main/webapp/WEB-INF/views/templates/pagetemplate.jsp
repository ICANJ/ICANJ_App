<!DOCTYPE html>
<html lang="en">
  <head>
    <jsp:include page="/WEB-INF/views/Core/header.jsp">
	<jsp:param name="name" value="sos" />
	</jsp:include>
    
</head>

  <body>

    <div class="container-fluid">
      <div class="row-fluid">
     <jsp:include page="/WEB-INF/views/sidebar.jsp">
	<jsp:param name="name" value="sos" />
	</jsp:include>  
	
	
        <div class="span9">
	<!-- body -->
        </div><!--/span-->
      </div><!--/row-->

      <hr>

	<jsp:include page="/WEB-INF/views/Core/footer.jsp">
		<jsp:param name="name" value="sos" />
	</jsp:include>

    </div><!--/.fluid-container-->

  </body>
</html>
