<?php
header('Access-Control-Allow-Origin:*');
$number = $_GET['number'];
$id = $_GET['id'];
$db = new mysqli('localhost', 'root', '', 'wx');
if ($db->connect_errno) {
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "update gouwu set number = '$number' where id = '$id'";

$res = $db->query($sql);

if($res){
    echo "1";
}else{
    echo "0";
}

$db->close();



?>
