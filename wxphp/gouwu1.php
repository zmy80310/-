<?php
header('Access-Control-Allow-Origin:*');
$number = $_POST['number'];
$tel = $_POST['tel'];
$src = $_POST['src'];
$db = new mysqli('localhost','root','','wx');
if($db->connect_errno){
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "select src from gouwu where tel = '$tel' and src = '$src'";

$res = $db->query($sql);
if($res->num_rows){
    $s = json_encode($res -> fetch_assoc());
    $d = json_decode($s);
    $sql = "update gouwu set number = '$number' where src = '$d->src' and tel = '$tel'";
    $res = $db->query($sql);
    if($res){
        echo "1";
    }
}else{
    echo "0";

}










?>
