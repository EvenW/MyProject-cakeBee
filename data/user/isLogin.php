<?php
//data/users/isLogin.php
header("Content-Type:application/json");
require_once("../init.php");
session_start();//加载到内存
@$uid=$_SESSION["uid"];
//$uid=1;
if($uid==null)
    echo json_encode(["ok"=>0]);
else{
    $sql="select uname from bee_user where uid=$uid";
    $result=mysqli_query($conn,$sql);
    $row=mysqli_fetch_row($result);
//    var_dump($row[0]);
    echo json_encode(["ok"=>1,"uname"=>$row[0]]);
}
?>