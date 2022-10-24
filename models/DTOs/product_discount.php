<?php
class product_discount
{
    var $id;
    var $name;
    var $discount_percent;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    function product_discount(
        $_id,
        $_name,
        $_discount_percent,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->id = $_id;
        $this->name = $_name;
        $this->discount_percent = $_discount_percent;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }
}
