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
include_once 'lib/page.php';
$num = 5;
$pages = new Page($mysql,$num);
//每页显示2条记录
$size = $pages->allpage();
//var_dump($size);
//exit();
//判断页数是否被设置过
$pagenum = isset($_GET['pagenum']) ? $_GET['pagenum'] : 1 ;
$result = $pages->data($pagenum);
//var_dump($pagenum);
//exit();
// 多表查询
//$sql = "select goods.*,category.title as cname from goods,category where goods.id=category.id";
//$sql = "select * from goods";

//$result = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);
//var_dump($result);
//exit();
include_once '../template/admin/querygoods.html';