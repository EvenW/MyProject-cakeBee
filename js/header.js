//载入header.html
$(()=>{
    $("#header").load(
        "header.html",
        ()=>{
            //判断登录状态
            //显示或隐藏登录注册按钮
            function isLogin(){
                $.get("data/user/isLogin.php")
                    .then(data=>{
                    if(data.ok==0){
                    $("[data-toggle=loginList]").show()
                        .next().hide();
                    }else{
                        $("[data-toggle=loginList]").hide()
                            .next().show()
                            .find("[data-name=uname]")
                            .html(data.uname);
                    }
                })
            }
            isLogin();
            $(document.body).on(//冒泡
                "click",
                "[data-toggle=loginList]>a:first-child",
                e=>{
                       var $tar=$(e.target);
                       location="login.html?back="+location.href;
                }
            );
            //注销
            $(document.body).on(
                "click",
                "[data-toggle=welcomeList]>a:last-child",
                e=>{
                    $.get("data/user/logout.php").then(()=>{
                        location.reload(true);
                    })
                }
            );
            // //注册
            // $(document.body).on(
            //     "click",
            //     "[data-toggle=loginList]>a:last-child",
            //     e=>{}
            // )
            
//          头部根据当前页面,按钮高亮
            var urlstr = location.pathname.split('/')[2];  
//			console.log(urlstr);  
  			var urlstatus=false; 
 			for(var a of $("#nav-center > li > a")){	
				if($(a).attr('href') == urlstr){
					$(a).addClass('cur').parent().siblings().children('a').removeClass('cur');
					urlstatus=true;
  				}else{
  					$(a).removeClass('cur');
  				}
  			};
//			如果不在按钮栏内
			if (!urlstatus){
				if(urlstr=="list_detail.html")
//				如果进入详情页,蛋糕按钮高亮
					{$(".nav-center a").eq(1).addClass('cur').siblings().removeClass('cur'); }
				else
//				如果点击登录,注册,会员中心按钮高亮
					{$(".nav-center a").eq(5).addClass('cur').siblings().removeClass('cur'); }
			}
        }
    )
});
//header滚动效果
$(()=>{
    $(window).scroll(()=>{
        var scrollTop=$(window).scrollTop();
        if(scrollTop>=71){
        $("#header-top").clone(true)
            .addClass("fixed_nav")
            .appendTo(document.body);
        }else{
            $(".fixed_nav").remove();
        }
    })
});
//头部菜单按钮跳转
//function login() {
//	  open("login.html", "_self");
//}
//function reg() {
//	  open("reg.html", "_self");
//}
//function index() {
//	  open("index.html", "_self");
//}
//function list() {
//	  open("lists.html", "_self");
// }
//console.log(location.pathname.slice(1).split("/")[1]);
//$(()=>{
//	var here=location.pathname.slice(1).split("/")[1];
//	if(here=="lists.html"){
//		console.log(1);
//		$(".nav-center>li:nth-child(2)>a").css("color","#C8B49B");
//	}
//	
//})

