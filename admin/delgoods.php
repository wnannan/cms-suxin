<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/15
 * Time: 16:55
 */
include_once 'lib/check.php';
include_once './lib/db.php';

$id = $_GET['gid'];

$sql = "select * from goods where id=$id";

$result = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);


    $sql = "delete from goods where gid=$id";

    $mysql->query($sql);
    if($mysql->affected_rows ==1){
        $message = "栏目删除成功";
        $url ="querygoods.php";
//        $type = 'success';
    }else{
        $message = "栏目删除失败";
        $url ="insertgoods.php";
//        $type = 'danger';

}
include_once 'notice.html';