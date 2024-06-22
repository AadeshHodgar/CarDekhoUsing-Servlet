<%@page import="com.jspider.cardekhowithservlet.object.Car"%>
<%@page import="com.jspider.cardekhowithservlet.JDBC.CarJDBC"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CAR_DEKHO_MODIFY_CAR</title>
<link rel="stylesheet" type="text/css" href="styles.css">
<style type="text/css">
body {
	background-image:
		url("https://wp-s.ru/wallpapers/0/12/442939976073191/audi-in-the-dark-the-car-is-an-unusual-photo-beautiful-car-photo.jpg");
	color: #ffffff;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
	font-family: Arial, sans-serif;
}

.btn {
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

.cls {
	background-color: transparent;
	color: white;
	box-shadow: 0px 0px 5px green;
}

h1 {
	font-family: serif;
	border-bottom: 1px solid;
	box-shadow: 0px 0px 10px white;
	color: white;
	font-family: serif;
	margin-top: -3px;
}
h4{
font-family: serif;
}
.id1{
 background-color: red;
 color: white;
 font-family: sans-serif;
 width:50%;
}
#tbls{
width: 50%;
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

		<h1 id="bk" align="center">
			<b>MODIFY CAR</b>
		</h1>
		

	</header>

	<%
	List<Car> cars = CarJDBC.searchAllCars();
	if (cars != null && cars.size() > 0) {
	%>
	<div align="center">
		<table border="1px solid" id="tbls">
			<tr class="id1">
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

	<div align="center" id="div">
		<h4  align="center">
			<i>MODIFY CAR DETAILS</i>
		</h4>
		<form action="Modify_Car" method="post">
			<table border="1px solid">
				<tr>
					<td class="id2"><b>Id</b></td>
					<td><input type="text" name="id" value="" class="cls">
					</td>
				</tr>
				<tr>
					<td class="id2"><b>Name</b></td>
					<td><input type="text" name="name" value="" class="cls"></td>
				</tr>
				<tr>
					<td class="id2"><b>Brand</b></td>
					<td><input type="text" name="brand" value="" class="cls"></td>
				</tr>
				<tr>
					<td class="id2"><b>Price</b></td>
					<td><input type="text" name="price" value="" class="cls"></td>
				</tr>
			</table>
			<input class="btn" type="submit" value="Modify Car"> <input
				class="btn" type="reset" value="Reset">
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
