<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/19
 * Time: 16:54
 */

include_once 'header.php';
include_once '../admin/lib/db.php';
//include_once 'counts.php';

$id = $_GET['id'];
$gid = $_GET['gid'];
$sql = "select * from goods where gid=$gid";
$article = $mysql->query($sql)->fetch_assoc();
//var_dump($article);
//exit();


/*
 * 下一个：
 *  相同分类 >gid 的第1条
 *  select * from goods where id = $id and gid>$gid order by gid asc limit 0,1;
 * 上一个：
 *  select * from goods where id = $id and gid<$gid order by gid desc limit 0,1;
 *
 * */

//下一篇
$nextsql = "select * from goods where id=$id and gid>$gid order by gid asc limit 0,1";

$next = $mysql->query($nextsql)->fetch_assoc();

$nextstr = "";
if($next){
    $nextstr = "<a href='show.php?id=$id&&gid={$next['gid']}' class='r'>下一篇：{$next['title']}</a>";
}else {
    $nextstr = "<a href='javascript:void(0);' class='r'>没有了</a>";
}

//上一篇
$presql = "select * from goods where id=$id and gid<$gid order by gid desc limit 0,1";
//echo $presql;
//exit();
$pre = $mysql->query($presql)->fetch_assoc();
$prestr = "";
if($pre){
    $prestr = "<a href='show.php?id=$id&&gid={$pre['gid']}' class='l'>上一篇：{$pre['title']}</a>";
}else {
    $prestr = "<a href='javascript:void(0);' class='l'>没有了</a>";
}

include_once '../template/index/show.html';