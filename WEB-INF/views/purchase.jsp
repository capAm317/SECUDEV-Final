<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <meta http-equiv="X-Frame-Options" content="deny">

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

  <%@include file="sideBar.jsp" %>
      
      <%@include file="topBar.jsp" %>
      
       <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <div class="col-lg-10 mt">		
                <div class="row content-panel" id="purchasePage">
                    <div class="stepper">
                          <div class="tab-content row" id="purchasePageBody">
                            <div class="tab-pane fade in active" role="tabpanel" id="stepper-step-1">
                              <h4 style="margin-left:25px;">Review Order</h4>
                              <div id="purchasePageWrapper">
                                  <div id="purchasePageProducts">
                                      <div id="purchasePageProduct" class="row">
                                          <h5 class="purchasePageProductName"><c:out value="${qty}"/> - <c:out value="${buy.prdNme}"/></h5>
                                          <h5 class="purchasePageProductPrice"><c:out value="${buy.prce} PHP"/></h5>
                                      </div>
                                      <div id="purchasePageProduct" class="row">
                                          <h5 class="purchasePageProductName">Shipping Fee</h5>
                                          <h5 class="purchasePageProductPrice">250 PHP</h5>
                                      </div>
                                  </div>
                                  <div class="row" style="margin-left:15px;margin-right:0;">
                                    <h5 class="col-md-9 inline-block" style="float:left;margin-top:0;margin-bottom:0;">TOTAL</h5>
                                    <hr class="col-md-1 inline-block" style="border-color:#C2C2C2;float:right;margin-top:0;margin-bottom:0;">
                                  </div>
                                  <div class="row" style="margin-left:15px;margin-right:6px;transform:translateY(-13px);">
                                    <h5 style="float:right;margin-top:0;padding-top:0;"><c:out value="${price} PHP"/></h5>
                                  </div>
                                  <hr style="margin-top:7px;">
                                  <div class="row" style="margin-right:7%;margin-left:7%;">
                                    <div class="row">
                                        <h5 class="col-md-4">Shipping Address</h5>
                                        <div class="col-lg-8">
                                            <p class="form-control-static"><c:out value="${ship.hnum}, ${ship.strt}, ${ship.sbdv}, ${ship.city}, ${ship.cntry}, ${ship.pstl_code}" /></p>
                                        </div>
                                    </div>
                                    <div class="row text-center">
                                        <h5 class="col-md-4 text-left">Card Number</h5>
                                        <div class="col-md-5 form-group inline-block" style="padding:0;">
                                            <input type="text" class="form-control" placeholder="1234-5678">
                                        </div>
                                        <div class="col-md-2 form-group inline-block" style="padding:0;">
                                            <input type="text" class="form-control" placeholder="CSC">
                                        </div>
                                    </div>
                                  </div>
                              </div>
                              
                              <br><br><br><br><br><br>
                              <ul class="list-inline pull-right">
                                <li>
                                  <a class="btn btn-primary next-step">Next</a>
                                </li>
                              </ul>
                            </div>
                            <div class="tab-pane fade" role="tabpanel" id="stepper-step-2">
							  <div id="confirmPageBody">
								  <h4>Confirm Order</h4>
								  <div id="confirmPageProducts">
									<div id="confirmPageProduct" class="row">
                                        <h5 class="confirmPageProductName"><c:out value="${qty}"/> - <c:out value="${buy.prdNme}"/></h5>
                                        <h5 class="confirmPageProductPrice"><c:out value="${buy.prce} PHP"/></h5>
									</div>
                                    <div id="confirmPageProduct" class="row">
                                        <h5 class="confirmPageProductName">Shipping</h5>
                                        <h5 class="confirmPageProductPrice">250 PHP</h5>
									</div>
                                    <hr class="light">
                                    <div id="confirmPageProduct" class="row">
                                        <h5 class="confirmPageProductName">Total</h5>
                                        <h5 class="confirmPageProductPrice"><c:out value="${price} PHP"/></h5>
									</div>
								  </div>
                                  <div id="confirmPageShip">
                                      Ship to
                                      <br>
                                      <c:out value=" ${bill.hnum}, ${ship.strt}" />
                                      <br> 
                                      <c:out value="${ship.sbdv}, ${ship.city}" />
                                      <br> 
                                      <c:out value="${ship.cntry}, ${ship.pstl_code}" />
                                  </div>
                                  <div id="confirmPageBilling">
                                      Credit Card
                                      <br>
                                      XXXX XXXX XXXX 1234
                                      <br>
                                      <br>
                                      Billing Address:
                                      <br>
                                      <c:out value="${bill.hnum}, ${bill.strt}, ${bill.sbdv}, ${bill.city}, ${bill.cntry}, ${bill.pstl_code}" />
                                  </div>
                                  <br><br><br><br><br><br><br><br><br><br>
								  <ul class="list-inline pull-right">
									<li>
									  <a class="btn btn-default prev-step">Back</a>
									</li>
									<li>
									<c:url var="successUrl" value="/SuccessPurchase" />
									<form action="${successUrl}" method="Post">
									<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
									  <input type="submit" class="btn btn-primary next-step" value="Submit">
									 </form>
									</li>
								  </ul>
							  </div>
                            </div>
                            <div class="tab-pane fade" role="tabpanel" id="stepper-step-3">
                              <div id="purchaseSuccessPageBody">
                                  <h3 class="text-center">Order #<c:out value="${order.idorders}"/> Complete<br>Please wait while redirect you...</h3>
                                  <br><br><br><br><br><br>
                                  <div class="loader"></div>
                                  <br><br><br><br><br><br>
                              </div>
                              <br><br><br><br><br><br>
                            </div>
                          </div>
                            <ul class="nav nav-tabs col-md-8" role="tablist">
                              <li role="presentation" class="active" style="width:33%;">
                                <a class="persistant-disabled" href="#stepper-step-1" data-toggle="tab" aria-controls="stepper-step-1" role="tab" title="Review">
                                  <span class="round-tab">1</span>
                                </a>
                              </li>
                              <li role="presentation" class="disabled" style="width:33%;">
                                <a class="persistant-disabled" href="#stepper-step-2" data-toggle="tab" aria-controls="stepper-step-2" role="tab" title="Confirm">
                                  <span class="round-tab">2</span>
                                </a>
                              </li>
                              <li role="presentation" class="disabled" style="width:33%;">
                                <a class="persistant-disabled" href="#stepper-step-3" data-toggle="tab" aria-controls="stepper-step-3" role="tab" title="Complete">
                                  <span class="round-tab">3</span>
                                </a>
                              </li>
                            </ul>
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

	
	<script type="text/javascript">
        $(document).ready(function (e) {
              $("#purchasePageNextBtn").click(function(){
                  var result = $("#purchasePageCreditNum").validateCreditCard();
                  if(!result.valid){
                    alert("Credit card not recognized!");
                    e.stopPropagation();
                  }else{
                    $("#confirmPageCreditNum").text($("#purchasePageCreditNum").val().replace(/ /g,'').substring(12, 16));
                  }
              });
            
            
              function triggerClick(elem) {
                $(elem).click();
              }
              var $progressWizard = $('.stepper'),
                $tab_active,
                $tab_prev,
                $tab_next,
                $btn_prev = $progressWizard.find('.prev-step'),
                $btn_next = $progressWizard.find('.next-step'),
                $tab_toggle = $progressWizard.find('[data-toggle="tab"]'),
                $tooltips = $progressWizard.find('[data-toggle="tab"][title]');

              // To do:
              // Disable User select drop-down after first step.
              // Add support for payment type switching.

              //Initialize tooltips
              $tooltips.tooltip();

              //Wizard
              $tab_toggle.on('show.bs.tab', function(e) {
                var $target = $(e.target);

                if (!$target.parent().hasClass('active, disabled')) {
                  $target.parent().prev().addClass('completed');
                }
                if ($target.parent().hasClass('disabled')) {
                  return false;
                }
              });

              $btn_next.on('click', function() {
                $tab_active = $progressWizard.find('.active');

                $tab_active.next().removeClass('disabled');

                $tab_next = $tab_active.next().find('a[data-toggle="tab"]');
                triggerClick($tab_next);

              });
              $btn_prev.click(function() {
                $tab_active = $progressWizard.find('.active');
                $tab_prev = $tab_active.prev().find('a[data-toggle="tab"]');
                triggerClick($tab_prev);
              });
        });
    </script>
  

  </body>
</html>
