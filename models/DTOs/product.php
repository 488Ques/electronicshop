<?php
class product
{
    var $id;
    var $name;
    var $description;
    var $price;
    var $category_id;
    var $discount_id;
    var $specs_id;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    public function __construct(
        $_id,
        $_name,
        $_description,
        $_price,
        $_category_id,
        $_discount_id,
        $_specs_id,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->id = $_id;
        $this->name = $_name;
        $this->description = $_description;
        $this->price = $_price;
        $this->category_id = $_category_id;
        $this->discount_id = $_discount_id;
        $this->specs_id = $_specs_id;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }
}
