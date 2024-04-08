<%@page import="com.jspiders.spring_mvc.dto.CarDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cars Page</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<style type="text/css">
#head {
	font-size: 30px;
	font-family: Cursive;
	color: blue;
}

.box {
	width: 600px;
	margin-top: 40px;
	box-shadow: 0px 0px 3px rgba(0, 0, 300, 0.9);
}
</style>
</head>
<body>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	@SuppressWarnings("unchecked")
	List<CarDTO> cars = (List<CarDTO>) request.getAttribute("cars");
	if (cars != null) {
	%>
	<div align="center">
		<h3 id="head">My Car Detail</h3>
		<div class="box">
		<table
			class="table table-striped table-hover table-bordered border-danger"
			id="table">
			<tr class="font-monospace">
				<td class="fw-bold">Id</td>
				<td class="fw-bold">Name</td>
				<td class="fw-bold">Brand</td>
				<td class="fw-bold">Price</td>
				<td class="fw-bold" colspan="2">Action</td>
			</tr>
			<%
			for (CarDTO car : cars) {
			%>
			<tr class="font-monospace">
				<td class="fw-bold"><%=car.getId()%></td>
				<td class="data"><%=car.getName()%></td>
				<td class="data"><%=car.getBrand()%></td>
				<td class="data"><%=car.getPrice()%></td>
				<td class="data">
					<form action="delete_car" method="post">
						<input type="text" name="id" value="<%=car.getId()%>"
							hidden="true">
						<button class="action" type="submit">
							<i class="fas fa-trash-alt"></i>
						</button>
					</form>
				</td>
				<td class="data">
					<form action="edit_car" method="post">
						<input type="text" name="id" value="<%=car.getId()%>"
							hidden="true">
						<button class="action" type="submit">
							<i class="fas fa-edit"></i>
						</button>
					</form>
				</td>
			</tr>
			<%
			}
			%>
		</table>
		</div>
	</div>
	<%
	}
	%>
	<div align="center">
		<h3>
			Do you want to go to <a href="home">Home Page</a> ?
		</h3>
	</div>
</body>
</html>