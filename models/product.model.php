<?php
require_once("DTOs/product.php");

class productModel
{
    protected pdo $db;

    public function __construct(pdo $db)
    {
        $this->db = $db;
    }

    public function get(int $id)
    {
        $stmt = $this->db->prepare('SELECT * FROM product WHERE id = ? AND deleted_at IS NULL;');

        $stmt->execute([$id]);

        $product = $stmt->fetch();

        return new product(
            $product['id'],
            $product['name'],
            $product['description'],
            $product['price'],
            $product['category_id'],
            $product['discount_id'],
            $product['specs_id'],
            $product['created_at'],
            $product['modified_at'],
            $product['deleted_at'],
        );
    }
}
    // SELECT * FROM product WHERE deleted_at IS NULL; -> ALL
    // INSERT INTO product(name, description, price, quantity, category_id, discount_id) VALUES (?, ?, ?, ?, ?, ?); -> INSERT
    // UPDATE product SET name = ?, description = ?, price = ?, quantity = ?, category_id = ?, discount_id = ? WHERE id = ?; -> UPDATE
    // UPDATE product SET deleted_at = NOW() WHERE id = ?; -> DELETE
