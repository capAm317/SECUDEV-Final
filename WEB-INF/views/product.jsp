<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Talaria Footwear Online</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/static/assets/css/bootstrap.css' />" rel="stylesheet">
    <!--external css-->
    <link href="<c:url value='/static/assets/css/font-awesome/css/font-awesome.css' />" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/assets/css/zabuto_calendar.css' />">
    
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/assets/js/gritter/css/jquery.gritter.css' />"/>
    
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
    <script src="<c:url value='/static/assets/js/jquery.nicescroll.js' />"></script>
    <script src="<c:url value='/static/assets/js/jquery.sparkline.js' />"></script>
    
    
    <!--common script for all pages-->
    <script src="<c:url value='/static/assets/js/common-scripts.js' />"></script>
    
    <script type="text/javascript" src="<c:url value='/static/assets/js/gritter/js/jquery.gritter.js' />"></script>
    <script type="text/javascript" src="<c:url value='/static/assets/js/gritter-conf.js' />"></script>
    
    

    <!--script for this page-->
    <script src="<c:url value='/static/assets/js/sparkline-chart.js' />"></script>
    <script src="<c:url value='/static/assets/js/zabuto_calendar.js' />"></script>
    
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
                <div class="row content-panel" id="productPage">
                    <h2 id="productPageTitle">
                        <c:out value="${product.prdNme}" />
                    </h2>
                    <div class="row" id="productPageBody">
                        <div class="col-md-9" id="productPageProductWrapper">
                            <img src="<c:url value='${product.imglnk}'/>" width="150" height="150"  >
	                        <br>
                            <h4>
                                <c:out value="${product.description}" />
                            </h4>
                        </div>
                        
                        <c:set var="inventory" value="${product.inventories}" />
                        	<c:set var="quantity" scope="session" value = "${inventory.qtyOnHand}" /> 
                        
                        <div class="col-md-3" id="productPageActions">
                        
                            <h4><c:out value="${product.prce} PHP" /></h4>
                            <c:out value="In Stock:  ${quantity}" />
                            <br>
                            <c:url var="purchaseUrl" value="/purchase" />
                            <form method="POST" action = "${purchaseUrl}" >
                            Quantity: 
                            <input type="number" id="productPageQuantity" min="1" max="${quantity}" value="1" name="qty" />
                            
                            
                            <input type="hidden" id="productPageprod" name="prodId" value="${prId}" />
                            <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                            <input type="submit" class="btn btn-theme04 btn-sm" id="productPageButBtn" value="Buy">
                        	</form>
                        </div>
                        
                    </div>
                    <hr>
                    <div>
                        <h3 id="productPageAddReviewHeader">
                            3 Reviews
                            <button type="button" class="btn btn-theme btn-sm" id="productPageAddReviewBtn">
                                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                            </button>
                        </h3>
                        
                    </div>
                    <hr>
                    <div id="productPageAddReviewWrapper">
                        <textarea rows="3" class="form-control" style="resize:none" placeholder="Whats on your mind?"></textarea>
                        <div class="grey-style">
                            <div class="pull-right">
                                <button class="btn btn-sm btn-theme03">POST</button>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="productPageReviews">
                          <!-- First Member -->
<!--
                          <div class="desc">
                            <div class="thumb">
                                <img class="img-circle" src="assets/img/ui-divya.jpg" width="35px" height="35px" align="">
                            </div>
                            <div class="details">
                                <p><a href="#">DIVYA MANIAN</a><br/>
                                   <muted>Available</muted>
                                </p>
                            </div>
                          </div>
-->
                        <hr class="light">
                        <div class="productPageReview">
                            <div class="row">
                                <div class="col-md-1 productPageReviewImage">
                                    <img class="img-circle" src="assets/img/ui-divya.jpg" width="45px" height="45px" align="">
                                </div>
                                <div class="col-md-11">
                                    <h4>
                                        <p id="productPageReviewName"><a href="#">Divya Manian</a></p>
                                        <p id="productPageReviewRating">
                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                        </p>
                                    </h4>
                                    <h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent volutpat in elit sed feugiat. Aene arcu turpis, auctor nec elit.</h4>
                                </div>
                            </div>
                        </div>
                        <hr class="light">
                        <div class="productPageReview">
                            <div class="row">
                                <div class="col-md-1 productPageReviewImage">
                                    <img class="img-circle" src="assets/img/ui-divya.jpg" width="45px" height="45px" align="">
                                </div>
                                <div class="col-md-11">
                                    <h4>
                                        <p id="productPageReviewName"><a href="#">Divya Manian</a></p>
                                        <p id="productPageReviewRating">
                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                        </p>
                                    </h4>
                                    <h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent volutpat in elit sed feugiat. Aene arcu turpis, auctor nec elit.</h4>
                                </div>
                            </div>
                        </div>
                        <hr class="light">
                        <div class="productPageReview">
                            <div class="row">
                                <div class="col-md-1 productPageReviewImage">
                                    <img class="img-circle" src="assets/img/ui-divya.jpg" width="45px" height="45px" align="">
                                </div>
                                <div class="col-md-11">
                                    <h4>
                                        <p id="productPageReviewName"><a href="#">Divya Manian</a></p>
                                        <p id="productPageReviewRating">
                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                        </p>
                                    </h4>
                                    <h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent volutpat in elit sed feugiat. Aene arcu turpis, auctor nec elit.</h4>
                                </div>
                            </div>
                        </div>
                        <hr class="light">
                    </div>
                  </div>
                </div>
          </section>
      </section>
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
	<script src="assets/js/zabuto_calendar.js"></script>	
	
	<script type="text/javascript">
        $(document).ready(function () {
//        var unique_id = $.gritter.add({
//            // (string | mandatory) the heading of the notification
//            title: 'Welcome to Dashgum!',
//            // (string | mandatory) the text inside the notification
//            text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo. Free version for <a href="http://blacktie.co" target="_blank" style="color:#ffd777">BlackTie.co</a>.',
//            // (string | optional) the image to display on the left
//            image: 'assets/img/ui-sam.jpg',
//            // (bool | optional) if you want it to fade out on its own or just sit there
//            sticky: true,
//            // (int | optional) the time you want it to be alive for before fading out
//            time: '',
//            // (string | optional) the class name you want to apply to that specific message
//            class_name: 'my-sticky-class'
//        });
//
//        return false;
            $("#productPageAddReviewBtn").click(function(){
                $("#productPageAddReviewWrapper").slideToggle();
            });
        });
	</script>
	
	<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
            
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
  

  </body>
</html>
