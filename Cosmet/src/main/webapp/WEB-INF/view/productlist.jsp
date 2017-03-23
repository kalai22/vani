											<!-- Header tab in normal include -->
					
					<%@ include file="Header.jsp" %>  
			
							<%-- <!-- jstl core needed if we use jsp:include method -->
			
			<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
									  <!-- Header Command -->
										
							<jsp:include page="Header.jsp" /> --%>
<html>
<head>
<title>Product list</title>
</head>
<body>

<div style="font-family:Lucida Calligraphy; color: #6600cc; font-size: 30px; text-align:center;">Product list</div>

	<div class="container">

		 <table class="table table-striped">
			<thead>
				<tr bgcolor="#ff9966"> 
					<th style="color:blue;">Image</th>
					<th style="color:red;">Product Name</th>
					<th style="color:yellow;">Description</th>
					<th style="color:blue;">Category</th>
					<th style="color:green;">View/Delete/Edit</th>
				</tr>
			</thead>
			<c:forEach var="p" items="${productlist}">

				<tr>
					<td><c:url var="src" value="/resource/images/${p.id }.jpg"></c:url>
					<img src="${src }" alt="test images" style="width:250px;height:300px"/>
					</td>
					
					<td><c:out value="${p.name}"/></td>
					<td><c:out value="${p.description }"/></td>
					<td><c:out value="${p.category.categoryDetails}"/></td>
					
					<td>
										
					<c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a>
					 
					 <security:authorize access="hasRole('ROLE_ADMIN')">
					 
					<c:url var="delete" value="/admin/product/deleteproduct/${p.id }"></c:url>
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					
					<c:url var="edit" value="/admin/product/editform/${p.id}"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
					
					</security:authorize>
					
				    </td>
				</tr>
			</c:forEach>
		</table>

	</div>
 								<%-- <!-- Placed at the end of the document so the pages load faster -->
  
  		<script src="<c:url value='/resource/js/bootstrap.min.js'/>" /></script> --%>
  
</body>
</html>
								<%-- 	<!-- Footer tab in normal include -->
					
					<%@ include file="Footer.jsp" %>  --%>