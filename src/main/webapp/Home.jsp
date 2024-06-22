<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
/* Reset CSS */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Body styles */
body {
	background-image:
		url("https://www.technocrazed.com/wp-content/uploads/2015/12/Audi-Wallpaper-28.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	font-family: Arial, sans-serif;
	line-height: 1.6;
	border: 1px solid;
}

/* Header styles */
header {
	background-color: transparent;
	color: white;
	padding: 20px;
	position: Sticky;
	border-bottom: 1px solid;
	border-left: none;
	border-right: none;
	box-shadow: 0px 0px 10px white;
}

header h1 {
	margin-bottom: 10px;
	text-align: center;
	font-size: 2.5em;
}

nav ul {
	list-style: none;
	display: flex;
	justify-content: end;
}

nav ul li {
	margin-right: 20px;
	text-align: right;
	padding: 4px;
}

nav ul li a {
	padding: 5px;
	color: white;
	background-color: black;
	text-decoration: none;
	box-shadow: 0px 0px 20px red;
	border-radius: 20px 20px;
}

/* Hero section styles */
.mid {
	height: 50vh;
	text-align: center;
	border-bottom: 1px solid;
	font-family: serif;
}

.mid h2 {
	margin-top: 110px;
	font-size: 2.5em;
	margin-bottom: 20px;
	color: white;
}

.mid p {
	font-size: 1.2em;
	color: white;
	margin-bottom: 20px;
}

.btn {
	display: inline-block;
	background-color: red;
	color: #fff;
	padding: 10px 20px;
	text-decoration: none;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.btn:hover {
	background-color: green;
}

.bn {
	width: 120px;
	height: 40px;
}
/* Footer styles */
footer {
	background-color: #333;
	color: #fff;
	margin-bottom: 1px;
	text-align: center;
	padding: 20px;
	margin-top: 180px;
}

#add {
	padding-left: 42%;
}

#find {
	color: white;
	display: inline-block;
	background-color: red;
	border: 5px white;
	border-radius: 5%;
	text-decoration: none;
}

#find:hover {
	background-color: green;
	text-decoration: none;
}
</style>
</head>
<body>
	<section class="mid">
		<h2>Welcome to Our Car Dekho Website</h2>
		<p>Find your dream car today!</p>
		<p>Sell your car today!</p>

		<button onclick="getAdd()">
			<a href="http://localhost:8080/cardekhowithservlet/add_car.jsp"
				class="btn">Add Car</a>
		</button>
		<button onclick="getModify()">
			<a href="http://localhost:8080/cardekhowithservlet/modify_car.jsp"
				class="btn">Modify Car</a>
		</button>
		<button onclick="getRemove()">
			<a href="http://localhost:8080/cardekhowithservlet/remove_car.jsp"
				class="btn">Remove Car</a>
		</button>
		<button onclick="getSearch()">
			<a href="http://localhost:8080/cardekhowithservlet/search_cars"
				class="btn">Search Car</a>
		</button>
		<div>
			<p text-align="center">
				<i>The <b>"Car Dekho" </b>facilitates users to manage car
					inventory by allowing them to
				</i>
			</p>
			<p text-align="center" font-family:serif;>add, view, edit, and
				delete car listings, providing a comprehensive platform for
				car-related operations.</p>
			<a ID="find"
				href="http://localhost:8080/cardekhowithservlet/search_cars">Click
				To Find </a>
		</div>
	</section>

	<div id="add"></div>
	<footer>
		<p>&copy; 2024 Car Selling Website</p>
	</footer>

	<script type="text/javascript">
		function getView() {
			window.location.href = 'ViewCar.jsp';
		}
	</script>

</body>
</html>