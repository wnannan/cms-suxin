<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/18
 * Time: 17:07
 */
include_once '../admin/lib/db.php';
$sql = "select * from category";
$cate = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);
//var_dump($cate);
//exit();
$sql = "select * from aboutus";
$res = $mysql->query($sql)->fetch_assoc();

include_once '../template/index/header.html';