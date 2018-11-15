  <?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/18
 * Time: 16:10
 */
include_once 'header.php';
include_once '../admin/lib/db.php';
include_once '../admin/lib/pages.php';

$id = $_GET['id'];
$sql = "select * from category where id=$id";
$cate = $mysql->query($sql)->fetch_assoc();
//var_dump($cate);
//exit();

//获取数据
 if($cate['model'] == 'list'){
//        获取goods.*where id=$id
//     $sqls = "select * from goods where id=$id";
//     $con = $mysql->query($sqls)->fetch_all(MYSQLI_ASSOC);
     $pages = 2;
     $pages = new Page($mysql,$pages,$id);
     $size = $pages->allpage();

     $pagenum = !isset($_GET['pagenum']) ? 1 : $_GET['pagenum'] ;
     $goods = $pages->data($pagenum);
//var_dump($goods);
////exit();

  }elseif ($cate['model'] == 'comment'){
//     $sql = "select * from comment";
//     $con = $mysql->query($sql)->fetch_all(MYSQLI_ASSOC);

  }elseif ($cate['model'] == 'aboutus'){
    $sql = "select * from aboutus";
    $res = $mysql->query($sql)->fetch_assoc();
//    var_dump($res);
//    exit();
  }

//  模板 tem
  include_once "../template/index/{$cate['tem']}";




//  include_once '../template/index/list.html';

