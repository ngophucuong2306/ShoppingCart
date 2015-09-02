	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand">Shopping Cart!</a>
	    </div>
	    <div>
	      <ul class="nav navbar-nav">
	      	<li><a href="AllProduct">Product List</a></li>

      		

			
			<c:if test="${empty user}">
  					<li><a href="./LoginForm.jsp">Login</a></li>
			</c:if>
			
			<c:if test="${not empty user}">
  					
			      	<li>
      					<a href="ShoppingCart"><span class="glyphicon glyphicon-shopping-cart"></span> <span class="badge">${user.getNumItems()}</span></a>
      				</li>
      				
      				<li><a href="Logout">Logout</a></li>
			</c:if>
      		
	      </ul>
	    </div>
	  </div>
	</nav>