<?php
require_once($_SERVER['DOCUMENT_ROOT'] . 'include_path.php');
require_once(DIR_DTOS . 'product_tag.php');

class productTagModel
{
    protected $db;

    public function __construct($db)
    {
        $this->db = $db;
    }
}
