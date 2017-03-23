
<%@ include file="Header.jsp" %>

<html>
<head>
<title>View Product</title>
</head>
<body ng-app="app" ng-controller="ProductController">

<div class="page-header">
<b>Product Details</b>
${product.name}<br><br>
${product.image}
${product.description }<br><br>
${product.category.categoryDetails}
</div>

<%-- <c:url value="/addCartItem/${product.id }" var="url"></c:url> --%>
<a href="" ng-click="addToCart(${product.id })"><span class="glyphicon glyphicon-shopping-cart"></span></a>

							<!--Script tag for JS  -->
							
	 <script src="<c:url value='/resource/js/controller.js'></c:url>"></script>
	 
</body>
</html>