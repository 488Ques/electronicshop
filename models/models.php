<?php
require_once("productModel.php");
class models
{
    public productModel $productModel;

    public function __construct(mysqli $db)
    {
        $this->productModel = new productModel($db);
    }
}
