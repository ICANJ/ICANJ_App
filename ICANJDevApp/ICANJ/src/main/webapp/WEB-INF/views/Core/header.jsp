<%-- 
    Document   : footer
    Created on : Dec 14, 2012, 10:56:37 AM
    Author     : robinvk
--%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<head>
<meta charset="utf-8">
    <title>my.icanj.org</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<link href="/ICANJ/resources/css/bootstrap.css" rel="stylesheet" media="screen">
<link href="/ICANJ/resources/css/bootstrap-responsive.css" rel="stylesheet" media="screen">
<link href="/ICANJ/resources/css/docs.css" rel="stylesheet" media="screen">
<link href="/ICANJ/resources/css/icanj.css" rel="stylesheet" media="screen">
<style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>

<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="/ICANJ/">India Christian Assembly</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
           	  <li class="active"><a href="/ICANJ/">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
              
               <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=SecurityContextHolder.getContext().getAuthentication().getName() %> <b class="caret"></b></a>
                <ul class="dropdown-menu">
                <li><a href="#" >Edit My Profile</a></li>
                  <li><a href="/ICANJ/j_spring_security_logout" >Logout</a></li>
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
</head> 