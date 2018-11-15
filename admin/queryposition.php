<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/23
 * Time: 14:56
 */
include_once 'lib/check.php';
include_once 'lib/db.php';
$sql = "select * from position";
$result = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);
//var_dump($result);
//exit();
include_once '../template/admin/queryposition.html';