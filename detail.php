<?php
require_once('./include_path.php');
require_once(DIR_CONTROLLERS . 'detail.ctl.php');

$prod;
$detail = new detail();
$detail->invoke($prod);

$title = $prod->name;
$template = DIR_VIEWS . 'detail.tmpl.php';

require_once(DIR_VIEWS . 'layout.php');
