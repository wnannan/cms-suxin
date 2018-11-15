<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/18
 * Time: 14:45
 */

include_once 'header.php';
include_once '../admin/lib/db.php';
$sql = "select * from category";
$cate = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);

$sql = "select * from goods where poid=1";
$result = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);

$sql = "select * from goods where id=1";
$res3 = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);

$sql = "select * from goods where id=2";
$res2 = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);
//var_dump($res2);
//exit();
$sql = "select * from aboutus";
$res = $mysql->query($sql)->fetch_assoc();

include_once '../template/index/index.html';