<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link href="/TalariaOnlineFootwear/static/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="/TalariaOnlineFootwear/static/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="/TalariaOnlineFootwear/static/assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="/TalariaOnlineFootwear/static/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="/TalariaOnlineFootwear/static/assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="/TalariaOnlineFootwear/static/assets/css/style.css" rel="stylesheet">
    <link href="/TalariaOnlineFootwear/static/assets/css/style-responsive.css" rel="stylesheet">
      
    <link href="/TalariaOnlineFootwear/static/assets/css/custom.css" rel="stylesheet">

    <script src="/TalariaOnlineFootwear/static/assets/js/chart-master/Chart.js"></script>
      
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="/TalariaOnlineFootwear/static/assets/js/jquery.js"></script>
    <script src="/TalariaOnlineFootwear/static/assets/js/jquery-1.8.3.min.js"></script>
    <script src="/TalariaOnlineFootwear/static/assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="/TalariaOnlineFootwear/static/assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="/TalariaOnlineFootwear/static/assets/js/jquery.scrollTo.min.js"></script>
    <script src="/TalariaOnlineFootwear/static/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="/TalariaOnlineFootwear/static/assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="/TalariaOnlineFootwear/static/assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="/TalariaOnlineFootwear/static/assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="/TalariaOnlineFootwear/static/assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="/TalariaOnlineFootwear/static/assets/js/sparkline-chart.js"></script>    
	<script src="/TalariaOnlineFootwear/static/assets/js/zabuto_calendar.js"></script>
	
	<script type="application/javascript">
        $(document).ready(function () {
            $(".productFrame").click(function(){
//                $("#boots").hide('slide', {direction: 'left'}, 1000);
                $(location).attr('href', 'product.html');
            });
        });
    </script>
    
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
              
              <div class="col-lg-12 mt">		
                <div class="row mt">
                  <div class="col-md-12">
                      <div class="content-panel" id="manageProductsPageWrapper">
                          <h3>Manage Products</h3>
	                  	  <hr class="light">
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
                              <tr>
                                  <td>Flat Pack Heritage</td>
                                  <td>Brown Leather Shoes</td>
                                  <td>Shoes</td>
                                  <td>Php 3,000</td>
                                  <td>
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                  </td>
                              </tr>
                              <tr>
                                  <td>Flat Pack Heritage</td>
                                  <td>Brown Leather Shoes</td>
                                  <td>Shoes</td>
                                  <td>Php 3,000</td>
                                  <td>
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                  </td>
                              </tr>
                              <tr>
                                  <td>Flat Pack Heritage</td>
                                  <td>Brown Leather Shoes</td>
                                  <td>Shoes</td>
                                  <td>Php 3,000</td>
                                  <td>
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                  </td>
                              </tr>
                              <tr>
                                  <td>Flat Pack Heritage</td>
                                  <td>Brown Leather Shoes</td>
                                  <td>Shoes</td>
                                  <td>Php 3,000</td>
                                  <td>
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                  </td>
                              </tr>
                              <tr>
                                  <td>Flat Pack Heritage</td>
                                  <td>Brown Leather Shoes</td>
                                  <td>Shoes</td>
                                  <td>Php 3,000</td>
                                  <td>
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                  </td>
                              </tr>
                              </tbody>
                          </table>
                      </div><!-- /content-panel -->
                  </div><!-- /col-md-12 -->
              </div><!-- /row -->
                </div><! --/row -->
              
          </section>
      </section>
  </section>
  </body>
</html>
