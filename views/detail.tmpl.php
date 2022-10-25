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
                    <?php
                    $carouselItem = '
                    <div class="carousel-item %s">
                        <img src="%s" class="d-block w-100">
                    </div>';

                    foreach ($images as $i => $image) {
                        // Only put 'active' CSS class on the first carousel item
                        echo (sprintf($carouselItem, $i == 0 ? 'active' : '', $image['url']));
                    }
                    ?>
                </div>

                <div id="productThumbnails" class="row mt-4 gap-1">
                    <?php
                    $carouselThumb = '
                    <div class="col" data-bs-target="#productSlide" data-bs-slide-to="%d">
                        <img class="img-fluid" src="%s">
                    </div>';

                    foreach ($images as $i => $image) {
                        echo (sprintf($carouselThumb, $i, $image['url']));
                    }
                    ?>
                </div>
            </div>
        </div>

        <!-- Product name, description, order button, ... -->
        <div class="col-md-7 col-12">
            <div class="ps-lg-10 mt-6 mt-md-0">
                <h2 class="mb-1 fw-semibold"><?php echo $prod->name ?></h1>

                    <div class="fs-4">
                        <span class="fw-bold text-dark"><?php echo (number_format($prod->price) . " VNĐ"); ?></span>
                        <!-- TODO Discount -->
                        <!-- <span class="text-decoration-line-through text-muted">$35</span>
            <span><small class="fs-6 ms-2 text-danger">26% Off</small></span> -->
                    </div>

                    <!-- <hr class="my-6"> -->

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
                                    <td>Model</td>
                                    <td><?php echo ($specsJSON['model']); ?></td>
                                </tr>

                                <tr>
                                    <td>Màu sắc</td>
                                    <td><?php echo ($specsJSON['color']); ?></td>
                                </tr>

                                <tr>
                                    <td>Nhà sản xuất</td>
                                    <td><?php echo ($specsJSON['manufacturer']); ?></td>
                                </tr>

                                <tr>
                                    <td>Xuất xứ</td>
                                    <td><?php echo ($specsJSON['origin']); ?></td>
                                </tr>

                                <tr>
                                    <td>Thời gian bảo hành</td>
                                    <td><?php echo ($specsJSON['warranty_time']); ?></td>
                                </tr>

                                <tr>
                                    <td>Bộ nhớ trong</td>
                                    <td><?php echo ($specsJSON['memory']); ?></td>
                                </tr>

                                <tr>
                                    <td>Loại màn hình</td>
                                    <td><?php echo ($specsJSON['monitor']); ?></td>
                                </tr>

                                <tr>
                                    <td>Kích thước màn hình</td>
                                    <td><?php echo ($specsJSON['monitor_size']); ?></td>
                                </tr>

                                <tr>
                                    <td>Độ phân giải màn hình</td>
                                    <td><?php echo ($specsJSON['resolution']); ?></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
            </div>
        </div>
    </div>
</div>