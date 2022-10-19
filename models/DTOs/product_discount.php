<?php
class product_discount
{
    var $id;
    var $name;
    var $description;
    var $discount_percent;
    var $active;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    function product_discount(
        $_id,
        $_name,
        $_description,
        $_discount_percent,
        $_active,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->id = $_id;
        $this->name = $_name;
        $this->description = $_description;
        $this->discount_percent = $_discount_percent;
        $this->active = $_active;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }
}
