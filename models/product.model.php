<?php
require_once($_SERVER['DOCUMENT_ROOT'] . 'include_path.php');
require_once(DIR_DTOS . "product.php");

class productModel
{
    protected $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function get($id)
    {
        $stmt = $this->db->prepare('SELECT id, name, description, price, discount_id, specs_id, created_at, modified_at, deleted_at
         FROM product WHERE id = ? AND deleted_at IS NULL;');

        $stmt->execute([$id]);

        $product = $stmt->fetch();

        return new product(
            $product['id'],
            $product['name'],
            $product['description'],
            $product['price'],
            $product['discount_id'],
            $product['specs_id'],
            $product['created_at'],
            $product['modified_at'],
            $product['deleted_at'],
        );
    }

    // Return all products whose ID belongs to $ids
    public function matchAll($ids)
    {
        $stmt = 'SELECT id, name, description, price, discount_id, specs_id, created_at, modified_at, deleted_at 
        FROM product WHERE id IN (';
        for ($i = 0; $i < count($ids); $i++) {
            if ($i == count($ids) - 1) {
                $stmt = $stmt . '?);';
                break;
            }
            $stmt = $stmt . '?, ';
        }

        $prepared = $this->db->prepare($stmt);
        $prepared->execute($ids);

        $products = array();
        while ($temp = $prepared->fetch()) {
            $prod = new product(
                $temp['id'],
                $temp['name'],
                $temp['description'],
                $temp['price'],
                $temp['discount_id'],
                $temp['specs_id'],
                $temp['created_at'],
                $temp['modified_at'],
                $temp['deleted_at'],
            );
            array_push($products, $prod);
        }

        return $products;
    }
}
