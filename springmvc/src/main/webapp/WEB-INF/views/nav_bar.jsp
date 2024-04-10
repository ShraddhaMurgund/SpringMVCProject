
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Navigation Page</title>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

/* Styling the navigation bar container */
#box {
    height: 50px;
    background-color: #333;
    border: 3px solid #333;
    display: flex; /* Use flexbox to align items */
    justify-content: space-between; /* Align items to the start and end of the container */
    align-items: center; /* Align items vertically */
    padding: 0 20px; /* Add padding to the sides */
}

/* Styling the navigation links */
nav {
    margin-top: 10px;
    width: 100%; /* Spanning the entire width of the screen */
}

a {
    height: 30px;
    background-color: #333;
    color: #fff;
    border-radius: 5px;
    padding: 10px 20px; /* Adjusting padding for better appearance */
    font-size: 18px;
    text-decoration: none;
    line-height: 30px;
    transition: background-color 0.3s; /* Adding smooth hover transition */
}

/* Changing link background color on hover */
a:hover {
    background-color: #555;
}
</style>
</head>
<body>
	<div id="box" align="center">
		<nav>
			<a href="add_page">ADD</a> <a href="cars">All CARS</a> <a
				href="my_cars">MY CARS</a> <a href="sign_out">SIGN OUT</a>
		</nav>
	</div>
</body>
</html>
