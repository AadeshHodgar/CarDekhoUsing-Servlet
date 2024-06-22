<%@page import="com.jspider.cardekhowithservlet.JDBC.CarJDBC"%>
<%@page import="com.jspider.cardekhowithservlet.object.Car"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image:
		url("https://images.wallpaperscraft.com/image/single/audi_car_black_164931_1280x720.jpg");
	color: #ffffff;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
	font-family: Arial, sans-serif;
}

#btn {
	background-color: red;
	color: #ffffff;
}
.btn:hover{
background-color: green;
}

#msg {
	color: green;
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
header nav ul a:hover{
background-color: green;
}
nav{
 background-color: rgba(0, 0, 0, 0.5);
 padding: 10px;
 padding-left: 87%;

}

header nav ul li {
	text-decoration: none;
}

#inp {
	background-color: transparent;
	color: white;
	box-shadow: 0px 0px 5px green;
}

#tbls {
	width: 50%;
	background-color: red;
	color: white;
	font-family: serif;
}

.table1 {
	width: 50%;
}

h1 {
	font-family: serif;
	border-bottom: 1px solid;
	box-shadow: 0px 0px 10px white;
	color: white;
	font-family: serif;
	margin-top: -3px;
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

	<h1 align="center">
		<i>Remove Car</i>
	</h1>
	
	<%
	List<Car> cars = CarJDBC.searchAllCars();
	if (cars != null && cars.size() > 0) {
	%>
	<div align="center">
		<table border="1px solid" class="table1">
			<tr id="tbls">
				<th>Id</th>
				<th>Name</th>
				<th>Brand</th>
				<th>Price</th>
			</tr>
			<%
			for (Car car : cars) {
			%>
			<tr>
				<td><%=car.getId()%></td>
				<td><%=car.getName()%></td>
				<td><%=car.getBrand()%></td>
				<td><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h4>Car details unavailable</h4>
	</div>
	<%
	}
	%>
	<br>
	<div align="center">
		<form action="Remove_Car" method="post">
			<table border="1px solid">
				<tr>
					<td>id</td>
					<td><input type="text" name="id" id="inp"></td>
				</tr>
			</table>
			<input id="btn" type="submit" value="DELETE">
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