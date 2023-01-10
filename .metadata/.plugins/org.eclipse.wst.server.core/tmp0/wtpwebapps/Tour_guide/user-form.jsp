 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body class ="p-3 mb-2 bg-light text-dark">
     
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #1b4385">
			<div >
			<h1 class="navbar-brand"> Hotel.com </h1>
			</div>

			<ul class="navbar-nav ml-auto">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit Hotel
            		</c:if>
						<c:if test="${user == null}">
            			Add New Hotel
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Hotel Name </label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Official Email</label> <input type="email"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label> District</label> <input type="text"
						value="<c:out value='${user.district}' />" class="form-control"
						name="district" required="required">
				</fieldset>	

				<fieldset class="form-group">
					<label> Price</label> <input type="text"
						value="<c:out value='${user.price}' />" class="form-control"
						name="price" required="required">
				</fieldset>
               
               <button type="submit" class="btn btn-dark">SAVE</button>
				<a href="<%=request.getContextPath()%>/list" class="btn btn-dark">BACK</a>
				
				</form>
			</div>
		</div>
	</div>

</body>
</html>
