
<%@ include file="Header.jsp" %>

<html>
<head>
<title>View Product</title>
</head>
<body ng-app="app" ng-controller="ProductController">

<div class="page-header">

<center><b>Product Details:</b>
${product.name}<br><br>

<c:url var="src" value="/resource/images/${product.id }.jpg"></c:url>
<img src="${src }" alt="test images" style="width:250px;height:300px"/><br><br>

<b>Description:</b>
${product.description }<br><br>

<b>Category:</b>
${product.category.categoryDetails}</center>
</div>

<%-- <c:url value="/addCartItem/${product.id }" var="url"></c:url> --%>
<a href="" ng-click="addToCart(${product.id })"><center><span class="glyphicon glyphicon-shopping-cart"></center></span></a>

							<!--Script tag for JS  -->
							
	 <script src="<c:url value='/resource/js/controller.js'></c:url>"></script>
	 
</body>
</html>