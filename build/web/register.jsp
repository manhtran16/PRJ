<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f6f8fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            width: 400px;
        }

        table {
            width: 100%;
            border-spacing: 0;
        }

        td {
            padding: 10px 0;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="submit"] {
            margin-top: 15px;
            width: 100%;
            padding: 12px;
            background-color: #3498db;
            color: white;
            border: none;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #3498db;
        }

        h2 {
            text-align: center;
            color: red;
            margin-top: 20px;
        }

        p {
            text-align: center;
            font-size: 18px;
            margin-bottom: 20px;
            color: #333;
        }
    </style>
<%
String registerFirstName = (String) request.getAttribute("registerFirstName");
String registerLastName = (String) request.getAttribute("registerLastName");
String registerEmail = (String) request.getAttribute("registerEmail");
String registerPhone = (String) request.getAttribute("registerPhone");
String registerAddress = (String) request.getAttribute("registerAddress");
Integer registerStatus = (Integer) request.getAttribute("registerStatus");
%>
</head>
<body>
	<f:view>
		<p>Register side</p>

		<form action="auth" method="post">
            <table>
                <tbody>
                    <tr>
                        <td><label>User Name</label></td>
                        <td><input type="text" name="userName" required /></td>
                    </tr>
                    <tr>
                        <td><label>First Name</label></td>
                        <td><input type="text" name="firstName" required /></td>
                    </tr>
                    <tr>
                        <td><label>Last Name</label></td>
                        <td><input type="text" name="lastName" required /></td>
                    </tr>
                    <tr>
                        <td><label>Email</label></td>
                        <td><input type="text" name="email" required /></td>
                    </tr>
                    <tr>
                        <td><label>Phone</label></td>
                        <td><input type="text" name="phone" required /></td>
                    </tr>
                    <tr>
                        <td><label>Address</label></td>
                        <td><input type="text" name="address" required /></td>
                    </tr>
                    <tr>
                        <td><label>Password</label></td>
                        <td><input type="password" name="password" required /></td>
                    </tr>
                    <tr>
                        <td><label>Confirm Password</label></td>
                        <td><input type="password" name="confirmPassword" required /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" name="type" value="REGISTER" />
		</form>

		<h2>${requestScope.msg}</h2>
	</f:view>
</body>
</html>
