<?php
header('Access-Control-Allow-Origin:*');
$name = $_POST['name'];
$tel = $_POST['tel'];
$cell = $_POST['cell'];
$cite = $_POST['cite'];
$address = $_POST['address'];
$id = time();
$db = new mysqli('localhost','root','','wx');
if($db->connect_errno){
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "insert into site(id,name,cell,tel,address,city) values('$id','$name','$cell','$tel','$address','$cite')";

$res = $db->query($sql);

if($res){
    echo '1';
}else{
    echo "0";
}

$db->close();















?>
