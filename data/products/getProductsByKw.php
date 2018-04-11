<?php
//data/products/getProductsByKw.php
//产品列表页，分类检索
header("Content-Type:application/json");
require_once("../init.php");
@$kw1=$_REQUEST["kw1"];//分类
@$kw2=$_REQUEST["kw2"];//人群
@$kw3=$_REQUEST["kw3"];//口味
$sql="select c.*,p.imgtop,p.imgbottom,s.price,s.size from bee_cake c,bee_cake_pic p,(select cid,price,size from bee_cake_size group by cid order by cid,price) s where c.cid=p.cid and c.cid=s.cid ";
if($kw1||$kw2||$kw3){//如三个查询中最少有一个不为空
	$sql.=" and c.category like '%$kw1%' and c.propose like '%$kw2%' and c.flavour like '%$kw3%' ";//sql拼接
}
//var_dump($sql);
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));


?>