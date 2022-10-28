<?php
class product_taggroup
{
    var $tag_id;
    var $parent_id;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    function __construct(
        $_tag_id,
        $_parent_id,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->tag_id = $_tag_id;
        $this->parent_id = $_parent_id;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }
}
