<?php
//data/users/login.php
require_once("../init.php");
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
if($uname&&$upwd){
    $sql="select uid from bee_user where uname='$uname' and binary upwd=md5('$upwd')";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);
//echo $row!=null?"true":"false";
if($row){
    session_start();
    $_SESSION["uid"]=$row[0];
    echo "true";
}else{
    echo "false";
    }
}else{
    echo "false";
}
?>