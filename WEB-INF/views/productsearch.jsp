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
    <link href="<c:url value='/static/assets/css/bootstrap.css" rel="stylesheet' />">
    <!--external css-->
    <link href="<c:url value='/static/assets/font-awesome/css/font-awesome.css' />" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/assets/css/zabuto_calendar.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/assets/js/gritter/css/jquery.gritter.css' />" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/assets/lineicons/style.css' />">    
    
    <!-- Custom styles for this template -->
    <link href="<c:url value='/static/assets/css/style.css' />" rel="stylesheet">
    <link href="<c:url value='/static/assets/css/style-responsive.css' />" rel="stylesheet">
      
    <link href="<c:url value='/static/assets/css/custom.css' />" rel="stylesheet">

    <script src="<c:url value='/static/assets/js/chart-master/Chart.js' />"></script>
      
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

    <!--script for this page-->
    <script src="<c:url value='/static/assets/js/sparkline-chart.js' />"></script>    
	<script src="<c:url value='/static/assets/js/zabuto_calendar.js' />"></script>
	
	<script type="application/javascript">
        $(document).ready(function () {
            $(".productFrame").click(function(){
//                $("#boots").hide('slide', {direction: 'left'}, 1000);
                $(location).attr('href', 'product.html');
            });
            
            $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {
                var target = $(e.target).text(); // activated tab
                alert(target);
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
                    <div class="row content-panel productCatalogue">
                        <c:url var="searchUrl" value="/productsearch"/>
	                	<form action="${searchUrl}" method="get" class="input-group" style="margin:10px;">
		                		<span class="input-group-addon">
		                            <i class="fa fa-search"></i>
		                        </span>
		                        <input type="text" class="form-control"
		                               placeholder="Search" name="search"/>
	                    </form>

                        <div id="productSearchWrapper">
                            <c:forEach items="${searchProducts}" var="product">
							
								<div class="col-lg-2 col-md-2 col-sm-2 mb"> 
									<a href="<c:url value='/product-${product.indirectId}' />">                     	
										<div class="productFrame product-panel-2 pn">
										
										   	<img class="productCatalogueImg" src="<c:url value='${product.imglnk}' />" width="100" height="100" alt="">
											<hr class="light" style="margin-top:70px;">
											<div class="row">
										    	<div class="col-lg-7 col-md-7 col-sm-7">
										        	<h5 class="mt productCatalogueName"><c:out value="${product.prdNme}"/></h5>
												</div>
												<div class="col-lg-5 col-md-5 col-sm-5">
											    	<h5 class="mt productCataloguePrice"><c:out value="Php ${product.prce}"/></h5>
												</div>
									        </div>
									    </div>
								    </a>
								</div><!--/col-md-4 -->
                                	
                            </c:forEach>
                        </div><!--/panel-body -->

                    </div><!-- /col-lg-12 -->
                </div><!--/row -->
              
          </section>
      </section>
  </section>
  </body>
</html>
