<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/12
 * Time: 16:40
 */
// 查看栏目
// 获取数据-->模板

include_once 'lib/check.php';

include_once 'lib/db.php';
$sql = "select * from category";
$result = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);
include_once '../template/admin/category.html';