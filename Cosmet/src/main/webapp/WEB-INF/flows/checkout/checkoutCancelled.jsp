<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/Header.jsp" %>
<%@page isELIgnored="false" %>

<html>
<head>
<title>Canceling</title>

<!-- <style>
body{
		background-image: url("<c:url value='/resource/images/Retro-Game-Wallpaper-02.jpg'/>");
		background-size: cover;
		width: 100%;
		height: auto;
}
</style> -->
</head>

<body style="margin-top:100px;">

	<div class="container-wrapper">
		<div class="container">
			<section>
				<div class="jumbotron">
					<h1 class="alter alter-danger">Checkout cancelled</h1>
					<p>Your Checkout process is cancelled. You may Continue Shopping</p>
				</div>		
			</section>
		</div>
	</div>
				
			<section class="container">
			<p><a href="<spring:url value="/all/product/getAllProducts"/>" class="btn btn-info">Product</a></p>
			</section>
			
	<script src="<c:url value="/resource/js/controller.js"></c:url>"></script>

</body>
</html>

									<!-- Footer Command -->
							
						<%@ include file="/WEB-INF/view/Footer.jsp" %>