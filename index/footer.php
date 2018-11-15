<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/18
 * Time: 21:14
 */
$sql = "select * from aboutus";
$res = $mysql->query($sql)->fetch_assoc();
include_once '../template/index/footer.html';