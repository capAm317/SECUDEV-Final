<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

	<head>
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
	    <link href="<c:url value='/static/assets/font-awesome/css/font-awesome.css" rel="stylesheet' />" />
	    <link rel="stylesheet" type="text/css" href="<c:url value='/static/assets/js/gritter/css/jquery.gritter.css' />" />
	    <link rel="stylesheet" type="text/css" href="<c:url value='/static/assets/lineicons/style.css' />">    
	    
	    <!-- Custom styles for this template -->
	    <link href="<c:url value='/static/assets/css/style.css' />" rel="stylesheet">
	    <link href="<c:url value='/static/assets/css/style-responsive.css' />" rel="stylesheet">
	      
	    <link href="<c:url value='/static/assets/css/custom.css' />" rel="stylesheet">
	      
	    <!-- js placed at the end of the document so the pages load faster -->
	    <script src="<c:url value='/static/assets/js/jquery.js' />"></script>
	    <script src="<c:url value='/static/assets/js/jquery-1.8.3.min.js' />"></script>
	    <script src="<c:url value='/static/assets/js/bootstrap.min.js' />"></script>
	    <script class="include" type="text/javascript" src="<c:url value='/static/assets/js/jquery.dcjqaccordion.2.7.js' />"></script>
	    <script src="<c:url value='/static/assets/js/jquery.scrollTo.min.js' />"></script>
	    <script src="<c:url value='/static/assets/js/jquery.nicescroll.js' />" type="text/javascript"></script>
	    <script src="<c:url value='/static/assets/js/jquery.sparkline.js' />"></script>
	
	
	    <!--common script for all pages-->
	    <script src="<c:url value='/static/assets/js/common-scripts.js' />"></script>
	    
	    <script type="text/javascript" src="<c:url value='/static/assets/js/gritter/js/jquery.gritter.js' />"></script>
	    <script type="text/javascript" src="<c:url value='/static/assets/js/gritter-conf.js' />"></script>
	    
	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
	</head>
	
	<body>
		<!-- <div class="generic-container">
			<div class="panel panel-default">
			  	<div class="panel-heading"><span class="lead">List of Users </span></div>
				<table class="table table-hover">
		    		<thead>
			      		<tr>
					        <th>Firstname</th>
					        <th>Lastname</th>
					        <th>Email</th>
					        <th>SSO ID</th>
					        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
					        	<th width="100"></th>
					        </sec:authorize>
					        <sec:authorize access="hasRole('ADMIN')">
					        	<th width="100"></th>
					        </sec:authorize>
					        
						</tr>
			    	</thead>
		    		<tbody>
					<c:forEach items="${users}" var="user">
						<tr>
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.email}</td>
							<td>${user.ssoId}</td>
						    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
								<td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
					        </sec:authorize>
					        <sec:authorize access="hasRole('ADMIN')">
								<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>
	        				</sec:authorize>
						</tr>
					</c:forEach>
		    		</tbody>
		    	</table>
			</div>
			<sec:authorize access="hasRole('ADMIN')">
			 	<div class="well">
			 		<a href="<c:url value='/newuser' />">Add New User</a>
			 	</div>
		 	</sec:authorize>
	   	</div> -->
	   	<section id="container" >
		  <%@include file="sideBar.jsp" %>
      
      	  <%@include file="topBar.jsp" %>
	
	      
	      <!-- **********************************************************************************************************************************************************
	      MAIN CONTENT
	      *********************************************************************************************************************************************************** -->
	      <!--main content start-->
	      <section id="main-content">
	          <section class="wrapper">
	              
	              <div class="col-lg-12 mt">		
	                <div class="row mt">
	                  <div class="col-md-12">
	                      <div class="content-panel" id="manageUsersPageWrapper">
	                          <h3>Manage Users</h3>
		                  	  <hr class="light">
	                          <table class="table table-striped table-advance table-hover">
	                              <thead>
	                              <tr>
	                                  <th>Firstname</th>
	                                  <th>Lastname</th>
	                                  <th>Email</th>
	                                  <th>SSO ID</th>
	                                  <th></th>
	                              </tr>
	                              </thead>
	                              <tbody>
		                              <c:forEach items="${users}" var="user">
									  	  <tr>
										  	  <td>${user.firstName}</td>
											  <td>${user.lastName}</td>
											  <td>${user.email}</td>
											  <td>${user.ssoId}</td>
											  <td>
			                                      <button class="btn btn-primary btn-xs"><i class="fa fa-lock"></i></button>
			                                  </td>
										  </tr>
									  </c:forEach>
	                              </tbody>
	                          </table>
	                      </div><!-- /content-panel -->
	                  </div><!-- /col-md-12 -->
	              </div><!-- /row -->
	            </div><!--/row -->
	          </section>
	      </section>
	  </section>
	</body>
</html>