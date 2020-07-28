<?php
header('Access-Control-Allow-Origin:*');
$pwo = $_POST['pwo'];
$tel = $_POST['tel'];
$state = $_POST['state'];
$db = new mysqli('localhost', 'root', '', 'wx');
if ($db->connect_errno) {
    die('请求数据库失败');
}
$db->query('set names utf8');
$sql = "select * from user where tel = '$tel'";
$res = $db->query($sql);
if ($res->num_rows) {
    echo "0";
} else {
        $id = time();
        $sql = "insert into user (pwo,tel,id,state) values ('{$pwo}','{$tel}','{$id}','{$state}')";
        $res = $db->query($sql);
        if ($res) {
            echo "2";
        } else {
            echo "3";
        }
}

$db->close();


?>
