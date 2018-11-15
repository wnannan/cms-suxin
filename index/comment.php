<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/22
 * Time: 10:18
 */

include_once '../admin/lib/db.php';
$names = $_GET['names'];
$tel = $_GET['tel'];
$content = $_GET['content'];
$sql = "insert into comment (names,tel,content) values ('$names','$tel','$content')";
$mysql->query($sql);
//echo $sql;

if($mysql->affected_rows == 1){
    echo 'yes';
}else {
    echo 'no';
}