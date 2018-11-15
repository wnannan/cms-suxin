<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/24
 * Time: 9:45
 */
session_start();
$_SESSION = [];
session_destroy();

$message = '退出成功';
$url = 'login.php';
include_once 'notice.html';