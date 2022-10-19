<?php
class product
{
    var $id;
    var $name;
    var $description;
    var $price;
    var $quantity;
    var $category_id;
    var $discount_id;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    public function __construct(
        $_id,
        $_name,
        $_description,
        $_price,
        $_quantity,
        $_category_id,
        $_discount_id,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->id = $_id;
        $this->name = $_name;
        $this->description = $_description;
        $this->price = $_price;
        $this->quantity = $_quantity;
        $this->category_id = $_category_id;
        $this->discount_id = $_discount_id;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }

    public function __toString()
    {
        return "Product(id = $this->id, name = $this->name, price = $this->price, 
        quantity = $this->quantity, category_id = $this->category_id)";
    }
}
