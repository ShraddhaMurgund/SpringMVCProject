
<%@page import="com.jspiders.springmvc.dto.CarDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Page</title>
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    #box {
        border: 3px solid #333;
        height: 410px;
        width: 440px;
        background-color: #ccc;
        margin: 140px auto;
        padding: 20px;
        border-radius: 10px;
        text-align: center;
    }

    #head {
        font-size: 30px;
        margin-bottom: 20px;
    }

    .input {
        background-color: #fff;
        border: 1px solid #333;
        padding: 10px;
        width: 250px;
        margin-top: 10px;
    }

    .label {
        font-size: 20px;
        padding-top: 10px;
    }

    #button {
        border: none;
        background-color: black;
        color: gray;
        border-radius: 5px;
        padding: 10px 20px;
        margin-top: 20px;
        font-size: 15px;
        cursor: pointer;
    }

    #button:hover {
        background-color: #333;
    }

    #message {
        font-size: 25px;
        margin-top: 20px;
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
	<%
	CarDTO car = (CarDTO) request.getAttribute("car");
	%>
	<div id="box" align="center">
		<h3 id="head">Update Car Details</h3>
		<form action="update_car" method="post">
			<table>
				<tr>
					<td class="label">Id</td>
					<td><input class="input" type="text" name="id"
						value="<%=car.getId()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td class="label">Name</td>
					<td><input class="input" type="text" name="name"
						value="<%=car.getName()%>" required="required"></td>
				</tr>
				<tr>
					<td class="label">Brand</td>
					<td><input class="input" type="text" name="brand"
						value="<%=car.getBrand()%>" required="required"></td>
				</tr>
				<tr>
					<td class="label">Price</td>
					<td><input class="input" type="text" name="price"
						value="<%=car.getPrice()%>" required="required"></td>
				</tr>
			</table>
			<input id="button" type="submit" value="UPDATE">
		</form>
		<h3>
			Do you want to go to <a href="home">Home Page</a> ?
		</h3>
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
	%>
</body>
</html>
