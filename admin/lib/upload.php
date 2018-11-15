<?php
/**
 * Created by PhpStorm.
 * User: 王雅囡
 * Date: 2018/10/16
 * Time: 16:54
 */
class Upload{
    private $url;
    private $size;
    private $type;
//    private $errorarr;
    function __construct()
    {
        $this->url = '';
//        限制上传文件大小30KB
        $this->size = 1024;
        $this->type = ['image/png','image/jpg','image/jpeg','image/gif'];
        $this->errorarr = [
            0 => '文件上传成功',
            1 => '上传的文件超过了 php.ini 中 upload_max_filesize 选项限制的值',
            2 => '上传文件的大小超过了 HTML 表单中 MAX_FILE_SIZE 选项指定的值',
            3 => '文件只有部分被上传',
            4 => '没有文件被上传',
            6 => '找不到临时文件夹',
            7 => '文件写入失败',
            8 => '上传文件超过30KB',
            9 => '文件类型错误',
        ];
    }
    function upload($file){
//        判断是否上传成功，如果失败，返回出错状态码和错误信息
        if($file['error']>0){
            $code = $file['error'];
            return ['code'=>$code,'msg'=>$this->errorarr[$code]];

        }

        /*
         * array: name size type tmp_name error
         * 1. 判断是否为上传文件
         *      is_upload_file()
         * 2. 目录 uploadimg/日期/文件
         *      file_exists()
         *      mkdir()
         *      date()
         *      time()
         *      explode()[1]
         *    判断目录是否存在
         *    设置文件名称 时间戳.后缀名
         * 3. 移动 tmp_name-->目录
         *      move_upload_file()
         *    返回路径
         *  */

//          判断是否为上传文件
        if(is_uploaded_file($file['tmp_name'])){

            if(!$this->isSize($file['size'])){
                return ['code'=>8, 'msg'=>$this->errorarr[8]];
            }
            if(!$this->isType($file['type'])){
                return ['code'=>9, 'msg'=>$this->errorarr[9]];
            }



//            判断是否存在文件
            if (!file_exists('../uploadimg')){
//                创建文件
                mkdir('../uploadimg');
            }
            $date = date('Y-m-d');
            if(!file_exists('../uploadimg/'.$date)){
                mkdir('../uploadimg/'.$date);
            }
//            上传文件扩展名，转换成数组，取最后一个元素
            $ext = explode('.',$file['name'])[1];
//            设置文件名
            $filename = time().'.'.$ext;
//            移动文件
            move_uploaded_file($file['tmp_name'],'../uploadimg/'.$date.'/'.$filename);
//            返回路径到数据库
            return ['code'=>10,'msg'=>'/10.11cloth/uploadimg/'.$date.'/'.$filename];
        }
    }

    //    判断上传文件大小
    function isSize($size){
        return $size / 1024 > $this->size ? false : true;
    }
//    判断文件类型
    function isType($type){
        for($i=0;$i<count($this->type);$i++){
            if($this->type[$i]==$type){
                return true;
            }
        }
        return false;
    }

}



