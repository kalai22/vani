 											<!-- Header Coding -->
											
							<%@include file="Header.jsp" %>
<html>
<head>
<title>Customer Details</title>
</head>
<body>

<div class="container-wrapper">
	<div class="container">
		
		<c:url var="url" value="/ev/Register"></c:url>
		<form:form action="${url }" commandName="customer">
					
			<div class="form-group">
			<form:label path="Firstname">First Name</form:label>
			<form:input path="Firstname"></form:input><span style="color:red;">${name_msg}</span>
			<form:errors path="Firstname" cssStyle="color:Blue"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="lastname">Last Name</form:label>
			<form:input path="lastname"></form:input>
			<form:errors path="lastname" cssStyle="color:Red"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="email">Email</form:label>
			<form:input path="email"></form:input>
			<form:errors path="email" cssStyle="color:Yellow"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="phoneno">Phone No</form:label>
			<form:input path="phoneno"></form:input>
			<form:errors path="phoneno" cssStyle="color:blue"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="users.username">User Name</form:label>
			<form:input path="users.username"></form:input>
			${duplicateUsername }
			<form:errors path="users.username" cssStyle="color:blue"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="users.password">Password</form:label>
			<form:input path="users.password" type="password"></form:input>
			<form:errors path="users.password" cssStyle="color:red"></form:errors>
			</div>
			
									<!-- Billing Address Details -->
			
			<div class="form-group">
			<form:label path="billingAddress.ApartmentNo">Apartment No </form:label>
			<form:input path="billingAddress.ApartmentNo"></form:input>
			<form:errors path="billingAddress.ApartmentNo" cssStyle="color:yellow"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="billingAddress.StreetName">Street Name</form:label>
			<form:input path="billingAddress.StreetName"></form:input>
			<form:errors path="billingAddress.StreetName" cssStyle="color:blue"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="billingAddress.City">City</form:label>
			<form:input path="billingAddress.City"></form:input>
			<form:errors path="billingAddress.City" cssStyle="color:green"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="billingAddress.State">State</form:label>
			<form:input path="billingAddress.State"></form:input>
			<form:errors path="billingAddress.State" cssStyle="color:red"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="billingAddress.Country">Country</form:label>
			<form:input path="billingAddress.Country"></form:input>
			<form:errors path="billingAddress.Country" cssStyle="color:blue"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="billingAddress.Pincode">Pin code</form:label>
			<form:input path="billingAddress.Pincode"></form:input>
			<form:errors path="billingAddress.Pincode" cssStyle="color:red"></form:errors>
			</div>
			
							<!-- Shipping Address Details -->
			
			<div class="form-group">
			<form:label path="shippingAddress.ApartmentNo">Apartment No</form:label>
			<form:input path="shippingAddress.ApartmentNo"></form:input>
			<form:errors path="shippingAddress.ApartmentNo" cssStyle="color:yellow"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="shippingAddress.StreetName">Street Name</form:label>
			<form:input path="shippingAddress.StreetName"></form:input>
			<form:errors path="shippingAddress.StreetName" cssStyle="color:Blue"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="shippingAddress.City">City</form:label>
			<form:input path="shippingAddress.City"></form:input>
			<form:errors path="shippingAddress.City" cssStyle="color:green"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="shippingAddress.State">State</form:label>
			<form:input path="shippingAddress.State"></form:input>
			<form:errors path="shippingAddress.State" cssStyle="color:red"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="shippingAddress.Country">Country</form:label>
			<form:input path="shippingAddress.Country"></form:input>
			<form:errors path="shippingAddress.Country" cssStyle="color:Blue"></form:errors>
			</div>
			
			<div class="form-group">
			<form:label path="shippingAddress.Pincode">Pin code</form:label>
			<form:input path="shippingAddress.Pincode"></form:input>
			<form:errors path="shippingAddress.Pincode" cssStyle="color:red"></form:errors>
			</div>
			
		<input type="submit" value="Register">
		
	</form:form>
	</div>
</div>
</body>
</html>
							<%-- 				<!-- Footer Coding -->
							
							<%@include file="Footer.jsp"%>  --%>