<?php
header('Access-Control-Allow-Origin:*');

$tel = $_POST['tel'];

$db = new mysqli('localhost','root','','wx');
if($db->connect_errno){
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "select * from site where tel = '$tel'";

$res = $db->query($sql);

if($res){

    $res = $res->fetch_all(1);
    echo json_encode($res);
}else{
    echo "0";
}

$db->close();















?>
