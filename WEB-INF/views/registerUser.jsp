<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>DASHGUM - Bootstrap Admin Template</title>

	<!-- Bootstrap core CSS -->
    <link href="<c:url value='/static/assets/css/bootstrap.css' />" rel="stylesheet">
    <!--external css-->
    
    <link href="<c:url value='/static/assets/css/font-awesome/css/font-awesome.css' />" rel="stylesheet" />
        
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

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	    <c:url var="registerSubmitUrl" value="/registeruser" />
		      <form class="form-register" action="${registerSubmitUrl}" method="POST">
		      <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
		        <h2 class="form-register-heading">Create Account</h2>
		        <div class="register-wrap">
<!--
		            <input type="text" class="form-control" placeholder="User ID" autofocus>
		            <br>
		            <input type="password" class="form-control" placeholder="Password">
		            <label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.html#myModal"> Forgot Password?</a>
		
		                </span>
		            </label>
		            <button class="btn btn-theme btn-block" href="index.html" type="submit"><i class="fa fa-lock"></i> SIGN IN</button>
		            <hr>
		            <div class="registration">
		                Don't have an account yet?<br/>
		                <a class="" href="#">
		                    Create an account
		                </a>
		            </div>
-->
                    <div id="stepper-register" class="stepper">
                          <div class="tab-content row">
                            <div class="tab-pane fade in active" role="tabpanel" id="stepper-step-1">
                              <div id="registerPageUserDataWrapper">
                                <h4>Personal Details</h4>
                                <br>
                                <input type="hidden" path="id" id="id"/> 
                                <label for="registerName">Full Name</label>
                                <div class="input-group" id="registerName">
                                  <input type="text" name="firstName" id="registerFirstName" class="form-control" placeholder="First Name"/>
                                  <div class="has-error">
											<form:errors path="firstName" class="help-inline"/>
								  </div>
                                  <span class="input-group-addon"> </span>
                                  <input type="text" name="middleInit" id="registerMiddleInitial" class="form-control" size="3" placeholder="MI"/>
                                  <div class="has-error">
											<form:errors path="middleInit" class="help-inline"/>
								  </div>
                                  <span class="input-group-addon"> </span>
                                  <input type="text" name="lastName" id="registerLastName" class="form-control" placeholder="Last Name"/>
                                <div class="has-error">
											<form:errors path="lastName" class="help-inline"/>
								  </div>
                                </div>
                                <br>
                                <div class="form-group">
                                  <label for="registerUsername">Username</label>
                                  <input type="text" name="ssoId" class="form-control" id="registerUsername" placeholder="">
                                <div class="has-error">
											<form:errors path="ssoId" class="help-inline"/>
								  </div>
                                </div>
                                <div class="form-group">
                                  <label for="registerPassword">Password</label>
                                  <input type="password" name="password" class="form-control" id="registerPassword" placeholder="">
                                <div class="has-error">
											<form:errors path="password" class="help-inline"/>
								  </div>
                                </div>
                                <div class="form-group">
                                  <label for="registerEmail">Email</label>
                                  <input type="email" name="email" class="form-control" id="registerEmail" placeholder="">
                                <div class="has-error">
											<form:errors path="email" class="help-inline"/>
								  </div>
                                </div>
                              </div>
                              
                              <br><br><br><br><br>
                              <ul class="list-inline pull-right">
                                <li>
                                  <a class="btn btn-primary next-step">Next</a>
                                </li>
                              </ul>
                            </div>
                            <div class="tab-pane fade" role="tabpanel" id="stepper-step-2">
				              <div id="registerPageShipWrapper">
                                <h4>Shipping Address</h4>
                                <br>
                                <div class="form-group">
                                  <label for="registerShipHouseNumber">House Number</label>
                                  <input type="text" name="hnum" class="form-control" id="registerShipHouseNumber" placeholder="">
                                </div>
                                <div class="form-group">
                                  <label for="registerShipStreet">Street</label>
                                  <input type="text" name="strt" class="form-control" id="registerShipStreet" placeholder="">
                                </div>
                                <div class="form-group">
                                  <label for="registerShipSubdivision">Subdivision</label>
                                  <input type="text" name="sbdv" class="form-control" id="registerShipSubdivision" placeholder="">
                                </div>
                                <div class="form-group">
                                  <label for="registerShipCity">City</label>
                                  <input type="text" name="city" class="form-control" id="registerShipCity" placeholder="">
                                </div>
                                <div class="form-group">
                                  <label for="registerShipPostalCode">Postal Code</label>
                                  <input type="text" name="pstl_code" class="form-control" id="registerShipPostalCode" placeholder="">
                                </div>
                                <div class="form-group">
                                  <label for="registerShipCountry">Country</label>
                                  <input type="text" name="country" class="form-control" id="registerShipCountry" placeholder="">
                                </div>
                                <div class="checkbox">
                                  <label>
                                    <input type="checkbox" id="registerShipSameBillCB" checked>
                                    Use also as my Billing Address
                                  </label>
                                </div>
                              </div>
                              <br><br><br><br><br>
                              <ul class="list-inline pull-right">
                                <li>
                                  <a class="btn btn-default prev-step">Back</a>
                                </li>
                                <li>
                                  <a class="btn btn-primary next-step" id="registerBillNext">Next</a>
                                </li>
                              </ul>
                            </div>
                            <div class="tab-pane fade" role="tabpanel" id="stepper-step-3">
				              <div id="registerPageBillWrapper">
                                <h4>Billing Address</h4>
                                <br>
                                <div class="form-group">
                                  <label for="registerBillHouseNumber">House Number</label>
                                  <input type="text" name="hnum2" class="form-control" id="registerBillHouseNumber" placeholder="">
                                </div>
                                <div class="form-group">
                                  <label for="registerBillStreet">Street</label>
                                  <input type="text" name="strt2" class="form-control" id="registerBillStreet" placeholder="">
                                </div>
                                <div class="form-group">
                                  <label for="registerBillSubdivision">Subdivision</label>
                                  <input type="text" name="sbdv2" class="form-control" id="registerBillSubdivision" placeholder="">
                                </div>
                                <div class="form-group">
                                  <label for="registerBillCity">City</label>
                                  <input type="text" name="city2" class="form-control" id="registerBillCity" placeholder="">
                                </div>
                                <div class="form-group">
                                  <label for="registerBillPostalCode">Postal Code</label>
                                  <input type="text" name="pstl_code2" class="form-control" id="registerBillPostalCode" placeholder="">
                                </div>
                                <div class="form-group">
                                  <label for="registerBillCountry">Country</label>
                                  <input type="text" name="country2" class="form-control" id="registerBillCountry" placeholder="">
                                </div>
                              </div>
                              <br><br><br><br><br>
                              <ul class="list-inline pull-right">
                                <li>
                                  <a class="btn btn-default prev-step">Back</a>
                                </li>
                                <li>
                                  <input type="submit" value="Register" class="btn btn-primary next-step"/>
                                 <!--  <a class="btn btn-primary next-step">Submit</a> -->
                                </li>
                              </ul>
                            </div>
                            <div class="tab-pane fade" role="tabpanel" id="stepper-step-4">
                              <div id="registerPageCompleteWrapper">
                                  <h3 style="text-align:center;">You have successfully registered! Please wait while redirect you to the login page...</h3>
                              </div>
                                
                              <br><br><br><br><br><br><br>
                            </div>
                          </div>
                            <ul class="nav nav-tabs col-md-4" role="tablist">
                              <li role="presentation" class="active">
                                <a class="persistant-disabled" href="#stepper-step-1" data-toggle="tab" aria-controls="stepper-step-1" role="tab" title="User Data">
                                  <span class="round-tab">1</span>
                                </a>
                              </li>
                              <li role="presentation" class="disabled">
                                <a class="persistant-disabled" href="#stepper-step-2" data-toggle="tab" aria-controls="stepper-step-2" role="tab" title="Shipping Data">
                                  <span class="round-tab">2</span>
                                </a>
                              </li>
                              <li role="presentation" class="disabled">
                                <a class="persistant-disabled" href="#stepper-step-3" data-toggle="tab" aria-controls="stepper-step-3" role="tab" title="Billing Data">
                                  <span class="round-tab">3</span>
                                </a>
                              </li>
                              <li role="presentation" class="disabled">
                                <a class="persistant-disabled" href="#stepper-step-4" data-toggle="tab" aria-controls="stepper-step-4" role="tab" title="Complete">
                                  <span class="round-tab">4</span>
                                </a>
                              </li>
                            </ul>
                      </div>
		        </div>
		      </form>	  	
	  	
	  	</div>
	  </div>

   <!-- js placed at the end of the document so the pages load faster -->
    <script src="<c:url value='/static/assets/js/jquery.js' />"></script>
    <script src="<c:url value='/static/assets/js/bootstrap.min.js' />"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="<c:url value='/static/assets/js/jquery.backstretch.min.js' />"></script>
    <script>
        $.backstretch("/TalariaOnlineFootwear/static/assets/img/login-bg.jpg", {speed: 500});
        $(document).ready(function(){
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
            
            
              $("#registerBillNext").click(function(){
                  if($("#registerShipSameBillCB").is(':checked')){
                      $("#registerBillHouseNumber").val($("#registerShipHouseNumber").val());
                      $("#registerBillHouseNumber").prop('disabled', true);
                      $("#registerBillStreet").val($("#registerShipStreet").val());
                      $("#registerBillStreet").prop('disabled', true);
                      $("#registerBillSubdivision").val($("#registerShipSubdivision").val());
                      $("#registerBillSubdivision").prop('disabled', true);
                      $("#registerBillCity").val($("#registerShipCity").val());
                      $("#registerBillCity").prop('disabled', true);
                      $("#registerBillPostalCode").val($("#registerShipPostalCode").val());
                      $("#registerBillPostalCode").prop('disabled', true);
                      $("#registerBillCountry").val($("#registerShipCountry").val());
                      $("#registerBillCountry").prop('disabled', true);
                  }else{
                      $("#registerBillHouseNumber").val("");
                      $("#registerBillHouseNumber").prop('disabled', false);
                      $("#registerBillStreet").val("");
                      $("#registerBillStreet").prop('disabled', false);
                      $("#registerBillSubdivision").val("");
                      $("#registerBillSubdivision").prop('disabled', false);
                      $("#registerBillCity").val("");
                      $("#registerBillCity").prop('disabled', false);
                      $("#registerBillPostalCode").val("");
                      $("#registerBillPostalCode").prop('disabled', false);
                      $("#registerBillCountry").val("");
                      $("#registerBillCountry").prop('disabled', false);
                  }
              });
        });
    </script>


  </body>
</html>
