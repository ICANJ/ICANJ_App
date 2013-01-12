<%@page import="org.springframework.security.core.GrantedAuthority"%>
<%@page import="java.util.Collection"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>

<div class="span3">
<!--  Very Bad implementation [Fix it version 2.0 -->
<% 
boolean status = false;
Authentication auth = SecurityContextHolder.getContext().getAuthentication();
Collection<GrantedAuthority> ls = auth.getAuthorities();
for(GrantedAuthority authority: ls){
	if(authority.toString().equals("ROLE_ADMIN"))
		status=true;
}

%>
<!-- Endddd -->
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Directory</li>
              <li class="active"><a href="#">Search</a></li>
              <li class="" ><a href="/ICANJ/Directory/Families">View All Members</a></li>
              <li><a href="/ICANJ/Directory/ContactInfo">My Contact Info</a></li>
              <li><a href="/ICANJ/Directory/Families">My Family Profile</a></li>
              <li class="nav-header">Pledges & Donations</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">My Tithing Info</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <%if(status) {%>
              <li class="nav-header">Admin</li>
              <li><a href="/ICANJ/Admin/Signup/Family">Family Signup</a></li>
              <li><a href="/ICANJ/Public/Register/">Register Accounts</a></li>
              <li><a href="#">Link</a></li>
              <%} %>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
