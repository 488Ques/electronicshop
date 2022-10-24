<?php
require_once($_SERVER['DOCUMENT_ROOT'] . 'include_path.php');
require_once(DIR_MODULES . 'db_module.php');
require_once(DIR_MODELS . 'product.model.php');

class detail
{
    protected productModel $productModel;

    public function __construct()
    {
        $db = newDB();
        $this->productModel = new productModel($db);
    }

    public function invoke(&$prod)
    {
        if (!empty($_GET["id"])) {
            $prod = $this->productModel->get($_GET["id"]);
        }
    }
}
