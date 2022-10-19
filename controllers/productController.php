<?php
require_once("models/models.php");

class productController
{
    protected models $models;

    public function __construct(mysqli $db)
    {
        $this->models = new models($db);
    }

    public function invoke()
    {
        if (!isset($_GET["id"])) {
            $prods = $this->models->productModel->all();
            include_once("views/productList.php");
        }
    }
}
