<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/15
 * Time: 8:52
 */
include_once 'lib/check.php';
include_once './lib/db.php';
include_once './lib/function.php';
if($_SERVER['REQUEST_METHOD'] == 'GET'){
    // 展示添加页面

    $obj = new Menu();
    $str = $obj->getCate($mysql, 'category',0,0);

//    $sql = "select * from category";
//    $result = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);

    include_once '../template/admin/insertcategory.html';

}else if($_SERVER['REQUEST_METHOD'] == 'POST'){
    // 提交
//    var_dump($_POST);
//    获取数组属性
    $sql = "insert into category (";
    $keys = array_keys($_POST);
    for($i=0;$i<count($keys);$i++){
        $sql .=$keys[$i] . ',';
    }
//    字符串截取，去掉最后一个','
    $sql = substr($sql,0,-1) . ') values (';
//    遍历关联数组$_POST
    foreach ($_POST as $value){   // foreach ($_POST as $key=>$value)
//        echo $value;
        $sql .= "'$value',";
    }
    $sql = substr($sql,0,-1).")";
//    echo $_POST;
    $mysql->query($sql);
    if($mysql->affected_rows ==1){
        $message = "栏目插入成功";
        $url ="query.php";
//        $type = 'success';
    }else{
        $message = "栏目插入失败";
        $url ="insertcategory.php";
//        $type = 'danger';
    }
    include_once 'notice.html';
}