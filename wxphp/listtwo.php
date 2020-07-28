<?php
header('Access-Control-Allow-Origin:*');
$db = new mysqli('localhost','root','','wx');
// 中文编码
if($db->connect_errno !==0){
    die("连接数据库失败");
}
$db -> query('set names utf8');
$sql = "select * from home where type = 'c' and state = 'true'";
$res = $db -> query($sql);
if($res -> num_rows){
    $result = [];
    while($data = $res -> fetch_assoc()){
        array_push($result,$data);
    }
    echo json_encode($result);
}
$db -> close();
?>

