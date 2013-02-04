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
              <li class="nav-header">Family & Members</li>
              <li class="active"><a href="/Directory/Families">Directory</a></li>
              <li><a href="/Directory/ContactInfo">My Family Profile</a></li>
              <li class="nav-header">Pledges & Donations</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Tithe</li>
              <li><a href="#">My Tithing Info</a></li>
              <li><a href="#">Request a Check</a></li>
              <li><a href="#">Submit Receipt</a></li>
              <%if(status) {%>
              <li class="nav-header">Admin</li>
              <li><a href="/Admin/Signup/Family">Family Signup</a></li>
              <li><a href="/Public/Register/">Register Accounts</a></li>
              <li><a href="/Tithe/Admin">Tithe Administration</a></li>
              <%} %>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
