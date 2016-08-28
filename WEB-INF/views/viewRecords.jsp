<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      
    <link rel="stylesheet" href="/TalariaOnlineFootwear/static/assets/js/morris.js-0.5.1/morris.css">
    
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
                <div class="row content-panel" id="addProductPage">
                    <h3>View Financial Records</h3>
                    <hr class="light">
                    <br>
                    
                    <div id="viewFinRecPageFilters">
                        <label class="form-check-inline">
                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked> Total Sales
                        </label>
                            <label class="form-check-inline">
                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> Sales Per Product
                        </label>
                            <label class="form-check-inline">
                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> Sales Per Product Type
                        </label>
                    </div>
                    
                    <div id="myfirstchart"></div>
                    <div id="bar-example"></div>
                </div>
          </section>
      </section>
  </section>

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
      
    <script type="text/javascript" src="/TalariaOnlineFootwear/static/assets/js/raphael.min.js"></script>
    <script src="/TalariaOnlineFootwear/static/assets/js/morris.js-0.5.1/morris.js"></script>
	
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
        });
	</script>
	
	<script type="application/javascript">
        $(document).ready(function () {
            
            Morris.Area({
                element: 'myfirstchart',
                data: [
                {period: '2010 Q1', iphone: 2666, ipad: null, itouch: 2647},
                {period: '2010 Q2', iphone: 2778, ipad: 2294, itouch: 2441},
                {period: '2010 Q3', iphone: 4912, ipad: 1969, itouch: 2501},
                {period: '2010 Q4', iphone: 3767, ipad: 3597, itouch: 5689},
                {period: '2011 Q1', iphone: 6810, ipad: 1914, itouch: 2293},
                {period: '2011 Q2', iphone: 5670, ipad: 4293, itouch: 1881},
                {period: '2011 Q3', iphone: 4820, ipad: 3795, itouch: 1588},
                {period: '2011 Q4', iphone: 15073, ipad: 5967, itouch: 5175},
                {period: '2012 Q1', iphone: 10687, ipad: 4460, itouch: 2028},
                {period: '2012 Q2', iphone: 8432, ipad: 5713, itouch: 1791}
                ],

                xkey: 'period',
                ykeys: ['iphone', 'ipad', 'itouch'],
                labels: ['iPhone', 'iPad', 'iPod Touch'],
                hideHover: 'auto',
                lineWidth: 1,
                pointSize: 5,
                lineColors: ['#4a8bc2', '#ff6c60', '#a9d86e'],
                fillOpacity: 0.5,
                smooth: true
            });
            
            Morris.Bar({
                element: 'bar-example',
                data: [
                {device: 'iPhone', geekbench: 136},
                {device: 'iPhone 3G', geekbench: 137},
                {device: 'iPhone 3GS', geekbench: 275},
                {device: 'iPhone 4', geekbench: 380},
                {device: 'iPhone 4S', geekbench: 655},
                {device: 'iPhone 5', geekbench: 1571}
                ],
                xkey: 'device',
                ykeys: ['geekbench'],
                labels: ['Geekbench'],
                barRatio: 0.4,
                xLabelAngle: 35,
                hideHover: 'auto',
                barColors: ['#ac92ec']
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
