//分类检索
$(()=>{
//	location=location+
//	console.log(location.search);
	$(document.body).on(
		"click",
		"div.searchF>dl:first-child>dd a",
		e=>{
			e.preventDefault();
			var $tar=$(e.target);
//			console.log($tar);
			if(!$tar.is(".selected"))
//				$tar.addClass("selected");
			$tar.addClass("selected").siblings().removeClass("selected");
			if($tar.html().trim()!==""&$tar.html()!=="全部")
				location="lists.html?kw1="+$tar.html().trim()+"&";
//				location="lists.html?kw1="+$tar.html().trim();
			else						
				location="lists.html?";
//				var kf1=$tar.html().trim();
		}
	).on(
		"click",
		"div.searchF>dl:nth-child(2)>dd a",
		e=>{
			e.preventDefault();
			var $tar=$(e.target);
//			console.log($tar);
			if(!$tar.is(".selected"))
//				$tar.addClass("selected");
			$tar.addClass("selected").siblings().removeClass("selected");
			if($tar.html().trim()!==""&$tar.html()!=="全部")
				location+="kw3="+$tar.html().trim()+"&";
			else						
				location+="";
//				kf2=$tar.html().trim();
		}
	)
	.on(
		"click",
		"div.searchF>dl:last-child>dd a",
		e=>{
			var $tar=$(e.target);
//			console.log($tar);
			if(!$tar.is(".selected"))
//				$tar.addClass("selected");
			$tar.addClass("selected").siblings().removeClass("selected");
			if($tar.html().trim()!==""&$tar.html()!=="全部")
				location+="kw2="+$tar.html().trim();
			else						
				location+="";
		}
	)
//	console.log(kf1);
	var search=location.search.slice(1).split("&");//获取地址栏中?后的搜索内容
//	console.dir(search)
//	search.split("&")
	var obj={};
	if(search!==""){
		for(var v of search){
			var kws=v.split("=");
			obj[kws[0]]=decodeURI(kws[1]);
		}
//		var search1=decodeURI(search[0].split("=")[1]);//按＝号切割，取数组中第二个值，并将unicode码转为16进制（如％20转为空格）
//		var search2=decodeURI(search[1].split("=")[1]);
//	console.dir(search1)
//	console.dir(search2)
	}
		console.log(typeof(obj.kw1));
		var kw1=obj.kw1;
		console.log(obj.kw2);
		var kw2=obj.kw2;
		console.log(obj.kw3);
		var kw3=obj.kw3;
	$.ajax({
		type:"get",
		url:"data/products/getProductsByKw.php",
//		data:{search1!==""?"kw1="+search1:undefined,search2!==""?"kw3="+search2:undefined},
		data:{kw1,kw2,kw3},
		dataType:"json"
		}).then(result=>{
			console.log(result);
			var html="";
			for(var p of result){
				html+=`<li>
								<a href="list_detail.html?cid=${p.cid}&size=${p.size}">
									<div class="image" style="background: url('${p.imgtop}')"></div>
									<div class="detailImg" style="background: url('${p.imgbottom}')"></div>
									<div class="desc">
										<h3>${p.title}</h3>
										<h4>¥${p.price}起</h4>
									</div>
								</a>
							</li>`;
			}
			document.getElementById("item-ul").innerHTML=html;
		})
	
})