<!-- TODO Directory -->

<!-- <div class="mt-4 container">
    <div class="row">
      <div class="col-12">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Di động</a></li>
            <li class="breadcrumb-item"><a href="#">Điện thoại thông minh</a></li>

            <li class="breadcrumb-item active" aria-current="page">Galaxy Z Flip4 Bespoke Studio</li>
          </ol>
        </nav>
      </div>
    </div>
  </div> -->

<div class="container mt-4">
    <div class="row">
        <!-- Product image slide -->
        <div class="col-md-5 col-12">
            <div id="productSlide" class="carousel slide" data-bs-ride="true">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="/static/image/galaxy_z_flip4_bespoke_studio/0.png" class="img-fluid d-block w-100">
                    </div>
                    <div class="carousel-item">
                        <img src="/static/image/galaxy_z_flip4_bespoke_studio/1.png" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                        <img src="/static/image/galaxy_z_flip4_bespoke_studio/2.jpg" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                        <img src="/static/image/galaxy_z_flip4_bespoke_studio/3.png" class="d-block w-100">
                    </div>
                </div>

                <div id="productThumbnails" class="row mt-4 gap-1">
                    <div class="col" data-bs-target="#productSlide" data-bs-slide-to="0">
                        <img class="img-fluid" src="/static/image/galaxy_z_flip4_bespoke_studio/0.png">
                    </div>
                    <div class="col" data-bs-target="#productSlide" data-bs-slide-to="1">
                        <img class="img-fluid" src="/static/image/galaxy_z_flip4_bespoke_studio/1.png">
                    </div>
                    <div class="col" data-bs-target="#productSlide" data-bs-slide-to="2">
                        <img class="img-fluid" src="/static/image/galaxy_z_flip4_bespoke_studio/2.jpg">
                    </div>
                    <div class="col" data-bs-target="#productSlide" data-bs-slide-to="3">
                        <img class="img-fluid" src="/static/image/galaxy_z_flip4_bespoke_studio/3.png">
                    </div>
                </div>
            </div>
        </div>

        <!-- Product name, description, order button, ... -->
        <div class="col-md-7 col-12">
            <div class="ps-lg-10 mt-6 mt-md-0">
                <a href="#!" class="mb-4 d-block">Điện thoại thông minh</a>

                <h1 class="mb-1 fw-semibold"><?php echo $prod->name ?></h1>

                <div class="fs-4">
                    <span class="fw-bold text-dark"><?php echo (number_format($prod->price) . " VNĐ"); ?></span>
                    <!-- TODO Discount -->
                    <!-- <span class="text-decoration-line-through text-muted">$35</span>
            <span><small class="fs-6 ms-2 text-danger">26% Off</small></span> -->
                </div>

                <hr class="my-6">

                <div>
                    <label for="quantity" class="form-label">Số lượng</label>
                    <input type="number" step="1" min="1" value="1" name="quantity" class="form-control w-25">
                </div>

                <div class="mt-6 row justify-content-start gap-2 align-items-center">
                    <div class="col-md-4 col-12 d-grid">
                        <button type="button" class="btn btn-primary">
                            <i class="bi bi-cart me-2"></i>
                            Thêm vào giỏ hàng
                        </button>
                    </div>

                    <a class="col-md-1 col-12 btn btn-light" data-bs-toggle="tooltip" data-bs-html="true" aria-label="Wishlist">
                        <i class="bi bi-heart"></i>
                    </a>

                    <div class="col-md-4 col-12">
                        <div class="dropdown">
                            <a class="btn btn-outline-secondary dropdown-toggle w-100" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Share
                            </a>

                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#"><i class="bi bi-facebook me-2"></i>Facebook</a></li>
                                <li><a class="dropdown-item" href="#"><i class="bi bi-twitter me-2"></i>Twitter</a></li>
                                <li><a class="dropdown-item" href="#"><i class="bi bi-instagram me-2"></i>Instagram</a></li>
                            </ul>
                        </div>
                    </div>

                </div>

                <hr class="my-6">

                <div>
                    <table class="table table-borderless">
                        <tbody>
                            <tr>
                                <td>Tên sản phẩm</td>
                                <td><?php echo ($prod->name); ?></td>
                            </tr>

                            <tr>
                                <td>Tình trạng tồn kho</td>
                                <td>Còn hàng</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>