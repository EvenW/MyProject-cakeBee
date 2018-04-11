<?php
//设置响应数据格式json
header("Content-Type:application/json;SET NAMES UTF8");
//1:加载数据库连接
require_once("../init.php");
//2:获取两个参数 pno pageSize
$pno=$_REQUEST["pno"];
$pageSize=$_REQUEST["pageSize"];
//3:正则表达式验证
$pnoPattern='/^[0-9]{1,5}$/';
if(!preg_match($pnoPattern,$pno)){
	echo '{"code":-1,"msg":"页码格式不正确"}';
	exit;//停止php执行
}
//判断当前页是否小于1，是则赋值为1
if($pno<1){
	$pno=1;
}
if(!preg_match($pnoPattern,$pageSize)){
	echo '"code":-2,"msg":"页大小格式不正确"';
	exit;//停止php执行
}
if($pageSize<1){
	$pageSize=8;
}
//4:获取当前产品数据记录数  xz_laptop
$sql1="select count(plid) as c from bee_comment";
$result=mysqli_query($conn,$sql1);
$row=mysqli_fetch_row($result);
if(mysqli_error($conn)){
	echo mysqli_error($conn);
}
//echo ":".$row[0];
$pageCount=ceil($row[0]/$pageSize);
//5:获取当前页产品内容 uid cid grade1 grade2 grade3 comment_detail comment_time
$offset=($pno-1)*$pageSize;
$sql2="select bc.*,bu.uname from bee_comment bc,bee_user bu where bc.uid=bu.uid order by bc.comment_time desc limit $offset,$pageSize";
$result=mysqli_query($conn,$sql2);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
if(mysqli_error($conn)){
	echo mysqli_error($conn);
}
//var_dump($rows);
//6:创建json数据发送
$output=
[
	"pno"=>$pno,
	"pageSize"=>$pageSize,
	"pageCount"=>$pageCount,
	"data"=>$rows
];
//var_dump($output)
echo json_encode($output);
?>