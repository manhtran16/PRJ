<%-- 
    Document   : invoice
    Created on : Jun 3, 2025, 11:32:51 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Clothes store</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
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
            <a class="nav-link" aria-current="page" href="#">Trang chủ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Trang phục nam</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Trang phục nữ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Trang phục trẻ em</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Phụ kiện</a>
          </li>
        </ul>
        <ul class="navbar-nav d-flex flex-row">
      <!-- Icons -->
      <li class="nav-item me-3 me-lg-0">
        <a class="nav-link" href="#">
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
   
</header>

<main>
<div class="container py-5">
  <h2 class="text-center mb-5">Giỏ hàng của bạn</h2>
  <div class="row">
    <!-- Cart Items -->
    <div class="col-lg-8">
      <h5>Cart - 2 items</h5>

      <!-- Item 1 -->
      <div class="card mb-4">
        <div class="card-body d-flex align-items-center">
          <img src="https://nocturnal.vn/wp-content/uploads/2025/05/Dark-blue-scaled.jpg" class="img-fluid" style="width: 100px;" />
          <div class="ms-3 w-100">
            <h5>Ao thun</h5>
            <p class="text-muted mb-1">Color: blue</p>
            <p class="text-muted">Size: M</p>
            <div class="d-flex align-items-center">
              <button class="btn btn-sm btn-outline-primary me-2">-</button>
              <input type="number" class="form-control form-control-sm w-25 text-center" value="1" />
              <button class="btn btn-sm btn-outline-primary ms-2">+</button>
              <span class="ms-auto fw-bold">150,000</span>
            </div>
            <div class="mt-2">
              <button class="btn btn-sm btn-outline-info me-2"><i class="fa-solid fa-trash"></i></button>
              <button class="btn btn-sm btn-outline-danger"><i class="fa-solid fa-heart"></i></button>
            </div>
          </div>
        </div>
      </div>

      <!-- Item 2 -->
      <div class="card mb-4">
        <div class="card-body d-flex align-items-center">
          <img src="https://nocturnal.vn/wp-content/uploads/2024/10/1.jpg" class="img-fluid" style="width: 100px;" />
          <div class="ms-3 w-100">
            <h5>Red hoodie</h5>
            <p class="text-muted mb-1">Màu: red</p>
            <p class="text-muted">Cỡ: M</p>
            <div class="d-flex align-items-center">
              <button class="btn btn-sm btn-outline-primary me-2">-</button>
              <input type="number" class="form-control form-control-sm w-25 text-center" value="1" />
              <button class="btn btn-sm btn-outline-primary ms-2">+</button>
              <span class="ms-auto fw-bold">160,000</span>
            </div>
            <div class="mt-2">
              <button class="btn btn-sm btn-outline-info me-2"><i class="fa-solid fa-trash"></i></button>
              <button class="btn btn-sm btn-outline-danger"><i class="fa-solid fa-heart"></i></button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Summary -->
    <div class="col-lg-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Tổng</h5>
          <ul class="list-group list-group-flush mb-3">
            <li class="list-group-item d-flex justify-content-between">
              <span>Sản phẩm</span>
              <strong>310,000</strong>
            </li>
            <li class="list-group-item d-flex justify-content-between">
              <span>Phí vận chuyển</span>
              <strong>Miễn phí</strong>
            </li>
            <li class="list-group-item d-flex justify-content-between">
              <span>Tổng (incl. VAT)</span>
              <strong>310,000</strong>
            </li>
          </ul>
          <button class="btn btn-primary w-100">GO TO CHECKOUT</button>
        </div>
      </div>
    </div>
  </div>
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
    <a class="text-body" href="#">Clothestore.com</a>
  </div>
  <!-- Copyright -->
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

