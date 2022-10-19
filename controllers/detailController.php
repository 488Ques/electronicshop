<?php
require_once("models/models.php");

class detailController
{
    protected models $models;

    public function __construct(mysqli $db)
    {
        $this->models = new models($db);
    }

    public function invoke(&$prod)
    {
        if (isset($_GET["id"])) {
            $prod = $this->models->productModel->get($_GET["id"]);
        }
    }
}
