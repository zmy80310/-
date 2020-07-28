<?php
header('Access-Control-Allow-Origin:*');
$src = $_POST['src'];
$name = $_POST['name'];
$price = $_POST['price'];
$number = $_POST['number'];
$tel = $_POST['tel'];
$time = $_POST['time'];

$db = new mysqli('localhost', 'root', '', 'wx');
if ($db->connect_errno) {
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "select src from gouwu where tel = '$tel'and src = '$src'";

$res = $db->query($sql);
if ($res->num_rows) {
    echo "1";
} else {
    $sql = "insert into gouwu (name,src,price,number,tel,id) values ('{$name}','{$src}','{$price}','{$number}','{$tel}','{$time}')";
    $res = $db->query($sql);
    if ($res) {
        echo "2";
    }
}


?>
