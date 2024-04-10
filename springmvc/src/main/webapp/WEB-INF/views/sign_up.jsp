
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Page</title>
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    #box {
        border: 3px solid #333;
        height: 340px;
        width: 440px;
        background-color: #333;
        margin: 140px auto;
        padding: 20px;
        border-radius: 10px;
        text-align: center;
    }

    #head {
        font-size: 30px;
        color: #fff;
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
        color: #fff;
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
        transition: background-color 0.3s;
    }

    #button:hover {
        background-color: #333;
    }

    a {
        text-decoration: none;
        color: white;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
	<div id="box" align="center">
		<h3 id="head">Sign Up</h3>
		<form action="add_user" method="post">
			<table>
				<tr>
					<td class="label">Email</td>
					<td><input class="input" type="text" name="email"
						required="required" autofocus="autofocus"></td>
				</tr>
				<tr>
					<td class="label">Password</td>
					<td><input class="input" type="text" name="password"
						required="required"></td>
				</tr>
			</table>
			<input id="button" type="submit" value="Sign Up">
		</form>
		<h3>
			Do you want to <a href="sign_in">Sign in</a> ?
		</h3>
	</div>
</body>
</html>
