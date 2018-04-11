$(() => {
	
	//为过滤按钮绑定点击事件
	$('.searchF li > a').on('click',function(e){
		//获取当前点击的dom元素
		var $tar = $(e.target);
		//为当前元素添加选中class ， 同时，移除其他同类元素的选中class
		$tar.addClass('selected').parent().siblings().find('a').removeClass('selected');
		//调用获取搜索关键字方法
		var [kw1,kw2,kw3] = getKeyword();
		//调用ajax请求 将搜索关键字传入
		getList({kw1,kw2,kw3});
		
	})
	
	//为'全部'按钮绑定点击事件
	$('[data-event=allBtn]').on('click',function(e){
		//获取当前点击的dom元素
		var $tar = $(e.target);
		//找到和当前按钮同级的列表中的a元素，并将所有元素移除选中class
		$tar.parent().parent().next().find('li > a').removeClass('selected');
		//调用获取搜索关键字方法
		var [kw1,kw2,kw3] = getKeyword();
		//调用ajax请求 将搜索关键字传入
		getList({kw1,kw2,kw3});
		
	})
	//获取搜索关键字方法
	function getKeyword(){
		//获取kw1下已选中的a元素，并获取其文字内容
		var kw1 = $('[data-kw=kw1] li a.selected').text();
		//获取kw2下已选中的a元素，并获取其文字内容
		var kw2 = $('[data-kw=kw2] li a.selected').text();
		//获取kw3下已选中的a元素，并获取其文字内容
		var kw3 = $('[data-kw=kw3] li a.selected').text();
		//将获取到的搜索关键字以数组形式抛出
		return [kw1,kw2,kw3];
	}
	
	function getList({kw1,kw2,kw3}) {
		$.ajax({
			type: "get",
			url: "data/products/getProductsByKw.php",
			//		data:{search1!==""?"kw1="+search1:undefined,search2!==""?"kw3="+search2:undefined},
			data: {
				kw1,
				kw2,
				kw3
			},
			dataType: "json"
		}).then(result => {
			console.log(result);
			var html = "";
			for(var p of result) {
				html += `<li>
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
			document.getElementById("item-ul").innerHTML = html;
		})
	}
})