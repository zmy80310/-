<?php
header('Access-Control-Allow-Origin:*');
$name = $_POST['name'];
$state = $_POST['state'];
$data = $_POST['data'];
$time = $_POST['time'];
$db = new mysqli('localhost','root','','wx');
if($db->connect_errno){
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "update user set state = '$state',pb = '$data',jf = '$time' where tel = '$name'";

$res = $db->query($sql);

if($res){
    $sql = "select * from user";
    $res = $db -> query($sql);
    $res = $res -> fetch_all(1);
    echo json_encode($res);
}else{
    echo "0";
}
?>
