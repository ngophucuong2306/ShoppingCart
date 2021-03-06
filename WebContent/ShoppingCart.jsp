<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/additional-methods.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/additional-methods.min.js"></script>
<title>Shopping Cart</title>
<style>
	.item
	{
		padding:20px;
		margin-top:20px;
		border: 1px solid black;
		height: 250px;
	}
	img
	{
		margin:auto; 
		width:200px;
		display:block;
		float:right;
	}
</style>

</head>
<body>
	<jsp:include page="./header.jsp"/>
	<div class= "jumbotron col-sm-6 col-sm-offset-3 ">
		<h3>Order Subtotal = $ ${order.getSubtotal()} </h3>
		<a class="btn btn-primary" href="./Checkout">Checkout</a>
	</div>
	<c:forEach var="lineItem" items="${order.shoplineitems}">
		<div class="row col-sm-6 col-sm-offset-3">
		  <div class="item ">

				<div class="col-sm-5">
					<h2>${lineItem.shopproduct.productName}</h2>
					<p>${lineItem.shopproduct.productDescription}</p>
					<p>$ ${lineItem.shopproduct.price}</p>
					<p>Quantity: ${lineItem.quantity}</p>
					<c:if test="${not empty user}">
  						<a href="./RemoveItem?lineItemId=${lineItem.lineItemId}" class="btn btn-danger">Remove</a>
					</c:if>
				</div>
				<div class="col-sm-5 col-offset-5">
					<img src="${lineItem.shopproduct.imageLink}" alt="${lineItem.shopproduct.productName}" width=319 height=200/>
				</div>
		  </div>
		  </div>
		</div>
	</c:forEach>
</body>
</html>