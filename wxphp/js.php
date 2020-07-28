<?php
header('Access-Control-Allow-Origin:*');
$number = $_POST['number'];
$id = $_POST['id'];

$db = new mysqli('localhost','root','','wx');
// 中文编码
if($db->connect_errno !== 0){
    die("连接数据库失败");
}
$db -> query('set names utf8');
$sql = "select number from home where id = '$id'";
$res = $db -> query($sql);
if($res->num_rows){
    $res = json_encode($res->fetch_assoc());

    $num = json_decode($res,true);

    if($num['number'] > 10){
        $n = $num['number'] - $number;

        if($n < 0){
            $n = 0;
        }
        $sql = "update home set number = '$n' where id = '$id'";
        $res = $db->query($sql);
        if($res){
            echo "1";
        }else{
            echo "2";
        }
    }else{
        echo '0';
    }

}
$db -> close();
die;
?>



