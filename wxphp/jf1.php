<?php
header('Access-Control-Allow-Origin:*');
$name = $_POST['name'];
$pb = $_POST['pb'];
$jf = $_POST['jf'];
$state = $_POST['state'];

$db = new mysqli('localhost','root','','wx');

if($db ->connect_errno){
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "update user set pb = '$pb',jf='$jf',state = '$state' where tel = '$name'";

$res = $db -> query($sql);

if($res){
    echo "1";
}else{
    echo "0";
}

$db->close();








?>
