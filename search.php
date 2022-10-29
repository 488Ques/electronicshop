<?php
require_once($_SERVER['DOCUMENT_ROOT'] . 'include_path.php');
require_once(DIR_CONTROLLERS . 'search.ctl.php');

$prods;
$searchCtl = new searchController();
$searchCtl->invoke($prods);

$title = 'Danh sách sản phẩm';
$template = DIR_VIEWS . 'search.tmpl.php';

require_once(DIR_VIEWS . 'layout.php');
