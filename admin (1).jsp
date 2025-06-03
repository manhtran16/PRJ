
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ClothesShop - Admin Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f6f9;
        }
        .user-info {
            position: absolute;
            top: 10px;
            right: 30px;
            color: white;
            font-size: 16px;
            font-weight: 500;
        }
        header {
            background: linear-gradient(90deg, #333, #555);
            color: white;
            padding: 15px 30px;
            position: relative;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        header h1 {
            margin: 0;
            font-size: 28px;
            font-weight: 700;
        }
        nav {
            background-color: #444;
            padding: 12px 30px;
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
        }
        nav a {
            color: white;
            text-decoration: none;
            margin-right: 25px;
            font-weight: 500;
            transition: color 0.3s;
        }
        nav a:hover {
            color: #3498db;
        }
        .content {
            padding: 40px;
            max-width: 1200px;
            margin: auto;
        }
        h2 {
            text-align: center;
            color: #2c3e50;
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 30px;
        }
        .dashboard {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            animation: fadeIn 0.5s ease-in;
        }
        .section {
            background: white;
            border-radius: 10px;
            padding: 25px;
            width: 300px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .section:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
        }
        .section h3 {
            margin-top: 0;
            color: #2c3e50;
            font-size: 20px;
            font-weight: 700;
        }
        .section p {
            color: #666;
            font-size: 14px;
            margin: 10px 0;
        }
        .section a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 500;
            transition: background-color 0.3s;
        }
        .section a:hover {
            background-color: #2980b9;
        }
        footer {
            background: linear-gradient(90deg, #333, #555);
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
            font-size: 14px;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }
        @media (max-width: 768px) {
            .content {
                padding: 20px;
            }
            .section {
                width: 100%;
                max-width: 400px;
            }
            nav a {
                margin-right: 15px;
                font-size: 14px;
            }
            .user-info {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <header>
        <h1>ClothesShop - Admin</h1>
        <div class="user-info">
            <h2>${sessionScope.user}</h2>
        </div>
    </header>

    <nav>
        <a href="userhome.jsp">Trang chủ</a>
        <a href="products.jsp">Sản phẩm</a>
        <a href="about.jsp">Giới thiệu</a>
        <a href="admin.jsp">Quản trị</a>
        <a href="home.jsp">Đăng xuất</a>
    </nav>

    <div class="content">
        <h2>Admin Dashboard</h2>
        <div class="dashboard">
            <div class="section">
                <h3>Quản lý sản phẩm</h3>
                <p>Xem, thêm, sửa, xóa sản phẩm.</p>
                <a href="manage-products.jsp">Vào quản lý</a>
            </div>
            <div class="section">
                <h3>Quản lý người dùng</h3>
                <p>Quản lý thông tin người dùng, phân quyền.</p>
                <a href="manage-users.jsp">Vào quản lý</a>
            </div>
            <div class="section">
                <h3>Quản lý đơn hàng</h3>
                <p>Xem và xử lý các đơn hàng.</p>
                <a href="manage-orders.jsp">Vào quản lý</a>
            </div>
        </div>
    </div>

    <footer>
        © 2025 ClothesShop
    </footer>

</body>
</html>