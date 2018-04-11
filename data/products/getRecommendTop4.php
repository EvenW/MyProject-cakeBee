<?php
//data/products/getRecommendTop4.php
header("Content-Type:application/json");
require_once("../init.php");
$sql=" select * from bee_cake c,bee_cake_pic cp,(select * from bee_cake_size group by cid) cs where c.cid=cs.cid and cp.cid=c.cid order by c.pv desc LIMIT 4 ";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));
?>