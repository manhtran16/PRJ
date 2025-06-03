<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Product Management</title>
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
        <div class="content">
            <h1>Product Management</h1>
            <a href="add_product.jsp">Add Product</a>
            <a href="update_product.jsp">Update Product</a>
        </div>
    </body>
</html>
