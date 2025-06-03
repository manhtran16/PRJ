<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Admin Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }

    h1 {
        background-color: #333;
        color: #fff;
        text-align: center;
        padding: 20px 0;
        margin: 0;
    }

    .content {
        display: flex;
        flex-direction: column;
        align-items: stretch;
        margin-top: 40px;
        gap: 15px;
    }

    .content a {
        text-decoration: none;
        font-size: 18px;
        color: #fff;
        background-color: #9999ff;
        padding: 12px 24px;
        border-radius: 0;
        width: 100%;
        text-align: left;
        transition: background-color 0.3s;
        box-sizing: border-box;
    }

    .content a:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
	<f:view>
		<h1>Admin Side</h1>
		<div class="content">
			<a href="../index.jsp">User Home</a> 
            <a href="product_management.jsp">Product Management</a> 
            <a href="BrandManagement">Brand Management</a> 
            <a href="SpecificationManagment">Specification Management</a> 
            <a href="TypeManagement">Type Management</a> 
            <a href="#">Statistics</a>
		</div>
	</f:view>
</body>
</html>
