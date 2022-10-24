<?php
require_once($_SERVER['DOCUMENT_ROOT'] . 'include_path.php');
require_once(DIR_MODULES . 'db_module.php');
require_once(DIR_MODELS . 'product.model.php');
require_once(DIR_MODELS . 'product_specs.model.php');

class detail
{
    protected productModel $productModel;
    protected productSpecsModel $productSpecsModel;

    public function __construct()
    {
        $db = newDB();
        $this->productModel = new productModel($db);
        $this->productSpecsModel = new productSpecsModel($db);
    }

    public function invoke(&$prod, &$specs)
    {
        if (!empty($_GET["id"])) {
            $prod = $this->productModel->get($_GET["id"]);
            $specs = $this->productSpecsModel->get($prod->specs_id);
        }
    }
}
