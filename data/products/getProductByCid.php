<?php
//data/products/getProductByCid.php
header("Content-Type:application/json");
require_once("../init.php");
@$cid=$_REQUEST["cid"];
//$cid=16;
@$size=$_REQUEST["size"];
//$size=20;
//if($size==null){
//	$size="";
//}
$output=[//创建空数组对象，存储返回值
	//"product"=>{cid,family_id,title,...}
	//"spec"=>[{lid:1,spec:xxx},{lid:2,spec:xxx},...]
	//"imgs"=>[{sm:xxx,md:xxx,lg:xxx},xxx]
];
if($cid&&$size){
//	$sql=" select * from bee_cake c,bee_cake_size cs where c.cid=$cid and cs.cid=c.cid and cs.size=$size";
//	获取右侧商品信息
//	$sql=" select * from bee_cake c,bee_cake_size cs where c.cid=$cid and cs.cid=c.cid and cs.size=$size";
	$sql=" select * from bee_cake c,bee_cake_size cs where c.cid=$cid and cs.cid=c.cid and cs.size=$size";
	$result=mysqli_query($conn,$sql);
	$product=mysqli_fetch_all($result,1)[0];
//	echo $product;
	$output["product"]=$product;
	$fid=$product["fid"];
//	echo $fid;
	$size=$product["size"];
	
//	获取尺寸数据
	$sql=" select * from bee_cake c,bee_cake_size cs where c.cid=$cid and cs.cid=c.cid";
//	$sql="select * from bee_size_pic where fid=$fid ";
	$result=mysqli_query($conn,$sql);
	$output["sizes"]=mysqli_fetch_all($result,1);
	
	
//	获取尺寸图片数据
	$sql="select * from bee_size_pic where fid=$fid and size=$size";
//	$sql="select * from bee_size_pic where fid=$fid ";
	$result=mysqli_query($conn,$sql);
	$output["sizeimgs"]=mysqli_fetch_all($result,1);
	
//	获取产品规格
	$sql="select * from bee_cake_category where fid=$fid and size=$size";
//	$sql="select * from bee_cake_category where fid=$fid order by size";
	$result=mysqli_query($conn,$sql);
	$output["specs"]=mysqli_fetch_all($result,1);
	
//	获取轮播图
	$sql="select caroimg from bee_detail_carousel where cid=$cid";
	$result=mysqli_query($conn,$sql);
	$output["caroimgs"]=mysqli_fetch_all($result,1);
	
//	详细信息区域
	$sql="select cimg from bee_detail_content where cid=$cid order by cid,cimg";
	$result=mysqli_query($conn,$sql);
	$output["cimgs"]=mysqli_fetch_all($result,1);
	
////	评论信息区域
//	$sql="select bc.*,bu.uname from bee_comment bc,bee_user bu where bc.uid=bu.uid and bc.cid=$cid order by bc.comment_time desc";
//	$result=mysqli_query($conn,$sql);
//	$output["comments"]=mysqli_fetch_all($result,1);
//	
	//	评论信息区域-test
	$sql="select bc.*,bu.uname from bee_comment bc,bee_user bu where bc.uid=bu.uid and bc.cid=$cid order by bc.comment_time desc";
	$result=mysqli_query($conn,$sql);
	$output["comments"]=mysqli_fetch_all($result,1);
	
//	评论数量，好评度
	$sql="select count(plid) count,round((grade1+grade2+grade3)/15*100) avg from bee_comment where cid=$cid";
	$result=mysqli_query($conn,$sql);
	$output["scores"]=mysqli_fetch_all($result,1);
}
echo json_encode($output);
?>