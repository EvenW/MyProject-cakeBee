//首页广告轮播
$(()=>{
	var timer=null,moved=0,duration=4000,wait=2000;
	$.ajax({
		type:"get",
		url:"data/index/getCarousel.php",
		dataType:"json"
	}).then(data=>{
		var html="";
		var html1="";
		for(var p of data){
			html+=`<div style="background-image:url('${p.img}')"><a href="${p.href}" title="${p.title}"></a></div>`;
			html1+=`<span>${p.cid}</span>`;
		}
//		var p0=data[0];
//		html+=`<div  class="show" style="background-image:url('${p0.img}')"><a href="${p0.href}" title="${p0.title}"></a></div>`;
		$(".banner-img").html(html);
		$(".banner-img").children().first().addClass("show");
	//获得第一个小圆点
		var $ulInds=$("[data-load=bannerInds]");
//		console.log(data);
		$ulInds.html(html1).children().first().addClass("selected-btn");
		//周期性定时器
		timer=setInterval(()=>{
			moved++;
//			console.log(moved);
			task();
		},duration+wait);
		$ulInds.on("mouseover","span",e=>{
			moved=$(e.target).index();
			console.log(moved);
			//防动画/定时器叠加
			clearInterval(timer);
//			$(".banner-img").stop(true);
			task();
		});
		function task(){
			if(moved==4){moved=0}
			$ulInds.children(`:eq(${moved})`).addClass("selected-btn")
					.siblings().removeClass("selected-btn");//小圆点后动
			$(".banner-img").children(`:eq(${moved-1})`).addClass("show")
					.siblings().removeClass("show");
			
			var show=document.querySelector("header>.banner>.banner-img>div.show");
		//	console.log(show)
			show.className="";
			if(show.nextElementSibling!=null){
				show.nextElementSibling.className="show";
			}else{
				show.parentNode.children[0].className="show";
			} 
		};
//		var bannerImage=document.querySelector("header>.banner>.banner-img");
		//鼠标放上停止轮播
		$(".banner-img").hover(
			()=>{clearInterval(timer);},
			()=>{timer=setInterval(()=>{
			moved++;
			task();
		},wait+duration)
		})
	});
});








/***************************/
/*
  var moved=0,wait=0,duration=3000,timer=null;
  //获得第一个小圆点
		var $ulInds=$("[data-load=bannerInds]");
		$ulInds.children().first().addClass("selected-btn");
		
  function task(){
		var show=document.querySelector("header>.banner>.banner-img>div.show");
	//	console.log(show)
		show.className="";
		if(show.nextElementSibling!=null){
			show.nextElementSibling.className="show";
		}else{
			show.parentNode.children[0].className="show";
		} 
		
		$ulInds.children(`:eq(${moved})`).addClass("selected-btn")
					.siblings().removeClass("selected-btn");//小圆点后动
		
  }
	
//var timer=setInterval(task,3000);
//创建定时器
	timer=setInterval(()=>{
		moved++;
		task();
	},wait+duration);
		
  var bannerImage=document.querySelector("header>.banner>.banner-img");
//鼠标放上停止轮播
//bannerImage.onmouseover=function(){
//		clearInterval(timer);
//		this.timer=null;
//}
$ulInds.on("mouseover","span",e=>{
			moved=$(e.target).index();
			//防动画/定时器叠加
			$ul.stop(true);
			task();
		})
//鼠标移开继续轮播
  bannerImage.onmouseout=function(){
		timer=setInterval(task,3000)
  }
	
		
		$(".banner").hover(
			()=>{clearInterval(timer);},
			()=>{timer=setInterval(()=>{
			moved++;
			task();
		},wait+duration)
		})
		*/
		
	//鼠标点击进入商品页面	
  function item1() {
	  open("lists.html", "_self");
  }
  function item2() {
	  open("lists.html", "_self");
  }
  function item3() {
	  open("lists.html", "_self");
  }
  function item4() {
	  open("lists.html", "_self");
  }