<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/15
 * Time: 16:55
 */
include_once 'lib/check.php';
include_once './lib/db.php';

$id = $_GET['id'];

$sql = "select * from category where pid=$id";

$result = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);
if(count($result)){
    $message = '当前栏目存在子栏目';
    $url = 'query.php';
}else{
    $sql = "delete from category where id=$id";

    $mysql->query($sql);
    if($mysql->affected_rows ==1){
        $message = "栏目删除成功";
        $url ="query.php";
//        $type = 'success';
    }else{
        $message = "栏目删除失败";
        $url ="insertcategory.php";
//        $type = 'danger';
    }
}
include_once 'notice.html';