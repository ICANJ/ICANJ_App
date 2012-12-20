<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="span2">
      <p>SideBar Content 1</p>
    </div>
    <div class="span10">
      <p>SideBar Content 2</p>
    </div>
  </div>
</div>
<a href="<c:url value="/j_spring_security_logout" />" > Logout</a>
</body>
</html>
