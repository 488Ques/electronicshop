<?php
require_once($_SERVER['DOCUMENT_ROOT'] . 'include_path.php');
?>

<div class="container">
    <div class="row gx-10 mt-4">
        <aside class="col-lg-3 col-md-4 mb-6 mb-md-0">
            <div class="mb-8">
                <h5 class="mb-3">Stores</h5>
                <div class="my-4">
                    <!-- input -->
                    <input type="search" class="form-control" placeholder="Search by store">
                </div>
                <!-- form check -->
                <div class="form-check mb-2">
                    <!-- input -->
                    <input class="form-check-input" type="checkbox" value="" id="eGrocery" checked="">
                    <label class="form-check-label" for="eGrocery">
                        E-Grocery
                    </label>
                </div>
                <!-- form check -->
                <div class="form-check mb-2">
                    <!-- input -->
                    <input class="form-check-input" type="checkbox" value="" id="DealShare">
                    <label class="form-check-label" for="DealShare">
                        DealShare
                    </label>
                </div>
                <!-- form check -->
                <div class="form-check mb-2">
                    <!-- input -->
                    <input class="form-check-input" type="checkbox" value="" id="Dmart">
                    <label class="form-check-label" for="Dmart">
                        DMart
                    </label>
                </div>
                <!-- form check -->
                <div class="form-check mb-2">
                    <!-- input -->
                    <input class="form-check-input" type="checkbox" value="" id="Blinkit">
                    <label class="form-check-label" for="Blinkit">
                        Blinkit
                    </label>
                </div>
                <!-- form check -->
                <div class="form-check mb-2">
                    <!-- input -->
                    <input class="form-check-input" type="checkbox" value="" id="BigBasket">
                    <label class="form-check-label" for="BigBasket">
                        BigBasket
                    </label>
                </div>
                <!-- form check -->
                <div class="form-check mb-2">
                    <!-- input -->
                    <input class="form-check-input" type="checkbox" value="" id="StoreFront">
                    <label class="form-check-label" for="StoreFront">
                        StoreFront
                    </label>
                </div>
                <!-- form check -->
                <div class="form-check mb-2">
                    <!-- input -->
                    <input class="form-check-input" type="checkbox" value="" id="Spencers">
                    <label class="form-check-label" for="Spencers">
                        Spencers
                    </label>
                </div>
                <!-- form check -->
                <div class="form-check mb-2">
                    <!-- input -->
                    <input class="form-check-input" type="checkbox" value="" id="onlineGrocery">
                    <label class="form-check-label" for="onlineGrocery">
                        Online Grocery
                    </label>
                </div>
            </div>
        </aside>

        <section class="col-lg-9 col-md-12">
            <div class="row g-4 row-cols-xl-4 row-cols-lg-3 row-cols-2 row-cols-md-2 row-cols-sm-1 mt-2">
                <?php
                foreach ($prods as $prod) {
                    $url = $searchCtl->getProductThumbnail($prod->id);
                    include(DIR_VIEWS . 'productCard.partial.php');
                }
                ?>
            </div>
        </section>
    </div>
</div>