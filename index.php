<!DOCTYPE html>
<html lang="en">

<?php
$title = "Main page";
include_once("views/head.php");
?>

<body>
    <?php
    include_once("views/header.php");

    require_once("controllers/productController.php");
    require_once("modules/db_module.php");
    ?>

    <section class="container mt-2">
        <?php
        // $db = newDB();
        // $productController = new productController($db);

        // $productController->invoke();
        ?>
    </section>

    <section class="pt-lg-18 pt-10 mt-lg-14 mt-10">
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-lg-5">
                    <!-- text -->
                    <div class="mb-8">
                        <!-- heading -->
                        <h2 class="mt-1 mb-4">Home Pages</h2>

                        <p>
                            Ready to create the best ecommerce website? Our Unique homepage
                            design help you to build a ecommerce business easily.
                        </p>
                    </div>
                </div>
            </div>
            <!-- row -->
            <div class="row">
                <div class="col-md-4">
                    <!-- page block -->
                    <div class="mb-4 bg-light rounded-3 p-10">
                        <div>
                            <!-- page block img -->
                            <a href="../index.html" class="text-inherit">
                                <img src="/static/image/Flip4_Bespoke_gold_yellow_white_PC.png" alt="" class="img-fluid shadow-sm rounded-3"></a>
                        </div>
                        <!-- page block content -->
                        <div class="mt-6 text-center">
                            <h3 class="h5 mb-0">
                                <a href="../index.html" class="text-inherit">Home Page 1</a>
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- page block -->
                    <div class="mb-4 bg-light rounded-3 p-10">
                        <div>
                            <!-- page block img -->
                            <a href="index-2.html" class="text-inherit">
                                <img src="/static/image/Flip4_Bespoke_gold_yellow_white_PC.png" alt="" class="img-fluid shadow-sm rounded-3"></a>
                        </div>
                        <!-- page block content -->
                        <div class="mt-6 text-center">
                            <h3 class="h5 mb-0">
                                <a href="index-2.html" class="text-inherit">Home Page 2</a>
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- page block -->
                    <div class="mb-4 bg-light rounded-3 p-10">
                        <div>
                            <!-- page block img -->
                            <a href="index-3.html" class="text-inherit">
                                <img src="/static/image/Flip4_Bespoke_gold_yellow_white_PC.png" alt="" class="img-fluid shadow-sm rounded-3"></a>
                        </div>
                        <!-- page block content -->
                        <div class="mt-6 text-center">
                            <h3 class="h5 mb-0">
                                <a href="index-3.html" class="text-inherit">Home Page 3</a>
                            </h3>
                        </div>
                    </div>
                </div>
                <!-- text -->
                <div class="col-12 text-center">
                    <p>More home pages coming soon...</p>
                </div>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>

</html>