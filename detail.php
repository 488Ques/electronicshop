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

  <?php include_once("views/scripts.php"); ?>
</body>

</html>