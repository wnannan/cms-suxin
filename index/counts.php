<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/21
 * Time: 11:49
 */

include_once '../admin/lib/db.php';
$gid = $_GET['gid'];
$count = $_GET['count'];
$sql = "update goods set count=$count where gid=$gid";
$mysql->query($sql);

if($mysql->affected_rows==1){
    echo "yes";
}else{
    echo "no";
}