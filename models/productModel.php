<?php
require_once("DTOs/product.php");

class productModel
{
    protected mysqli $db;

    public function __construct(mysqli $db)
    {
        $this->db = $db;
    }

    public function get(int $id)
    {
        $stmt = $this->db->prepare('SELECT * FROM product WHERE id = ? AND deleted_at IS NULL;');
        $stmt->bind_param('i', $id);
        $stmt->execute();

        $result = $stmt->get_result();
        $stmt->close();
        $row = $result->fetch_assoc();

        return new product(
            $row['id'],
            $row['name'],
            $row['description'],
            $row['price'],
            $row['quantity'],
            $row['category_id'],
            $row['discount_id'],
            $row['created_at'],
            $row['modified_at'],
            $row['deleted_at'],
        );
    }

    public function all()
    {
        $stmt = $this->db->prepare('SELECT * FROM product WHERE deleted_at IS NULL');
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();

        $prods = array();
        while ($row = $result->fetch_assoc()) {
            $prod = new product(
                $row['id'],
                $row['name'],
                $row['description'],
                $row['price'],
                $row['quantity'],
                $row['category_id'],
                $row['discount_id'],
                $row['created_at'],
                $row['modified_at'],
                $row['deleted_at'],
            );
            array_push($prods, $prod);
        }

        return $prods;
    }

    public function insert($name, $description, $price, $quantity, $category_id, $discount_id)
    {
        $stmt = $this->db->prepare('INSERT INTO product(name, description, price, quantity, category_id, discount_id) VALUES (?, ?, ?, ?, ?, ?);');
        $stmt->bind_param('ssiiii', $name, $description, $price, $quantity, $category_id, $discount_id);
        $stmt->execute();
        $stmt->close();
    }

    public function update($id, $name, $description, $price, $quantity, $category_id, $discount_id)
    {
        $stmt = $this->db->prepare('
        UPDATE product SET
        name = ?,
        description = ?,
        price = ?,
        quantity = ?,
        category_id = ?,
        discount_id = ?
        WHERE id = ?');
        $stmt->bind_param('ssiiiii', $name, $description, $price, $quantity, $category_id, $discount_id, $id);
        $stmt->execute();
        $stmt->close();
    }

    public function delete($id)
    {
        $stmt = $this->db->prepare('UPDATE product SET deleted_at = NOW() WHERE id = ?');
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $stmt->close();
    }
}
