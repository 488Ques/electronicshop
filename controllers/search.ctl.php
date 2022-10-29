<?php
require_once($_SERVER['DOCUMENT_ROOT'] . 'include_path.php');
require_once(DIR_MODULES . 'db_module.php');
require_once(DIR_MODELS . 'producttag_map.model.php');
require_once(DIR_MODELS . 'product.model.php');
require_once(DIR_MODELS . 'product_image.model.php');
require_once(DIR_MODELS . 'product_tag.model.php');

class searchController
{
    protected productTagMapModel $mapModel;
    protected productModel $prodModel;
    protected productImageModel $imageModel;
    protected productTagModel $tagModel;

    public function __construct()
    {
        $db = newDB();
        $this->mapModel = new productTagMapModel($db);
        $this->prodModel = new productModel($db);
        $this->imageModel = new productImageModel($db);
        $this->tagModel = new productTagModel($db);
    }

    public function invoke(&$prods, &$tags)
    {
        $tags = $_GET['tag']; // An array of tag ID numbers
        $productName = $_GET['product_name'];
        $lowerPrice = $_GET['lower_price'];

        $prods = $this->prodModel->search($tags, $productName, $lowerPrice);
        $tags = $this->tagModel->all();
    }

    public function getProductThumbnail($productID)
    {
        return $this->imageModel->getThumbnail($productID);
    }
}
