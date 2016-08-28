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
	  		<%-- <c:url var="adduserUrl" value="/adduser" /> --%>
		      <%-- <form class="form-register" action="${adduserUrl}"> --%>
		    
				 <%-- <form:input type="hidden" path="id" id="id"/>  --%>
				
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
                              <div id="registerPageCompleteWrapper">
                                  <h3 style="text-align:center;">You have successfully registered! Back to <a href="<c:url value="/login" />">Login</a></h3>
                                   
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
		
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Forgot Password ?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Enter your e-mail address below to reset your password.</p>
		                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
		                          <button class="btn btn-theme" type="button">Submit</button>
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      <%-- </form:form>	  --%> 	
	  	
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
        });
    </script>


  </body>
</html>
