<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/11
 * Time: 17:45
 */
//处理登录
// 1.打开登录页面  2.验证登录
//var_dump($_SERVER['REQUEST_METHOD']);
if($_SERVER['REQUEST_METHOD'] == 'GET'){
//    引入后台登录页面
    include_once '../template/admin/login.html';
}else{
//    var_dump($_POST);
    $username = $_POST['username'];
    $password = $_POST['password'];
//    连接数据库
     include_once './lib/db.php';
     $sql = "select * from manage where username='$username'";
     $result = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);
     if(!count($result)){
         $message = "用户不存在";
         $url = 'notice.html';
         include_once 'notice.html';
         exit();
    }
    for($i=0;$i<count($result);$i++){
//        count($result);
        if($result[$i]['password'] == $password){

            $message = "登录成功";
            $url = 'index.php';
//            include_once 'index.php';

            session_start();
            $_SESSION['islogin'] = 'yes';
            $_SESSION['username'] = $username;
            include_once 'notice.html';
            exit();
        }
    }
    $message = "帐号或密码错误";
    $url = 'notice.html';
    include_once 'notice.html';
//    count($result);返回长度
}
