<?php
session_start();
?>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="/">TIENTRIS</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" href="/">Home</a>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#">
                        Di động
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Điện thoại thông minh</a></li>
                        <li><a class="dropdown-item" href="#">Máy tính bảng</a></li>
                        <li><a class="dropdown-item" href="#">Đồng hồ thông minh</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#">
                        TV & AV
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">TV</a></li>
                        <li><a class="dropdown-item" href="#">Thiết bị nghe nhìn</a></li>
                        <li><a class="dropdown-item" href="#">Máy chiếu</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown" style="margin-right: 100px;">
                    <a class="nav-link" href="#">
                        Gia dụng
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Tủ lạnh</a></li>
                        <li><a class="dropdown-item" href="#">Máy giặt</a></li>
                        <li><a class="dropdown-item" href="#">Máy hút bụi</a></li>
                    </ul>
                </li>
                <form class="d-flex ">
                    <input type="search" id="form1" class="form-control" placeholder="Nhập tên sản phẩm" />
                    <label class="form-label" for="form1"></label>
                    <button type="button" class="btn btn-primary btn-search">
                        <i class="bi bi-search"></i>
                    </button>
                </form>
            </ul>

            <ul class="navbar-nav sm-icons">
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="bi bi-cart-fill" style="font-size: 25px;"></i>
                    </a>
                </li>

                <!-- User login/register/logout -->
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#">
                        <i class="bi bi-person-circle me-1" style="font-size: 25px;"></i>
                        <?php
                        if (!empty($_SESSION['username'])) {
                            echo $_SESSION['username'];;
                        }
                        ?>
                    </a>

                    <ul class="dropdown-menu">
                        <?php
                        if (!empty($_SESSION['username'])) {
                            echo '<li><a class="dropdown-item" href="/controllers/logout.ctl.php">Đăng xuất</a></li>';
                        } else {
                            echo '<li><a class="dropdown-item" href="/login.php">Đăng nhập</a></li>
                            <li><a class="dropdown-item" href="/register.php">Đăng kí</a></li>';
                        }
                        ?>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>