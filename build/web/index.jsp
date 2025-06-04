
<%-- 
    Document   : home
    Created on : Jun 3, 2025, 11:29:10 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <title>CLoth store</title>
        <style>
            nav {
                background-color: #cc66ff;
                padding: 10px 30px;
            }
        </style>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            />
        <!-- Google Fonts Roboto -->
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"
            />
        <!-- MDB -->
        <link rel="stylesheet" href="css/mdb.min.css" />
    </head>
    <body>
        <header>
            <!-- Navbar -->
            <nav>
                <a href="index.jsp">Trang chủ</a>
                <a href="products.jsp">Sản phẩm</a>
                <a href="about.jsp">Giới thiệu</a>
                <a href="login.jsp">Đăng nhập</a>
                <a href="register.jsp">Đăng ký</a>

            </nav>
            <nav class="navbar navbar-expand-lg bg-body">
                <div class="container-fluid">
                    <button
                        data-mdb-collapse-init
                        class="navbar-toggler"
                        type="button"
                        data-mdb-target="#navbarExample01"
                        aria-controls="navbarExample01"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                        >
                        <i class="fas fa-bars"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarExample01">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item active">
                                <h1 class="nav-link" style="color:rgb(3, 3, 89); font-size:large;"><strong>CLOTHES STORE</strong></h1>
                        </ul>
                        <ul class="navbar-nav d-flex flex-row">
                            <!-- Icons -->
                            <li class="nav-item me-3 me-lg-0">
                                <a class="nav-link" href="invoice.jsp">
                                    <span class="badge badge-pill bg-danger">1</span>
                                    <span><i class="fas fa-shopping-cart"></i></span>
                                </a>
                            </li>
                            <li class="nav-item me-3 me-lg-0">
                                <a class="nav-link" href="#">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                            <!-- Icon dropdown -->
                            <li class="nav-item me-3 me-lg-0 dropdown">
                                <a
                                    data-mdb-dropdown-init
                                    class="nav-link dropdown-toggle"
                                    href="#"
                                    id="navbarDropdown"
                                    role="button"
                                    aria-expanded="false"
                                    >
                                    <i class="fas fa-user"></i>
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li>
                                        <a class="dropdown-item" href="#">Action</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="#">Another action</a>
                                    </li>
                                    <li><hr class="dropdown-divider" /></li>
                                    <li>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Navbar -->

            <!-- Background image -->
            <div
                class="p-5 text-center bg-image"
                style="
                background-image: url('https://suno.vn/blog/wp-content/uploads/2016/10/denledphasowroom.jpg');
                height: 500px;
                "
                >
                <div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
                    <div class="d-flex justify-content-center align-items-center h-100">
                        <div class="text-white">
                            <h1 class="mb-3" style="color:red">SAFE CUỐI THÁNG</h1>
                            <h4 class="mb-3">SALE OFF 50%</h4>
                            <a data-mdb-ripple-init class="btn btn-outline-light btn-lg" href="#!" role="button"
                               >Call to action</a
                            >
                        </div>
                    </div>
                </div>
            </div>
            <!-- Background image -->
        </header>

        <!-- Categories -->
        <main class="mt-5">
            <div class="container">
                <nav class="navbar navbar-expand-lg bg-body-tertiary">
                    <div class="container-fluid">
                        <button
                            data-mdb-collapse-init
                            class="navbar-toggler"
                            type="button"
                            data-mdb-target="#navbarTogglerDemo01"
                            aria-controls="navbarTogglerDemo01"
                            aria-expanded="false"
                            aria-label="Toggle navigation"
                            >
                            <i class="fas fa-bars"></i>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                            <a class="navbar-brand" href="#">Loại</a>
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Trang phục nam</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Trang phục nữ</a
                                    >
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Trang phục trẻ em </a
                                    >
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"
                                       >Phụ kiện</a
                                    >
                                </li>
                            </ul>
                            <form class="d-flex input-group w-auto">
                                <input
                                    type="search"
                                    class="form-control"
                                    placeholder="Type query"
                                    aria-label="Search"
                                    />
                                <button
                                    data-mdb-ripple-init
                                    class="btn btn-outline-primary"
                                    type="button"
                                    data-mdb-ripple-color="dark"
                                    >
                                    Search
                                </button>
                            </form>
                        </div>
                    </div>
                </nav>

                <!-- Product section-->
                <section class="text-center mb-4">
                    <div class="row" style="margin-top:15px">
                        <div class="col-lg-4 col-md-12 mb-4">
                            <div class="card">
                                <div class="bg-image hover-overlay" data-mdb-ripple-init data-mdb-ripple-color="light">
                                    <img src="https://nocturnal.vn/wp-content/uploads/2025/05/Dark-blue-scaled.jpg" class="img-fluid"/>
                                    <a href="displayPro.jsp">
                                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <h6>320,000</h6>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#!" class="btn btn-primary" data-mdb-ripple-init>Thêm vào rỏ</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 mb-4">
                            <div class="card">
                                <div class="bg-image hover-overlay" data-mdb-ripple-init data-mdb-ripple-color="light">
                                    <img src="https://nocturnal.vn/wp-content/uploads/2024/10/1.jpg" class="img-fluid"/>
                                    <a href="#!">
                                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <h6>320,000</h6>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#!" class="btn btn-primary" data-mdb-ripple-init>Thêm vào rỏ</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 mb-4">
                            <div class="card">
                                <div class="bg-image hover-overlay" data-mdb-ripple-init data-mdb-ripple-color="light">
                                    <img src="https://nocturnal.vn/wp-content/uploads/2024/05/2-2-scaled.jpg" class="img-fluid"/>
                                    <a href="#!">
                                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <h6>320,000</h6>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#!" class="btn btn-primary" data-mdb-ripple-init>Thêm vào rỏ</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-12 mb-4">
                            <div class="card">
                                <div class="bg-image hover-overlay" data-mdb-ripple-init data-mdb-ripple-color="light">
                                    <img src="https://nocturnal.vn/wp-content/uploads/2024/05/1-1-1.jpg" class="img-fluid"/>
                                    <a href="#!">
                                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <h6>320,000</h6>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#!" class="btn btn-primary" data-mdb-ripple-init>Thêm vào rỏ</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 mb-4">
                            <div class="card">
                                <div class="bg-image hover-overlay" data-mdb-ripple-init data-mdb-ripple-color="light">
                                    <img src="https://nocturnal.vn/wp-content/uploads/2023/07/24-scaled.jpg" class="img-fluid"/>
                                    <a href="#!">
                                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <h6>320,000</h6>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#!" class="btn btn-primary" data-mdb-ripple-init>Thêm vào rỏ</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 mb-4">
                            <div class="card">
                                <div class="bg-image hover-overlay" data-mdb-ripple-init data-mdb-ripple-color="light">
                                    <img src="https://nocturnal.vn/wp-content/uploads/2025/04/111.jpg" class="img-fluid"/>
                                    <a href="#!">
                                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <h6>320,000</h6>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#!" class="btn btn-primary" data-mdb-ripple-init>Thêm vào rỏ</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </main>
        <footer class="text-center bg-body-tertiary">
            <!-- Grid container -->
            <div class="container pt-4">
                <!-- Section: Social media -->
                <section class="mb-4">
                    <!-- Facebook -->
                    <a
                        data-mdb-ripple-init
                        class="btn btn-link btn-floating btn-lg text-body m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-facebook-f"></i
                        ></a>

                    <!-- Twitter -->
                    <a
                        data-mdb-ripple-init
                        class="btn btn-link btn-floating btn-lg text-body m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-twitter"></i
                        ></a>

                    <!-- Google -->
                    <a
                        data-mdb-ripple-init
                        class="btn btn-link btn-floating btn-lg text-body m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-google"></i
                        ></a>

                    <!-- Instagram -->
                    <a
                        data-mdb-ripple-init
                        class="btn btn-link btn-floating btn-lg text-body m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-instagram"></i
                        ></a>

                    <!-- Linkedin -->
                    <a
                        data-mdb-ripple-init
                        class="btn btn-link btn-floating btn-lg text-body m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-linkedin"></i
                        ></a>
                    <!-- Github -->
                    <a
                        data-mdb-ripple-init
                        class="btn btn-link btn-floating btn-lg text-body m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-github"></i
                        ></a>
                </section>
                <!-- Section: Social media -->
            </div>
            <!-- Grid container -->

            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
                © 2020 Copyright:
                <a class="text-body" href="https://mdbootstrap.com/">Cloth store</a>
            </div>
            <!-- Copyright -->
        </footer>
    </body>
</html>


