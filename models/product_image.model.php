<?php
require_once($_SERVER['DOCUMENT_ROOT'] . 'include_path.php');
require_once(DIR_DTOS . 'product_image.php');

class productImageModel
{
    protected pdo $db;

    public function __construct(pdo $db)
    {
        $this->db = $db;
    }

    public function getImages($productID)
    {
        $stmt = $this->db->prepare('SELECT url FROM product_image WHERE product_id = ?;');
        $stmt->execute([$productID]);

        $result = $stmt->fetchAll();

        return $result;
    }

    public function getThumbnail($productID)
    {
        $stmt = $this->db->prepare('SELECT url FROM product_image WHERE product_id = ? AND is_thumbnail != 0');
        $stmt->execute([$productID]);

        $result = $stmt->fetch();

        return $result['url'];
    }
}
