<%@include file="Header.jsp" %>

<html>
<head>
<title>Cart</title>
</head>

<body>
<div ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId})">

<a href="" class="btn btn-danger pull-left" ng-click="clearCart()">
<span class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>

<a href="<c:url value="/order/${cartId }"></c:url>" class="btn btn-success pull-right">
<span class="glyphicon glyphicon-shopping-cart"></span>Check Out </a>

<table class="table table-striped">
<thead>
<tr><th>Name</th><th>Quantity</th><th>Total Price</th><th>Remove</th>
</tr>
</thead>
<tr ng-repeat="cartItem in cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
<td><a href="" class="btn btn-danger pull-left" ng-click="removeFromCart(cartItem.id)"><span class="glyphicon glyphicon-remove"></span></a></td>
</tr>

</table>
Total Price : {{calculateGrandTotal()}}
</div>
</div>

						<script src="<c:url value="/resource/js/controller.js"></c:url>"></script>

</body>
</html>