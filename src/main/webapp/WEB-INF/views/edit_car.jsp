<%@page import="com.jspiders.spring_mvc.dto.CarDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
<style type="text/css">
#head {
	font-size: 30px;
	font-family: Cursive;
	color: blue;
}

#box {
	border: none;
	height: 450px;
	width: 440px;
	margin-left: 525px;
	margin-top: 70px;
	border-radius: 35px;
	box-shadow: 0px 0px 4px rgba(0, 0, 300, 0.9);
	padding: 10px;
}

.inp {
	margin-top: 25px;
}

.input {
	background-color: #f5f6f7;
	font-family: monospace;
	border: none;
	padding: 10px;
	width: 250px;
	margin-top: 10px;
	box-shadow: 0px 0px 4px rgba(0, 0, 200, 0.7);
	border-radius: 10px;
}
.input:hover {
	box-shadow: 4px 4px 4px rgba(0, 0, 200, 0.7);
}

span {
	font-family: Cursive;
}

#button {
	border: none;
	background-color: #1877f2;
	color: #fff;
	border-radius: 10px;
	padding: 10px;
	width: 80px;
	margin-left: 40px;
	margin-top: 10px;
	border-radius: 5px;
	font-size: 15px;
	font-family: sans-serif;
}

#button:hover {
	box-shadow: 4px 4px 4px rgba(0, 0, 200, 0.7);
}

#bottom {
	margin-bottom: 10px;
}

#message {
	font-size: 25px;
}

a {
	text-decoration: none;
	font-family: Cursive;
	color: blue;
	padding: 5px;
}

a:hover {
	border-radius: 7px;
	box-shadow: 0px 0px 4px rgba(0, 0, 200, 0.7);
}
</style>
</head>
<body>
	<%
	CarDTO car = (CarDTO) request.getAttribute("car");
	%>
	<div id="box" align="center">
		<h3 id="head">Update Car Details</h3>
		<form action="update_car" method="post">
			<div class="inp">
				<span>Id :</span> <input class="input" type="text" name="id"
					value="<%=car.getId()%>" readonly="readonly" autofocus="autofocus" >
			</div>
			<div class="inp">
				<span>Name :</span> 
				<input class="input" type="text" name="name"
						value="<%=car.getName()%>" required="required">
			</div>
			<div class="inp">
				<span>Brand :</span> 
				<input class="input" type="text" name="brand"
						value="<%=car.getBrand()%>" required="required">
			</div>
			<div class="inp">
				<span>Price :</span> 
				<input class="input" type="text" name="price"
						value="<%=car.getPrice()%>" required="required">
			</div>
			
			<input id="button" type="submit" value="UPDATE">
		</form>
		<h3 id="bottom">
			Do you want to go to <a href="home">Home Page</a> ?
		</h3>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">

		<div class="toast" role="alert" aria-live="assertive"
			aria-atomic="true">
			<div class="toast-header">
				<img src="..." class="rounded me-2" alt="..."> <strong
					class="me-auto">Alert</strong> <small class="text-muted">11
					mins ago</small>
				<button type="button" class="btn-close" data-bs-dismiss="toast"
					aria-label="Close"></button>
			</div>
			<div class="toast-body"> <%=message%>
			</div>
		</div>

		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	%>
</body>
</html>