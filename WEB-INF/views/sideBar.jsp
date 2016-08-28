<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- **********************************************************************************************************************************************************
MAIN SIDEBAR MENU
*********************************************************************************************************************************************************** -->
<!--sidebar start-->
<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">

            <p class="centered"><a href="profile.html"><img src="<c:url value='/static/assets/img/ui-sam.jpg' />" class="img-circle" width="60"></a></p>
            
            <sec:authorize access="!isAuthenticated()">
            	<h5 id="sideBarName" class="centered">Login to your Account</h5>
            	<div class="logoutBtn">
	              <a href="<c:url value="/login" />" type="button" class="btn btn-default btn-sm">Login</a>
	            </div>
            </sec:authorize>
            
            <sec:authorize access="isAuthenticated()">
            	<h5 id="sideBarName" class="centered">${loggedinuser}</h5>
            	<div class="logoutBtn">
	              <a href="<c:url value="/logout" />" type="button" class="btn btn-default btn-sm">Logout</a>
	            </div>
            </sec:authorize>
            

			<sec:authorize access="hasRole('ADMIN')">
	            <li class="sideBarMT">
	                <a class="active" href="<c:url value='/list' />">
	                    <i class="fa fa-dashboard"></i>
	                    <span>MANAGE USERS</span>
	                </a>
	            </li>
	            
	            <li class="sideBarMT">
	                <a class="" href="<c:url value='/newuser' />">
	                    <i class="fa fa-dashboard"></i>
	                    <span>ADD USER</span>
	                </a>
	            </li>
            </sec:authorize>
            
            <sec:authorize access="hasRole('USER')">
            	<li class="sideBarMT">
                      <a class="active" href="<c:url value="/products" />">
                          <i class="fa fa-dashboard"></i>
                          <span>PRODUCT CATALOGUE</span>
                      </a>
                  </li>

                  <li class="sideBarMT">
                      <a class="" href="purchase_history.html">
                          <i class="fa fa-dashboard"></i>
                          <span>MY ORDERS</span>
                      </a>
                  </li>

                  <li class="sideBarMT">
                      <a class="" href="change_password.html">
                          <i class="fa fa-dashboard"></i>
                          <span>CHANGE PASSWORD</span>
                      </a>
                  </li>
            </sec:authorize>

        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->