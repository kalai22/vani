   									<!-- Header tab in normal include -->
					
					<%@ include file="Header.jsp" %>  
			
							<%-- <!-- jstl core needed if we use jsp:include method -->
			
			<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
									  <!-- Header Command -->
										
							<jsp:include page="Header.jsp" /> --%>
<html>
 <head>
  <title>Product Form</title>
  									<!-- Datepicker jQuery -->
  										  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
    format:'dd-mm-yyyy'
  } );
  </script>
 
 </head>
 
 <body>
 										 
 <div class="container-wrapper">
 	<div class="container">
 	
 	<c:url value="/admin/product/addProduct" var="ap"></c:url>
 	<form:form action="${ap }" commandName="product" enctype="multipart/form-data">
 	
 <%-- <form:form action="/admin/product/addProduct" commandName="product"> --%>
 
 	<div class="form-group">
 	<label for="id"></label>
 	<form:hidden path="id"/>
 	</div>
 
 	<div class="form-group">
 	<label for="name">Product Name</label>
 	<form:input path="name" class="form-control"/>
 	<form:errors path="name" cssStyle="color:Blue"></form:errors>
 	</div>
 
 	<div class="form-group">
 	<label for="description">Description</label>
 	<form:input path="description" class="form-control"/>
 	<form:errors path="description" cssStyle="color:Red"></form:errors>
 	</div>
 
 	<div class="form-group">
 	<label for="price">Price</label>
 	<form:input path="price" class="form-control"/>
 	<form:errors path="price" cssStyle="color:yellow"></form:errors>
 	</div>
 
 	<div class="form-group">
 	<label for="quantity">Quantity</label>
 	<form:input path="quantity" class="form-control"/>
 	<form:errors path="quantity" cssStyle="color:Green"></form:errors>
 	</div>
 	 		
 	<div class="form-group">
 	<label for="mfg">Manufacture Date</label>
 	<form:input path="mfg" class="form-control" type="text" id="datepicker" />
 	<form:errors path="mfg" cssStyle="color:red"></form:errors>
 	</div>
 
 	<div class="form-group">
 	<label for="category">Category</label>
 	<c:forEach var="c" items="${categories }">
 	<form:radiobutton path="category.id" value="${c.id }"/>
 	${c.categoryDetails }
 	</c:forEach>
 	<form:errors path="category" cssStyle="color:blue"></form:errors>
 	</div> 	
 	
 	<div class="form-group">
 	<label for="image">Image</label>
 	<form:input path="image" type="file"/>
 	</div>
 	
 	<input type="submit" value="Add Product" class="btn btn-danger">
 
 	</form:form>
 	</div>
 </div>
 										 
 </body>
</html>
								 <%-- <!-- Footer tab in normal include -->
					
					<%@ include file="Footer.jsp" %>  --%>