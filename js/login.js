// $(()=>{
//     //1：获取登录按钮件
//     //2：绑定点击事
//     //console.log(1);
//     $("#btn").click(function(e){
//         e.preventDefault();
//         // console.log(2);
//         //3：获取用户名和密码 验证码
//         var u=$("#uname").val();
//         var p=$("#upwd").val();
//         var c=$("#code").val();
//         // console.log(3);
//         // console.log(u+";"+p);
//         //4：创建正则表达式验证用户名和密码 验证码
//         var codeReg=/^[a-z]{4}$/i;
//         if(!codeReg.test(c)){
//             alert("验证码格式不正确，请检查");
//             return;
//         }
//         var reg=/^[a-z0-9]{3,12}$/i;
//         if(!reg.test(u)){
//             alert("用户名格式不正确，请检查");
//             return;
//         }
//         // console.log(4);
//         $.ajax({//具有错误处理功能，其他$.get $.post没有
//             type:"POST",//客户端将数据发送给服务端
//             //5：发送ajax请求 data/02_login.php
//             url:"data/user/login.php",
//             // $.get("data/02_login.php",(uname,upwd);
//             data:{uname:u,upwd:p,code:c},//有参数传给php
//             //6：并且获取返回结果
//             success:function(data){
//                 // console.log(5);
//                 // console.log(data);//js对象
//                 if(data.code>0){
//                     alert(data.msg);
//                     //7：判断登录是否成功
//                     //8：成功跳转 index.html
//                     //如果登录成功，跳转到主程序页面
//                     location.href="index.html";
//                 }else{
//                     alert(data.msg);
//                 }
//             },//发送请求，接收请求正确的情况下
//             //9：失败显示出错信息
//             error:function(){//发送请求，接收请求失败时
//                 alert("网络故障，请检查");
//                 /*几种错误情况
//                 1：php语法出错
//                 2：php sql语法出错
//                 3：php header出错
//                 4：请求地址不正确或者参数出错*/
//             }
//         })
//     })
// })

$(()=>{
    var $form=$("form");
    $("[data-loginbtn=btn]").click(()=>{
        $.post("data/user/login.php",$form.serialize())
            .then(text=>{
                if(text=="false"){
                    $(".assign-content>.alert").show();
                    setTimeout(()=>{$(".assign-content>.alert").hide()},2000);
                    // $(".assign-content>.alert").show();
                    // alert("用户名或密码不正确！")
                    $form[0].reset();
                }else{
                    // alert("登录成功！");
                    if(location.search!=="") {
                        var back = location.search.slice(6);
                        location = back;
                    }else{
                        location="index.html";
                    }
                }
        })
    });
    $(window).keyup(e=>{//模拟触发
        if(e.keyCode==13) $("[data-loginbtn=btn]").click();
    })
})