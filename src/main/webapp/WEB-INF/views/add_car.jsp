<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Page</title>
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

span {
	font-family: Cursive;
}

#button {
	border: none;
	background-color: #1877f2;
	color: #fff;
	border-radius: 10px;
	padding: 10px;
	width: 65px;
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
	<div id="box" align="center">
		<h3 id="head">Add Car Details</h3>
		<form action="add_car" method="post">
			<div class="inp">
				<span>Name :</span> <input class="input" type="text" name="name"
					required="required" autofocus="autofocus"
					placeholder="Enter Car Name">
			</div>
			<div class="inp">
				<span>Brand :</span> <input class="input" type="text" name="brand"
					required="required" autofocus="autofocus"
					placeholder="Enter Brand Name">
			</div>
			<div class="inp">
				<span>Price :</span> <input class="input" type="text" name="price"
					required="required" autofocus="autofocus" placeholder="Enter Price">
			</div>
			<input id="button" type="submit" value="ADD">
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
		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	%>
</body>
</html>