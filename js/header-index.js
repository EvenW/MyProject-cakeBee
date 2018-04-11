//载入header-index.html
$(()=>{
    $("#indexh").load(
        "header-index.html",
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
        }
    )
});

//头部菜单按钮跳转
function login() {
	  open("login.html", "_blank");
  }
function reg() {
	  open("reg.html", ".._self");
  }
function index() {
	  open("index.html", "_self");
  }
function list() {
	  open("lists.html", "_blank");
  }