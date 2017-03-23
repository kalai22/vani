<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@page isELIgnored="false" %>

<html>
<head>
										<!-- Bootstrap Command -->
										
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		    <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />  
   
    										 <!-- Angular Js -->
    										 
    	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script> 
    
</head>
<body>					
										<!-- Header command -->
										
   <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    
    <c:url var="i" value="/index"></c:url>
   <a class="navbar-brand" href="${i }">Classical Beauty</a>
    </div>
    
    <ul class="nav navbar-nav ">
    <c:url var="a" value="/Aboutus"></c:url>
    <li><a href="${a }"><b><i>ABOUT US</i></b></a></li>
         
       <c:if test="${pageContext.request.userPrincipal.name !=null }">
             
           <c:url var="ul" value="/admin/product/productform"></c:url>
           <security:authorize access="hasRole('ROLE_ADMIN')">
           <li><a href="${ul }"><b><i>PRODUCT FORM</i></b></a></li>
           </security:authorize>
             
           <c:url var="allProducts" value="/all/product/getAllProducts"></c:url>
           <li><a href="${allProducts }"><b><i>BROWSE</i></b></a></li>
        <!--    
       <li class="dropdown"> 
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">FACE<span class="caret"></span></a>
    	<ul class="dropdown-menu">
    	
         <li><a href="#">Eyeliner</a></li>
		 <li><a href="#">Lipstick</a></li>
 		 <li><a href="#">Facepowder</a></li>
 		</ul>
 	</li>
		
	<li class = "dropdown"> 
	<a class = "dropdown-toggle" data-toggle = "dropdown" href="#">SKIN<span class = "caret"></span></a>
            <ul class="dropdown-menu">
            
             <li><a href="#">Body Lotion</a></li>
          	 <li><a href="#">Sunscreen Lotion</a></li>
          	 <li><a href="#">Moisturizing Cream</a></li>
        </ul>
       </li> -->
    
    
    
     <ul class="nav navbar-nav navbar-right">
    
      <li><a href="">Welcome ${pageContext.request.userPrincipal.name }</a></li>
        
      <c:if test="${pageContext.request.userPrincipal.name !=null }">
      <security:authorize access="hasRole('ROLE_USER')"> 
      <li><a href="<c:url value="/cart/getCartId"></c:url>"><b><i>CART</i></b></a></li>
      </security:authorize>
        
	  <li><a href="<c:url value="/j_spring_security_Signout"></c:url>"><span class="glyphicon glyphicon-log-out"></span><b><i>SIGN OUT</i></b></a></li>
	  </c:if>
       </ul> 
		</c:if>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${pageContext.request.userPrincipal.name ==null }"> 
      
      <c:url var="l" value="/Signin"></c:url>
      <li><a href="${l }"><span class="glyphicon glyphicon-user"></span><b><i>SIGN IN</i></b></a></li> 
      
       <li><a href="<c:url value="/ev/registerform"></c:url>"><span class="glyphicon glyphicon-log-in"></span><b><i>REGISTER</i></b> </a></li>
      </c:if>
   
	</ul>
      
  </div>
</nav>
		
						<!-- Placed at the end of the document so that page load faster -->

			<script src="<c:url value='/resource/js/bootstrap.min.js'/>" ></script>
			  
</body>
</html>