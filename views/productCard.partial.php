<div class="col">
    <div class="card">
        <div class="card-body">
            <!-- badge -->
            <div class="text-center position-relative">
                <a href="<?php echo '/detail.php?id=' . $prod->id; ?>">
                    <img src="<?php echo $url; ?>" class="mb-3 img-fluid">
                </a>
            </div>

            <h2 class="fs-6">
                <a href="<?php echo '/detail.php?id=' . $prod->id; ?>" class="text-decoration-none">
                    <?php echo $prod->name; ?>
                </a>

                <div class="mt-2">
                    <?php echo number_format($prod->price) . ' VNĐ'; ?>
                    <!-- TODO Discount -->
                    <!-- <span class="text-decoration-line-through text-muted">$35</span> -->
                </div>
            </h2>

            <div>
                <a href="#!" class="btn btn-primary btn-sm">
                    <i class="bi bi-cart-plus"></i> Thêm
                </a>
            </div>
        </div>
    </div>
</div>