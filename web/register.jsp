<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Register</title>
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
		<!--kiem tra nhap day du thong tin bang javascript -->
		<!--se kien tra trung user name bang servlet  -->
		<!--Email,phone kiem tra format-->
		<form action="auth" method="post">
                    <table >
                        <tbody>
                            <tr>
                                <td><label>User Name</label></td>
                                <td><input type="text" name="userName" value=""required /></td>
                            </tr>
                            <tr>
                                <td><label>First Name</label></td>
                                <td><input type="text" name="firstName" value="" required /></td>
                            </tr>
                            <tr>
                                <td><label>Last Name</label></td>
                                <td><input type="text" name="lastName" value="" required /> </td>
                            </tr>
                            <tr>
                                <td><label>Email</label></td>
                                <td><input type="text" name="email" value="" required /></td>
                            </tr>
                            <tr>
                                <td><label>Phone</label></td>
                                <td><input type="text" name="phone" value="" required /></td>
                            </tr>
                            <tr>
                                <td><label>Address</label></td>
                                <td><input type="text" name="address" value="" required /></td>
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
                            
                        <input type="submit" name="type" value="REGISTER" /><br>
		</form>
		<h2 style="color: red">${requestScope.msg}</h2>
	</f:view>
</body>
</html>