<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create User</title>
<style type="text/css">
body {
	background-image:
		url("https://png.pngtree.com/background/20230524/original/pngtree-audi-q7-advert-featuring-five-black-cars-with-christmas-decorations-picture-image_2714921.jpg");
	color: #ffffff;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
	font-family: Arial, sans-serif;
}

.btn {
	background-color: green;
	color: white;
}
.btn:hover{
background-color: red;
}

.inp1 {
	background-color: transparent;
	color: white;
	box-shadow: 0px 0px 5px green;
}

.tbl1 {
	margin-top: 10%;
}

h1 {
	font-family: serif;
	border-bottom: 1px solid;
	box-shadow: 0px 0px 10px white;
	color: green;
	margin-top: 5px;
}

header nav ul a {
	display: inline-block;
    background-color: green;
    color: white;
    padding: 8px 16px; 
    text-decoration: none;
    border-radius: 5px; 
    transition: background-color 0.3s;
}
header nav ul a:hover{
background-color: red;
}


header nav ul li {
	text-decoration: none;
}
nav{
 background-color: rgba(0, 0, 0, 0.5);
 padding: 10px;
 padding-left: 87%;

}
</style>
</head>
<body>
	<header>
		<nav>
			<ul type="none">
				<li><a
					href="http://localhost:8080/cardekhowithservlet/startApp.jsp">Back</a></li>
			</ul>
		</nav>

	</header>
	<h1 align="center">Create User</h1>
	<div align="center">
		<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if (email != null && !email.isEmpty() && password != null && !password.isEmpty()) {
			out.println("<h2> Successfully Created User </h2>");
			out.println("<p>Email: " + email + "</p>");
			out.println("<p>password: " + password + "</p>");

		}
		%>
	</div>
	<div class="brd" align="center">
		<form action="User_Create" method="post">
			<table border="1px solid" class="tbl1">
				<tr class="tbl">
					<td><label for="email">Email:</label></td>
					<td><input type="email" id="email" name="email" required
						class="inp1" placeholder="Enter your Email"><br></td>
				</tr>
				<tr class="tbl">
					<td><label for="password">Password:</label></td>
					<td><input type="password" id="password" name="password"
						required class="inp1" placeholder="Enter Your Password"><br></td>
				</tr>
			</table>
			<input type="submit" value="Create User" class="btn">

		</form>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center" id="msg">
		<h4><%=message%></h4>
	</div>
	<%
	}
	%>
</body>
</html>
