<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html lang="en">
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
    <link href="<c:url value='/static/assets/font-awesome/css/font-awesome.css' />" rel="stylesheet" />
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
              
              <div class="col-lg-12 mt">		
                <div class="row mt">
                  <div class="col-md-12">
                      <div class="content-panel" id="manageProductsPageWrapper">
                          <h3>Manage Products</h3>
	                  	  <hr class="light">
	                  	  <c:url var="searchUrl" value="/prodlistsearch"/>
		                	<form action="${searchUrl}" method="get" class="input-group" style="margin:10px;">
			                		<span class="input-group-addon">
			                            <i class="fa fa-search"></i>
			                        </span>
			                        <input type="text" class="form-control"
			                               placeholder="Search" name="search"/>
		                    </form>
                          <table class="table table-striped table-advance table-hover">
                              <thead>
                              <tr>
                                  <th> Name</th>
                                  <th> Description</th>
                                  <th> Category</th>
                                  <th> Price</th>
                                  <th></th>
                              </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${products}" var="product">
	                              <tr>
	                                  <td>${product.prdNme}</td>
	                                  <td>${product.description}</td>
	                                  <td>Shoes</td>
	                                  <td>${product.prce}</td>
	                                  <td>
	                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
	                                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
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
