 <?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/12
 * Time: 17:06
 */
// 公共部分
$mysql = new mysqli('localhost','root','','10.11cloth','3306');
if($mysql->connect_errno == 1){
    echo "数据库连接失败，原因是" . $mysql->connect_errno;
    exit();
}
$mysql->query('set names utf8');
