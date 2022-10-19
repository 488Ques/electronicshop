<?php
include_once("controllers/detailController.php");
require_once("modules/db_module.php");

$db = newDB();
$detailController = new detailController($db);
$prod;
$detailController->invoke($prod);
?>

<!DOCTYPE html>
<html lang="en">

<?php
$title = $prod->name;
include_once("views/head.php");
?>

<body>
  <?php
  include_once("views/header.php");
  include_once("views/productDetail.php");
  ?>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>

</html>