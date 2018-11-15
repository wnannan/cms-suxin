<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/22
 * Time: 14:41
 */
include_once '../admin/lib/db.php';

$page = $_GET['pagenum'];
$offset = ($page-1)*3;
$sql = "select * from comment order by id desc limit $offset,3";
$result = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);
echo json_encode($result);