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

    public function all()
    {
        $stmt = 'SELECT id, name FROM product_tag';

        $prepared = $this->db->prepare($stmt);
        $prepared->execute();

        $tags = array();
        while ($temp = $prepared->fetch()) {
            $tag = new product_tag(
                $temp['id'],
                $temp['name'],
                null,
                null,
                null,
                null,
            );
            array_push($tags, $tag);
        };

        return $tags;
    }
}
