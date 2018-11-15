<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/18
 * Time: 9:17
 */

/*
 *   页数
 *   数据
 * */

class Page{
    public $pages;
    public $mysql;
    public $size;
    public $id;
    function __construct($mysql,$size,$id)
    {
        $this->pages = 0;
        $this->mysql = $mysql;
        $this->size = $size;
        $this->id = $id;
    }
//    size默认显示3条记录
    function allpage(){
        $sql = "select count(*) as num from goods where id=$this->id";
        $result = $this->mysql->query($sql)->fetch_assoc();
        $total = $result['num'];
//        向上取整，计算总页数
        $page = ceil($total / $this->size);
        return $page;
    }
    function data($pagenum){
        $offset = ($pagenum-1)*$this->size;
        $len = $this->size;
        $sql = "select goods.*,category.title as cname from goods,category where goods.id=category.id and goods.id=$this->id order by gid asc limit $offset,$len";
        $result = $this->mysql->query($sql)->fetch_all(MYSQLI_ASSOC);
        return $result;
    }
}