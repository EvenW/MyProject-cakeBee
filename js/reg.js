$(()=>{
    //1：获取登录按钮件
    //2：绑定点击事
    //console.log(1);
    
    var flag = { 
        "uname":false, 
        "upwd":false, 
        "code":false,
        "checkUname":false,
        "upwdqr":false
    }; 
    //验证用户名是否存在
    var txtName=document.getElementById("uname");
    var txtPwd=document.getElementById("upwd");
    var txtPwdqr=document.getElementById("upwdqr");
    var txtCode=document.querySelector("[data-valiCode=valiCode]")
	var tips = document.getElementsByClassName('vali_info');
//	var tbn=document.getElementsById("btnreg");
	
//	console.log(tips)
//  var vName=document.querySelector("[data-uname=dataUname]")
//  console.log(txtName)
    txtName.onblur=e=>{
        		checkName(e.target);
        		regName(e.target);
        }
    
    txtPwd.onblur=e=>{
        		regPwd(e.target);
        }
    txtPwdqr.onblur=e=>{
    		checkPwdqr(e.target);
    }
    function checkPwdqr(txt){
	    var valPwdqr=txtPwdqr.value.trim();
    		if(valPwdqr==""){
        		tips[4].style.display='block';
        		tips[4].innerHTML='确认密码不能为空';
        		return false;
    		}else if(valPwdqr===txtPwd.value){
        		tips[4].style.display='block';
        		tips[4].innerHTML='密码一致';
        		flag.upwdqr=true;
        		return;
    		}else{
        		tips[4].style.display='block';
        		tips[4].innerHTML='密码不一致';
        		return;
    		}
    }
//  txtCode.onblur=e=>{
//  		regCode(e.target);
//  }
//  function regCode(txt){
//  		var reg=/^[a-z0-9]{4}$/i;
//      var valCode=txtCode.value.trim();
//      var rez=reg.test(valCode);
//      if(valCode==""){
//      		tips[2].style.display='block';
//      		tips[2].innerHTML='验证码不能为空';
//      }else if(rez=="false"){
//      		tips[2].style.display='block';
//      		tips[2].innerHTML='验证码格式不正确！';
//      }
//      
//  }
        function checkName(txt){
//      	console.log()
        		return new Promise(callback=>{
//      			console.log(3)
        			ajax({
        				type:"post",
        				url:"data/user/checkName.php",
        				data:"uname="+txt.value.trim(),
        				dataType:"text"
        			}).then(
        				text=>{
//      					console.log(text)
        					if(text=="false"){
        						alert("用户名已存在！")
//							vName.css("display","block");
//							vName.style.display='block';
        						txtName.value="";
//      						txtName.onfocus
        		return;
        					}
        					else{
        						callback();
        						flag.checkUname=true;
        						return;
        					}
        				}
        			)
        		})
        }
        function regName(txt){
//	        		console.log(1)
	        var reg=/^\w{6,20}$/g;//用户名长度在20个字符以内
	        var valName=txtName.value.trim();
	        var rez=reg.test(valName);
//	        console.log(rez)
//	        console.log(3)
	        if(rez==true){
//	        		console.log(2)
	        		tips[0].style.display='block';
	        		tips[0].innerHTML='格式正确';
	        		flag.uname=true;
	        		return;
	        }else if(valName==""){
	        		tips[0].style.display='block';
	        		tips[0].innerHTML='用户名不能为空';
        		return;
	        }else{
	        		tips[0].style.display='block';
	        		tips[0].innerHTML='用户名必须在长度在20个字符以内';
        		return;
	        }
        }
        function regPwd(txt){
//	        		console.log(1)
	        var reg=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z\d]{6,20}$/g;//密码必须有大小写字母和数字且6-20
	        var valPwd=txtPwd.value.trim();
	        var rez=reg.test(valPwd);
//	        console.log(rez)
//	        console.log(3)
	        if(rez==true){
//	        		console.log(2)
	        		tips[3].style.display='block';
	        		tips[3].innerHTML='格式正确';
	        		flag.upwd=true;
	        		return;
	        }else if(valPwd==""){
	        		tips[3].style.display='block';
	        		tips[3].innerHTML='密码不能为空';
        		return;
	        }else{
	        		tips[3].style.display='block';
	        		tips[3].innerHTML='密码必须有大小写字母和数字且6-20';
        		return;
	        }
        }
        //表单内容验证
        //3：获取用户名和密码 验证码
//      var u=$("#uname").val().trim();
//      var p=$("#upwd").val().trim();
//      var q=$("#upwdqr").val().trim();
//      var c=$("[data-valiCode=valiCode]").val();
//		console.log(tips)
//      console.log(3);
//      console.log(u+";"+p);
        //4：创建正则表达式验证用户名和密码 验证码
//      var codeReg=/^[a-z0-9]{4}$/i;
//      if(!codeReg.test(c)){
//          alert("验证码格式不正确，请检查");
//          return;
//      }
//		$("#uname").blur(()=>{
//	        		console.log(1)
//	        var reg=/^\w{6,20}$/g;//用户名长度在20个字符以内
//	        console.log(reg.test(u))
//	        console.log(3)
//	        if(reg.test(u)==true){
//	        		console.log(2)
//	        		$(".vali_info").first().show().html('格式正确');
////	        		tips[0].html('格式正确');
//	        }else if(u==""){
//	        		$(".vali_info").first().show().html('用户名不能为空');
////	        		tips[0].html('用户名不能为空');
//	        }else{
////	        		$(".vali_info").first().show();
//	        		$("#uname").val()="";
//	        }
////	       if(!reg.test(u)){
////	            alert("用户名格式不正确，请检查");
////	            return;
////	        }
//    })
//     var regp=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z\d]{6,20}$/g;  //密码必须有大小写字母和数字且6-20位
	        
//      console.log(4);
//      if(!regp.test(p)){
//          alert("密码格式不正确，请检查");
//          return;
//      }
//      if(q!==p){
//      		alert("密码不一致，请重试");
//      		return;
//      }
//      //注册按钮单击事件
        $("#btnreg").click(function(e){
        e.preventDefault();
////      console.log(2);
//
//      var c=$("[data-valiCode=valiCode]").val();
//      var codeReg=/^[a-z0-9]{4}$/i;
//      if(c==""){
//	        		tips[3].style.display='block';
//	        		tips[3].innerHTML='验证码不能为空';
//	       }else if(!codeReg.test(c)){
////          alert("验证码格式不正确，请检查");
////          return;
//	        		tips[2].style.display='block';
//	        		tips[2].innerHTML='验证码格式不正确，请检查';
//	        }
//      if(q!==txtPwd){
//      		alert("密码不一致，请重试");
//      		return;
//      }
	var ok = flag.checkUname&&flag.code&&flag.uname&&flag.upwd&&flag.upwdqr; 
                                    if(ok==false){  
                                        history.back(); 
                                        return false; 
                                    } 
        $.ajax({//具有错误处理功能，其他$.get $.post没有
            type:"POST",//客户端将数据发送给服务端
            //5：发送ajax请求 data/02_login.php
            url:"data/user/reg.php",
            // $.get("data/02_login.php",(uname,upwd);
            data:{uname:txtName,upwd:txtPwd,code:c},//有参数传给php
            //6：并且获取返回结果
            success:function(data){
//              console.log(5);
//              console.log(data);//js对象
                if(data){
                    alert("注册成功，将跳转到登录页面");
//                  console.log(7)
                    //7：判断登录是否成功
                    //8：成功跳转 index.html
                    //如果登录成功，跳转到主程序页面
                    location.href="login.html";
                }else{
                    alert("注册失败");
                }
            },//发送请求，接收请求正确的情况下
            //9：失败显示出错信息
            error:function(){//发送请求，接收请求失败时
                alert("网络故障，请检查");
                /*几种错误情况
                1：php语法出错
                2：php sql语法出错
                3：php header出错
                4：请求地址不正确或者参数出错*/
            }
        })
    })
        
    $(window).keyup(e=>{//模拟触发
        if(e.keyCode==13) $("#btnreg").click();
    })
//  btn.onclick=()=>{
//  	
//  }
})