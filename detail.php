<?php
require_once($_SERVER['DOCUMENT_ROOT'] . 'include_path.php');
require_once(DIR_CONTROLLERS . 'detail.ctl.php');

$prod;
$specs;
$images;
$detail = new detail();
$detail->invoke($prod, $specs, $images);

$specsJSON = json_decode($specs->specs, true);

$title = $prod->name;
$template = DIR_VIEWS . 'detail.tmpl.php';

require_once(DIR_VIEWS . 'layout.php');
