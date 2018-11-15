<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/23
 * Time: 17:16
 */
include_once '../admin/lib/db.php';
include_once 'header.php';

$keyword = $_GET['keyword'];
$sql = "select * from goods where title like '%$keyword%'";
$result = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);

include_once '../template/index/search.html';