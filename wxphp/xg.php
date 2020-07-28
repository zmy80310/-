<?php
header('Access-Control-Allow-Origin:*');
$id = $_POST['id'];
$name = $_POST['name'];
$text = $_POST['text'];
$price = $_POST['price'];
$number = $_POST['number'];
$src = $_POST['src'];
$db = new mysqli('localhost','root','','wx');
if($db -> connect_errno){
    die('连接数据库失败');
}
$db->query('set names utf8');
$sql = "update home set name = '{$name}',text = '{$text}',price = '{$price}',number = '{$number}',src = '{$src}' where  id = '$id'";
$res = $db->query($sql);
if($res){
    $sql = "select * from home where type = 'falls' or type = 'c' or type = 'chooce' or type = '新品' or type = '众筹' or type = '小米手机' or type = 'Redmi' or type = '黑鲨' or type = '电视' or type = '大家电' or type = '电脑办公' or type = '小爱智能' or type = '路由器' or type = '生活电器' or type = '厨房电器' or type = '智能穿戴' or type = '智能家居' or type = '车载出行' or type = '个护健康' or type = '数码配件' or type = '日用百货' or type = '有品精选' or type = '服务'";
    $res = $db->query($sql);
    $result = [];
    while($data = $res -> fetch_assoc()){
        array_push($result,$data);
    }
    echo json_encode($result);

}else{
    echo "修改失败";
}
$db -> close();



















?>
