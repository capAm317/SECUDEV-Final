<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>User Registration Form</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	
	
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <meta http-equiv="X-Frame-Options" content="deny">

    <title>Talaria Online Footwear</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/static/assets/css/bootstrap.css' />" rel="stylesheet">
    <!--external css-->
    <link href="<c:url value='/static/assets/font-awesome/css/font-awesome.css' />" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/assets/js/gritter/css/jquery.gritter.css' />" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/assets/lineicons/style.css' />">    
    
    <!-- Custom styles for this template -->
    <link href="<c:url value='/static/assets/css/style.css' />" rel="stylesheet">
    <link href="<c:url value='/static/assets/css/style-responsive.css' />" rel="stylesheet">
      
    <link href="<c:url value='/static/assets/css/custom.css' />" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
 	<section id="container" >
      
      <%@include file="sideBar.jsp" %>
      
      <%@include file="topBar.jsp" %>
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <div class="col-lg-10 mt">		
                <div class="row content-panel" id="addUserPage">
                    <h3>Add User</h3>
                    <hr class="light">
                    <br>
                    <form:form method="POST" modelAttribute="user" style="margin:0;padding:0;">
						<form:input type="hidden" path="id" id="id"/>
	                    <label for="addUserName">Full Name</label>
	                    <div class="input-group" id="addUserName">
	                    	<form:input type="text" path="firstName" id="firstName" class="form-control" placeholder="First Name"/>
	                        <span class="input-group-addon"> </span>
	                        <form:input type="text" path="middleInit" id="middleInit" class="form-control" size="3" placeholder="MI" />
	                        <span class="input-group-addon"> </span>
	                        <form:input type="text" path="lastName" id="lastName" class="form-control" placeholder="Last Name" />
	                        <div class="has-error">
								<form:errors path="firstName" class="help-inline"/>
								<form:errors path="middleInit" class="help-inline"/>
								<form:errors path="lastName" class="help-inline"/>
							</div>
	                    </div>
	                    <br>
	                    <div class="form-group">
	                        <label for="addUserSSOID">SSO ID</label>
	                        <form:input type="text" path="ssoId" id="ssoId" class="form-control" />
							<div class="has-error">
								<form:errors path="ssoId" class="help-inline"/>
							</div>
	                    </div>
	                    <div class="form-group">
	                        <label for="addUserPassword">Password</label>
	                        <form:input type="password" path="password" id="password" class="form-control" />
							<div class="has-error">
								<form:errors path="password" class="help-inline"/>
							</div>
	                    </div>
	                    <div class="form-group">
	                        <label for="addUserEmail">Email</label>
	                        <form:input type="text" path="email" id="email" class="form-control" />
							<div class="has-error">
								<form:errors path="email" class="help-inline"/>
							</div>
	                    </div>
	                    <div class="form-group">
							<label for="userProfiles">Roles</label>
							<form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control" />
							<div class="has-error">
								<form:errors path="userProfiles" class="help-inline"/>
							</div>
						</div>
	                    <div class="pull-right">
	                        <input type="submit" value="Register" class="btn btn-primary"/>
	                    </div>
					</form:form>
                </div>
             </div>
          </section>
      </section>
  </section>

	<!-- js placed at the end of the document so the pages load faster -->
    <script src="<c:url value='/static/assets/js/jquery.js' />"></script>
    <script src="<c:url value='/static/assets/js/jquery-1.8.3.min.js' />"></script>
    <script src="<c:url value='/static/assets/js/bootstrap.min.js' />"></script>
    <script class="include" type="text/javascript" src="<c:url value='/static/assets/js/jquery.dcjqaccordion.2.7.js' />"></script>
    <script src="<c:url value='/static/assets/js/jquery.scrollTo.min.js' />"></script>
    <script src="<c:url value='/static/assets/js/jquery.nicescroll.js" type="text/javascript' />"></script>
    <script src="<c:url value='/static/assets/js/jquery.sparkline.js' />"></script>


    <!--common script for all pages-->
    <script src="<c:url value='/static/assets/js/common-scripts.js' />"></script>
    
    <script type="text/javascript" src="<c:url value='/static/assets/js/gritter/js/jquery.gritter.js' />"></script>
    <script type="text/javascript" src="<c:url value='/static/assets/js/gritter-conf.js' />"></script>

</body>
</html>