<?php
header('Access-Control-Allow-Origin:*');
$name = $_POST['name'];
$cell = $_POST['cell'];
$cite = $_POST['cite'];
$address = $_POST['address'];
$id = $_POST['id'];
$db = new mysqli('localhost', 'root', '', 'wx');
if ($db->connect_errno) {
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "update site set name = '$name',cell = '$cell',city = '$cite',address = '$address' where id = '$id'";

$res = $db->query($sql);

if($res){
    echo "1";
}else{
    echo "0";
}

$db->close();



?>
