<?php

$db = new mysqli('localhost','root','','wx');
// 中文编码
if($db->connect_errno){
    die("连接数据库失败");
}
$db -> query('set names utf8');
$sql = "select src from home where type = 'f'";
$res = $db -> query($sql);
if($res -> num_rows){
    echo json_encode($res->fetch_assoc());
}
$db -> close();
?>



