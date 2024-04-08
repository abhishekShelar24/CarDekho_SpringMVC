<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<style type="text/css">
body {
	padding: 0px;
	height: 100%;
	width: 100%;
	//background-image: url("car.jpg");
	//background-color: rgba(0, 0, 0, 0.1);
}

#box {
	width: 380px;
	height: 400px;
	margin: auto;
	margin-top: 100px;
	margin-right: 500px;
	border-radius: 35px;
	box-shadow: 0px 0px 4px rgba(0, 0, 300, 0.9);
}

#head {
	font-size: 30px;
	font-family: Cursive;
	color: blue;
}
.inp{
line-height: 70px;

}

.input {
	background-color: #f5f6f7;
	padding: 10px;
	width: 250px;
	margin-top: 10px;
	border-style: none;
	font-family: monospace;
	border-radius: 10px;
	box-shadow: 0px 0px 4px rgba(0, 0, 200, 0.7);
	border: none;
}

.input:hover {
	box-shadow: 4px 4px 4px rgba(0, 0, 200, 0.7);
}

#button {
	border:none;
	color: #fff;
	border-radius: 10px;
	padding: 10px;
	width: 75px;
	background-color: #1877f2;
	font-size: 15px;
	height: 36px;
	padding: 0px 16px;
	font-family: sans-serif;
	border-radius: 10px;
}
#button:hover{
	box-shadow: 4px 4px 4px rgba(0, 0, 200, 0.7);
}

#message {
	font-size: 25px;
}

#signin{
	margin-top: 80px;
	color: blue;
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
		<h3 id="head">Sign Up</h3>
		<form action="add_user" method="post">
			<div class="inp">
				<input class="input" type="text" name="email" required="required" autofocus="autofocus" placeholder="Enter Email">
			</div>
			<div class="inp">
				<input class="input" type="text" name="password" required="required" autofocus="autofocus" placeholder="Create New Password">
			</div>
			<div id="submit">
				<input id="button" type="submit" value="Sign up">
			</div>
		</form>
		<h3 id="signin">
			Do you want to <a href="sign_in">Sign in</a> ?
		</h3>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div>
		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	%>
</body>
</html>