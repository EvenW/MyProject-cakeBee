<?php
require_once("../init.php");
@$uname=$_REQUEST["uname"];
if($uname){
	$sql="select * from bee_user where uname='$uname'";
	$result=mysqli_query($conn,$sql);
	$users=mysqli_fetch_all($result,MYSQLI_ASSOC);//MYSQLI_ASSOC关联数组
//	var_dump(count($users));
	if(count($users)!=0)
		echo "false";
	else
		echo "true";
}

?>