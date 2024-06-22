<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Selling Car</title>
<style type="text/css">
input {
	background-color: transparent;
	color: white;
	box-shadow: 0px 0px 5px green;
}

body {
	margin: 0;
	padding: 0;
	height: 100vh;
	background-image:
		url("https://a-static.besthdwallpaper.com/red-nissan-gtr-sports-car-on-concrete-flooring-wallpaper-3554x1999-26043_53.jpg");
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
}

#div {
	display: flex;
	justify-content: center;
	align-items: center;
}

.div {
	border: 1px solid white;
	padding: 40px;
	margin-top: 15%;
	border-radius: 40px 0px 40px;
	box-shadow: 0px 0px 0px black;
	margin-top: 10%;
}

h2 {
	text-align: center;
	color: green; /
	background-color: white;
	/
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	/*  border: 1px solid medium;*/
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="submit"] {
	width: 100%;
	background-color: green;
	color: white;
	padding: 14px 20px;
	margin: 12px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

input[type="submit"]:hover {
	background-color: red;
}

table {
	width: 100%;
}

th {
	color: white;
}

th, td {
	text-align: center;
}

#div1 {
	color: red;
}

button {
	background-color: navy;
}

button:hover {
	background-color: red;
}

#crt {
	color: white;
	padding-left: 30%;
}

h1 {
	color: green;
}

</style>
</head>
<body>
	<div id="div">
		<div class="div">
			<h2>Sign In</h2>
			<form action="login" method="post">
				<table>
					<tr>
						<th><label for="username">Username:</label></th>
						<td><input type="text" id="username" name="username"
							placeholder=" Enter Your Email"></td>
					</tr>
					<tr>
						<th><label for="password">Password:</label></th>
						<td><input type="password" id="password" name="password"
							placeholder="Enter your Password"></td>
					</tr>
				</table>
				<input type="submit" value="Log-In">
			</form>
			<a id="crt"
				href="http://localhost:8080/cardekhowithservlet/create_user.jsp">Create
				User Account</a>
		</div>
	</div>

	<%!String message;%>
	<%
	message = (String) request.getAttribute("message");
	%>
	<div align="center" id="div1">
		<%
		if (message != null) {
		%>
		<h4 style="color: red;"><%=message%></h4>
		<%
		}
		%>
	</div>

	<%
	if (message == "<h1>WELCOME</h1>") {
	%>

	<script type="text/javascript">
		getTransfer();
		function getTransfer() {
			window.location.href = 'Home.jsp';
		}
	</script>
	<%
	}
	%>
	


</body>
</html>