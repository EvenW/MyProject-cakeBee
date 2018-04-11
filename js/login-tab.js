//登录页面分页页签
$(()=>{
		$(".assign-header:has([data-toggle=tab])")
		  .on("click","[data-toggle=tab]",e=>{
			e.preventDefault();//清除a标签的默认行为
		  var $tar=$(e.target);
              $tar.removeClass("hoverb");
		  if(!$tar.is(".clicked")){
			$tar.addClass("clicked")//当前页签添加class
			  .siblings().removeClass("clicked");//除当前页其他页签移除class
			var id=$tar.attr("href");//页签头部的href内容与内容的id一致
			$(id).addClass("active")
			  .siblings().removeClass("active");
		  }
		})
	}
)
//$(()=>{
//
//	$(".assign-header>a").hover(e=>{
//		var $tar=$(e.target);
//		if(!$tar.is(".clicked"))
//		$tar.toggleClass("hoverb");
//	})
//})
//页签头部鼠标移入移出事件
$(()=>{
	$(".assign-header [data-toggle=tab]").mouseover(e=>{
		var $tar=$(e.target);
		if(!$tar.is(".clicked"))
		$tar.addClass("hoverb");
	})
	.mouseout(e=>{
			var $tar=$(e.target);
			$tar.removeClass("hoverb");
		})
})