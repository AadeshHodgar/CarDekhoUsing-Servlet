<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image:
		url("https://papers.co/wallpaper/papers.co-aa58-bmw-in-dark-car-art-29-wallpaper.jpg");
	color: #ffffff;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
	font-family: Arial, sans-serif;
}

.btn {
	background-color: red;
	color: white;
}
.btn:hover{
background-color: green;
}

#div {
	margin-top: 130px;
}

h1 {
	text-align: center;
	font-family: serif;
	border-bottom: 1px solid;
	box-shadow: 0px 0px 10px white;
	color: white;
	font-family: serif;
	margin-top: -3px;
}

header nav ul a {
	display: inline-block;
    background-color: red;
    color: white;
    padding: 8px 16px; 
    text-decoration: none;
    border-radius: 5px; 
    transition: background-color 0.3s;
}
nav{
 background-color: rgba(0, 0, 0, 0.5);
 padding: 10px;
 padding-left: 87%;

}
header nav ul a:hover{
background-color: green;

}

header nav ul li {
	text-decoration: none;
}

.msg {
	background-color: transparent;
	color: white;
	box-shadow: 0px 0px 5px green;
	font-family: serif;
	
}

#msg {
	color: green;
	
}
table{
box-shadow: 0px 0px 15px green;
}

</style>
</head>
<body>
	<header>
		<nav>
			<ul type="none">
				<li><a
					href="http://localhost:8080/cardekhowithservlet/Home.jsp">Back</a></li>
			</ul>
		</nav>
	</header>

	<h1>ADD CAR</h1>

	<div align="center" id="div">
		<h4>
			Add Car Details!!!
		</h4>
		<form action="add_car" method="post">
			<table border="1px solid" id="table2">
				<tr>
					<td><b>Id</b></td>
					<td><input type="text" name="id" class="msg"></td>
				</tr>
				<tr>
					<td><b>Name</b></td>
					<td><input type="text" name="name" class="msg"></td>
				</tr>
				<tr>
					<td><b>Brand</b></td>
					<td><input type="text" name="brand" class="msg"></td>
				</tr>
				<tr>
					<td><b>Price</b></td>
					<td><input type="text" name="price" class="msg"></td>
				</tr>
			</table>
			<input class="btn" type="submit" value="Click Here"> <input
				class="btn" type="reset" value="Reset Here">
		</form>
	</div>
	<%!String message;%>
	<%
	message = (String) request.getAttribute("message");
	%>
	<div align="center" id="msg">
		<%
		if (message != null) {
		%>
		<h4><%=message%></h4>
		<%
		}
		%>
	</div>
</body>
</html>