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
include_once './lib/upload.php';
if($_SERVER['REQUEST_METHOD'] == 'GET'){
    // 展示添加页面
    $obj = new Menu();
    $str = $obj->getCate($mysql,'category',0,0);
//    获取推荐位

    include_once '../template/admin/insertposition.html';

}else if($_SERVER['REQUEST_METHOD'] == 'POST'){
//  上传图片  $_FILES 文件
//    var_dump($_FILES);
//    exit();
    if(count($_FILES)>0) {
        $upload = new Upload();
        $file = $_FILES['thumb'];
        $thumb = $upload->upload($file);

//    判断文件$thumb是否上传成功
        if ($thumb['code'] != 10) {
            $message = $thumb['msg'];
            $url = 'insertgoods.php';
            include_once 'notice.html';
        } else if ($thumb['code'] == 10) {
            $arr = $_POST;
            $arr['thumb'] = $thumb['msg'];

            $sql = "insert into goods (";
            $keys = array_keys($arr);
            for ($i = 0; $i < count($keys); $i++) {
                $sql .= $keys[$i] . ',';
            };
            $sql = substr($sql, 0, -1) . ") values (";
            foreach ($arr as $v) {
                $sql .= "'$v',";
            }

            $sql = substr($sql, 0, -1 ). ")";
            $mysql->query($sql);
            if ($mysql->affected_rows == 1) {
                $message = "商品插入成功";
                $url = "querygoods.php";
//        $type = 'success';
            } else {
                $message = "商品插入失败";
                $url = "insertgoods.php";
//        $type = 'danger';
            }
            include_once 'notice.html';
        }

    }else {
            $message = '请上传图片';
            $url = 'insertgoods.php';

        }
    include_once 'notice.html';
}