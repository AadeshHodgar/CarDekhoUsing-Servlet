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
		url("https://png.pngtree.com/background/20230524/original/pngtree-audi-q7-advert-featuring-five-black-cars-with-christmas-decorations-picture-image_2714921.jpg");
	color: #ffffff;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
	font-family: Arial, sans-serif;
}

#tbl {
	color: white;
	margin-top: 50px;
	width: 50%;
}

.btn {
	background-color: red;
	color: white;
}

.btn:hover {
	background-color: green;
}

#ttl {
	color: white;
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

header nav ul a:hover {
	background-color: green;
}

nav {
	background-color: rgba(0, 0, 0, 0.5);
	padding: 10px;
	padding-left: 87%;
}

header nav ul li {
	text-decoration: none;
}

#table {
	width: 50%;
	background-color: red;
	color: white;
	font-family: serif;
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
	<%
	List<Car> cars = (List<Car>) request.getAttribute("cars");
	if (cars != null && cars.size() > 0) {
	%>
	<div align="center">

		<h1 id="ttl">View All Cars</h1>

		<table border="1px solid" id="tbl">
			<tr id="table">
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

		<h1>Car details unavailable</h1>

	</div>
	<%
	}
	%>
</body>
</html>