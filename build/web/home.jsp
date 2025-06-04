<%-- 
    Document   : home.jsp
    Created on : Jun 1, 2025, 9:51:35 PM
    Author     : manht
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ClothesShop - Trang chủ</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px 30px;
        }
        header h1 {
            margin: 0;
        }
        nav {
            background-color: #444;
            padding: 10px 30px;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin-right: 20px;
        }
        .banner {
            background-image: url("images/banner.jpg");
            background-size: cover;
            background-position: center;
            height: 300px;
            color: black;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 32px;
            font-weight: bold;
        }
        .content {
            padding: 30px;
        }
        .products {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-around;
        }
        .product {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px;
            width: 200px;
            text-align: center;
        }
        .product img {
            width: 100%;
            height: auto;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }
    </style>
</head>
<body>

    <header>
        <h1>ClothesShop</h1>
    </header>

    <nav>
        <a href="home.jsp">Trang chủ</a>
        <a href="products.jsp">Sản phẩm</a>
        <a href="about.jsp">Giới thiệu</a>
        <a href="login.jsp">Đăng nhập</a>
        <a href="register.jsp">Đăng ký</a>
        
    </nav>

    <div class="banner">
        Thời trang cho mọi phong cách!
    </div>

    <div class="content">
        <h2>Sản phẩm nổi bật</h2>
        <div class="products">
            <div class="product">
                <img src="images/ao-thun.jpg" alt="Áo thun">
                <h3>Áo thun nam</h3>
                <p>Giá: 200.000₫</p>
            </div>
            <div class="product">
                <img src="images/quan-jean.jpg" alt="Quần jean">
                <h3>Quần jean nữ</h3>
                <p>Giá: 350.000₫</p>
            </div>
            <div class="product">
                <img src="images/ao-somi.jpg" alt="Áo sơ mi">
                <h3>Áo sơ mi công sở</h3>
                <p>Giá: 300.000₫</p>
            </div>
        </div>
    </div>

    <footer>
        &copy; 2025 ClothesShop. Bản quyền thuộc về ManhT.
    </footer>

</body>
</html>