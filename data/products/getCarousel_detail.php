<?php
//data/index/getCarousel.php
header("Content-Type:application/json");
require_once("../init.php");
@$cid=$_REQUEST["cid"];
//$cid=22;//测试
$sql="select * from bee_detail_carousel where cid='$cid'";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));
?>