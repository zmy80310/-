<?php
header('Access-Control-Allow-Origin:*');
$login = $_POST['login'];
$pwd = $_POST['pwd'];
$db = new mysqli('localhost','root','','wx');

if($db->connect_errno){
    die('连接数据库失败');
}

$db->query('set names utf8');

$sql = "select pwod from student where name = '$login'";

$res = $db->query($sql);

if($res){
    $res =json_encode($res -> fetch_assoc());
    $a = json_decode($res,true);
    if($a["pwod"] == $pwd){
        $state = time();
        $sql = "update student set state = '{$state}' where name= '{$login}'";
        $db->query($sql);
        echo $state;
    }else{
        echo "0";
    }
}else{
    echo "查看失败";
}
$db -> close();















?>
