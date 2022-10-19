<?php
require_once("config.php");

function newDB()
{
    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
    $db = null;
    try {
        $db = new mysqli(HOST, USERNAME, PASSWORD, DB);
        $db->set_charset("utf8mb4");
    } catch (Exception $e) {
        error_log($e->getMessage());
        exit('Error connecting to database');
    }

    return $db;
}
