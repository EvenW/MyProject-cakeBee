// 商品轮播
$(()=>{
	var arg=location.search.slice(1).split("&");//"?cid=1&size=17"
	//	console.log(arg);
	var cid=arg[0].split("=")[1];
	var timer=null,moved=0,duration=3000,wait=0;
	$.ajax({
		type:"get",
		url:"data/products/getCarousel_detail.php",
		data:"cid="+cid,
		dataType:"json"
	}).then(data=>{
		var html="";
		var html1="";
		//拼接轮播图html
		for(var p of data){
			html+=`<div style="background-image:url('${p.caroimg}')"></div>`;
		}
		//拼接小圆点html
		for(var key in data){
			num=parseInt(key)+1;
			html1+=`<span>${num}</span>`;
		}
		$(".banner-img").html(html);
		$(".banner-img").children().first().addClass("show");
		//获得第一个小圆点
		var $ulInds=$("[data-load=bannerInds]");
		$ulInds.html(html1).children().first().addClass("selected-btn");
		//周期性定时器
		timer=setInterval(()=>{
			moved++;
			task();
		},duration+wait);
		//鼠标放在小圆点上定位轮播图
		$ulInds.on("mouseover","span",e=>{
			moved=$(e.target).index();
			//防动画/定时器叠加
			clearInterval(timer);
			task();
		});
		//轮播事件
		function task(){
			if(moved==3){moved=0}
			$ulInds.children(`:eq(${moved})`).addClass("selected-btn")
					.siblings().removeClass("selected-btn");//小圆点先动
					
			$(".banner-img").children(`:eq(${moved-1})`).addClass("show")
					.siblings().removeClass("show");
			
			var show=document.querySelector("section>.banner-container>.banner>.banner-img>div.show");
			show.className="";
//			判断当前轮播图是否为最后一张,如果是最后一张,设置从第一张开始
			if(show.nextElementSibling!=null){
				show.nextElementSibling.className="show";
			}else{
				show.parentNode.children[0].className="show";
			} 
		};
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
//获取页面头部及内容数据
$(()=>{
	var arg=location.search.slice(1).split("&");//"?cid=1&size=17"
//	console.log(arg);
	var cid=arg[0].split("=")[1];
//	console.log(typeof(cid));
	var size=arg[1].split("=")[1];
//	console.log(size);
	$.ajax({
		type:"get",
		url:"data/products/getProductByCid.php",
		data:{cid,size},
		dataType:"json"
	}).then(output=>{
//		console.log(output);
//		解构
		var {product,sizeimgs,sizes,specs,caroimgs,cimgs,comments,scores}=output;
		$(".details-info>h1.info-title").html(product.title);
		$(".details-info>dl>dd>p").html(product.subtitle);
//		蜜度
		$(".details-info>dl>dt>span.md").addClass("star"+product.level1);
//		芝度
		$(".details-info>dl>dt>span.zd").addClass("star"+product.level2);
//		脂度
		$(".details-info>dl>dt>span.zfd").addClass("star"+product.level3);
//		console.log(sizeimgs[0])
		$(".details-info>.size-spec>.size-img>img").attr("src",sizeimgs[0].sizeimg);
		
		$(".size-info>.size-pt").html(product.weight);
		$(".size-info>.size-pan>span").html(specs[0].pmax);
		$(".size-info>.size-pnum>span").html(specs[0].pmin+"-"+specs[0].pmax);
		$(".size-info>.size-price>i").html("¥"+product.price+"/");
		var unit=(specs[0].unit=="厘米"?"cm":"g");
		$(".size-info>.size-price>span").html(product.size+unit);
//		console.log(scores)
		$(".comment-container span.comment-count").html(scores[0].count);
		$(".comment-container h3.list_ratings").html("好评度"+scores[0].avg+"%");
		var html="";
//		尺寸选择
		for(var size of sizes){
//			console.log(size);
			html+=`<li class=${size.cid===product.cid&&size.size===product.size?"default":""}><a href="list_detail.html?cid=${size.cid}&size=${size.size}">${size.size}${size.fid=="3"?"g":"厘米"}</a></li>`;
		}
		$(".size-select>ul").html(html);
		var html1="";
		for(var cimg of cimgs){
			html1+=`<img src="${cimg.cimg}" alt="${product.title} ebeecake 小蜜蜂蛋糕" />`;
		}
		$(".content-detail").html(html1);
		var html2="";
//				拼接评论内容
				for(var item of comments){
//					console.log(item);
					html2+=`<li>
						<!--uname-->
						<div class="comment-name">${item.uname}<span class="comment-time">${item.comment_time}</span></div>
						<!--点评星星-->
						<div class="comment-star">
							<div>
								<span class="star star${item.grade1}" id="favour">口感</span>
							</div>
							<div>
								<span class="star star${item.grade2}">配送</span>
							</div>
							<div>
								<span class="star star${item.grade3}">包装</span>
							</div>
						</div>
						<!--评论内容-->
						<p class="comment-content">${item.comment_detail}</p>
					</li>`;
				}
//				保存#comment-lists标签中间
				$("#comment-lists").html(html2);
	}
		
	)
})
//大家都在看部分
$(()=>{
	    $.get("data/products/getRecommendTop4.php")
        .then(resData=>{
            var html="";
            for(var p of resData){
                html+=`<li>
							<a href="list_detail.html?cid=${p.cid}&size=${p.size}">
								<div class="image" style="background-image: url('${p.imgtop}');"></div>
							<div class="detailImg" style="background-image: url('${p.imgbottom}');"></div>
							<div class="desc">
								<h3>${p.title}</h3>
								<h4>¥${p.price}</h4>
							</div>
							</a>
						</li>`;
            }
            // console.log(resData);
            $(".detail-recommend>.item>ul.item-ul").html(html);
        })
})

