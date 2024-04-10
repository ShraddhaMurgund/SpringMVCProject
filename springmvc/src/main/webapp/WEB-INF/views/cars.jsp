
<%@page import="com.jspiders.springmvc.dto.CarDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Cars Page</title>
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    #box {
        background-color: #333;
        font-size: 20px;
        font-weight: bold;
        height: 50px;
        border: 2px solid;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 20px;
    }

    form {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    label {
        color: #fff;
        margin-right: 10px;
    }

    input[type="text"] {
        height: 35px;
        width: 200px;
        background-color: #fff;
        border: 1px solid #333;
        padding: 5px;
        border-radius: 5px;
    }

    #button {
        height: 35px;
        width: 100px;
        background-color: black;
        color: #ccc;
        border-radius: 5px;
        font-size: 15px;
        cursor: pointer;
        border: none;
    }

    #button:hover {
        background-color: #666;
    }

    #message {
        font-size: 40px;
        text-align: center;
        margin-bottom: 20px;
    }

    .table-container {
        margin: 0 auto;
        width: 80%;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 10px;
        text-align: center;
        border: 1px solid #333;
    }

    th {
        background-color: #333;
        color: #fff;
        font-size: 20px;
    }

    td {
        background-color: #f9f9f9;
        font-size: 18px;
    }

    a {
        text-decoration: none;
        color: blue;
    }

    a:hover {
        text-decoration: underline;
    }
</style></head>
<body>
	<div id="box">
		<form action="search" method="post">
			<label>Low price</label> <input type="text" name="low"
				required="required"> <label>High price</label> <input
				type="text" name="high" required="required"> <input
				id="button" type="submit" value="SEARCH">
		</form>
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
	@SuppressWarnings("unchecked")
	List<CarDTO> cars = (List<CarDTO>) request.getAttribute("cars");
	if (cars != null) {
	%>
	<div align="center">
		<table id="table">
			<tr>
				<td class="head">Id</td>
				<td class="head">Name</td>
				<td class="head">Brand</td>
				<td class="head">Price</td>
			</tr>
			<%
			for (CarDTO car : cars) {
			%>
			<tr>
				<td class="data"><%=car.getId()%></td>
				<td class="data"><%=car.getName()%></td>
				<td class="data"><%=car.getBrand()%></td>
				<td class="data"><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	}
	%>
	<div align="center">
		<h3>
			Do you want to go to <a href="home">Home Page</a> ?
		</h3>
	</div>
</body>
</html>
