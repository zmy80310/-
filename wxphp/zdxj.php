<?php
header('Access-Control-Allow-Origin:*');
$tel = $_POST['tel'];

$db = new mysqli('localhost','root','','wx');
if($db->connect_errno){
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "select tel from user where tel = '$tel'";

$res = $db->query($sql);

if($res){
    if($res -> num_rows){
        echo json_encode($res -> fetch_assoc());
    }
}else{
    echo '0';
}

$db->close();












?>
