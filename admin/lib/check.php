<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/24
 * Time: 9:48
 */


//开启session，判断是否登录过
session_start();
if(!isset($_SESSION['islogin'])){
    $message = '请登录';
    $url = 'login.php';
    include_once 'notice.html';
    exit();
}