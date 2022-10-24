<?php
require_once('./include_path.php');
require_once(DIR_CONTROLLERS . 'detail.ctl.php');

$prod;
$specs;
$detail = new detail();
$detail->invoke($prod, $specs);

$specsJSON = json_decode($specs->specs, true);

$title = $prod->name;
$template = DIR_VIEWS . 'detail.tmpl.php';

require_once(DIR_VIEWS . 'layout.php');
