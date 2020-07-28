<?php
header('Access-Control-Allow-Origin:*');
$tel = $_POST['tel'];
$src = $_POST['src'];

$db = new mysqli('localhost','root','','wx');
// 中文编码
if($db->connect_errno){
    die("连接数据库失败");
}
$db -> query('set names utf8');
$sql = "select src from gouwu where tel = '$tel' and src = '$src'";
$res = $db -> query($sql);
if($res -> num_rows){
    $s = json_encode($res -> fetch_assoc());
    $d = json_decode($s);
    $sql = "select number from gouwu where src = '$d->src'and tel = '$tel'";
    $res = $db->query($sql);
    if($res -> num_rows){
        echo json_encode($res -> fetch_all(1));
    }
}
$db -> close();
?>
