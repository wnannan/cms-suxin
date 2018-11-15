<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/15
 * Time: 17:36
 */
include_once 'lib/check.php';
include_once 'lib/db.php';
include_once 'lib/function.php';
if($_SERVER['REQUEST_METHOD'] == 'GET'){
    $id = $_GET['id'];
    $result = $mysql->query("select * from category where id=$id")->fetch_assoc();

    $obj = new Menu();
    $str = $obj->getCate($mysql,'category','0','0',$id);

    require '../template/admin/updatecategory.html';
}elseif ($_SERVER['REQUEST_METHOD'] == 'POST'){
    $arr = $_POST;
    $id = $arr['id'];
    array_pop($arr);
    $sql = "update category set ";
    foreach ($arr as $key=>$value) {
        $sql .= "$key='$value',";
    }
    $sql = substr($sql,0,-1)."where id=$id";

    $mysql->query($sql);

    if($mysql->affected_rows ==1){
        $message = "栏目修改成功";
        $url ="query.php";
//        $type = 'success';
    }else{
        $message = "栏目修改失败";
        $url = 'updatecategory.php?id='.$id;
//        $type = 'danger';
    }
    include_once 'notice.html';

}