<?php
//02_login.php
session_start();
require("../init.php");
//4:获取二个参数 uname upwd
@$uname = $_REQUEST["uname"];
@$upwd = $_REQUEST["upwd"];
@$code = $_REQUEST["code"];  //获取用户输入验证码
$cPattern = '/^[a-z0-9]{4}$/'; //创建正则表达式
if(!preg_match($cPattern,$code)){    //判断用户输入格式
   echo '{"code":-3,"msg":"验证码格式不正确"}';
   exit; //停止php执行
}
//$_SESSION['code'];全小写验证表达式
if($code != $_SESSION['code']){
    echo '{"code":-4,"msg":"验证码错误，请重试"}';
    exit; //停止php执行
}
//4.1 创建二个变量保存正则表达式验证用户名密码格式
//4.2 创建用户名正则表达式 
$uPattern = '/^\w{6,20}$/g';//用户名长度在20个字符以内
$pPattern = '/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z\d]{6,20}$/g';//密码必须有大小写字母和数字且6-20位
//4.3 验证用户名
if(!preg_match($uPattern,$uname)){
  //4.4 输出出错提示
  echo '{"code":-2,"msg":"用户名格式不正确"}';
  exit; //停止php执行
}
if(!preg_match($pPattern,$upwd)){
  //4.4 输出出错提示
  echo '{"code":-3,"msg":"密码格式不正确"}';
  exit; //停止php执行
}
//5:创建sql语句##注意大小写
//如果出现如下错误:原因sql语法写错了!
//expects parameter 1 to be mysqli_result
$sql = " INSERT INTO bee_user(uid,uname,upwd) VALUES(null,'$uname',md5('$upwd')) ";
//6:发送sql语句
$result = mysqli_query($conn,$sql);
//6.1 判断sql语句是否有错
if($result===false){
	echo false;
}else{
	echo true;
}
//if(mysqli_error($conn)){
// echo mysqli_error($conn);
//}
//7:获取数据库返回结果
//8:判断返回结果
//9:依据结果发送json格式数据

?>