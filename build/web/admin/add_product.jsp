<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Add Product</title>
<!--Add js in head tag  -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 20px;
    }

    h1 {
        background-color: #333;
        color: #fff;
        text-align: center;
        padding: 20px 0;
        margin: 0;
    }

    .product-form {
        max-width: 800px;
        margin: 0 auto;
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: bold;
    }

    input[type="text"],
    select {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .form-group > a,
    button[type="button"] {
        margin-top: 10px;
        display: inline-block;
        background-color: #9999ff;
        color: white;
        padding: 6px 12px;
        text-decoration: none;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 14px;
    }

    .form-group > a:hover,
    button[type="button"]:hover {
        background-color: #9999ff;
    }

    .submit-button {
        width: 100%;
        padding: 12px;
        background-color: #9999ff;
        color: white;
        border: none;
        font-size: 18px;
        border-radius: 4px;
        cursor: pointer;
        margin-top: 20px;
    }

    .submit-button:hover {
        background-color: #9999ff;
    }

    .alert-danger {
        color: red;
        font-weight: bold;
        margin-bottom: 20px;
        text-align: center;
    }

    .dynamic-field {
        margin-bottom: 10px;
    }
</style>

</head>
<body>
	<h1>Add Product</h1>
	<c:if test="${not empty error}">
		<div class="alert alert-danger">${error}</div>
	</c:if>

	<f:view>
		<form action="AddProduct" method="post" class="product-form">
			<div class="form-group">
				<label for="productName">Product Name</label> <input type="text"
					id="productName" name="productName"
					placeholder="Enter product name" required />
			</div>
			<div class="form-group">
				<label for="productQuantity">Quantity</label> <input type="text"
					id="productQuantity" name="productQuantity"
					placeholder="Enter product quantity" pattern="^[1-9][0-9]*$"
					title="Please enter a valid positive integer" required />
			</div>
			<div class="form-group">
				<label for="productDescription">Description</label> <input
					type="text" id="productDescription" name="productDescription"
					placeholder="Enter product description" required />
			</div>
			<div class="form-group">
				<label for="productPrice">Price</label> <input type="text"
					id="productPrice" name="productPrice"
					placeholder="Enter product price" pattern="^\d+(\.\d{1,2})?$"
					title="Enter a valid price (e.g., 100 or 100.99)" required />
			</div>
			<div class="form-group">
				<label for="productBrand">Brand</label> <select id="productBrand"
					name="productBrand" required>
					<c:forEach var="brand" items="${brandList}">
						<option value="${brand.brandID}">${brand.brandName}</option>
					</c:forEach>
				</select> <a href="BrandManagement">Add new brand</a>
			</div>
			<div class="form-group">
				<label for="productType">Type</label>
				<div id="typeFields">
					<select id="productType" name="productType" required>
						<c:forEach var="type" items="${typeList}">
							<option value="${type.typeID}">${type.typeName}</option>
						</c:forEach>
					</select>
				</div>
				<button type="button" onclick="addField('type')">More types</button>
				<a href="TypeManagement">Add new type</a>
				<!-- Placeholder for additional types -->
			</div>
			<div class="form-group">
				<label for="productSpecification">Specifications</label>
				<div id="specificationFields">
					<div id="specificationInfo">
						<select id="productSpecification" name="productSpecification"
							required>
							<c:forEach var="spec" items="${specificationList}">
								<option value="${spec.specID}">${spec.specName}</option>
							</c:forEach>
						</select> <label>Specification Product</label> <input type="text"
							name="specProduct" /> <label>Specification Value</label> <input
							type="text" name="specValue" pattern="^\d+(\.\d{1,2})?$" />
					</div>
				</div>
				<button type="button" onclick="addField('specification')">
					More specifications</button>
				<a href="SpecificationManagment">Add new specification</a>
				<!-- Placeholder for additional specifications -->
			</div>
			<div class="form-group">
				<label for="productImage">Image</label>
				<div id="imageFields">
					<input type="text" id="productImage" name="productImage"
						accept="image/*" required />
					<button type="button" onclick="addField('image')">More
						images</button>
					<!-- Placeholder for additional images -->
				</div>
				<button type="submit" class="submit-button">Add Product</button>
		</form>
	</f:view>
</body>
</html>
