<?php

// 操作数据库的类，使用时，在指定的PHP脚本开头通过require_once('本文件路径')先引入本文件。
class DB {
    public $db;
    /**
     * host:主机名
     * uname:数据库用户名
     * pword:数据库密码
     * name:要连接的数据库名称
     */
    function __construct($host,$uname,$pword,$name){
        $this -> db = new mysqli($host,$uname,$pword,$name);
        $this -> db -> query('set names utf8');
    }

    
    function insert($sql){
        $res = $this -> db -> query($sql);
        return $res;
    }

    function update($sql){
        $res = $this -> db -> query($sql);
        return $res;
    }

    function delete($sql){
        $res = $this -> db -> query($sql);
        return $res;
    }

    function select($sql){
        $res = $this -> db -> query($sql);
        if($res && $res -> num_rows){
            return json_encode($res->fetch_all(1));
        }else{
            return false;
        }
    }

    function close(){
        $this -> db -> close();
    }
}

?>