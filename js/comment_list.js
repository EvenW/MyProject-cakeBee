//评论区，分页
//$(()=>{
	/**
	 * 功能：分页显示评论信息
	 * @param {Object} pno  页码  示例：1，2，3，4...
	 * @param {Object} pageSize   页中记录数  示例：8，10..
	 */
	function loadCommentListByPno(pno,pageSize){
		console.log(1)
//		get  获取数据［php select］
//		post  需要给服务器，服务器进行验证，登录
//		1:发送ajax请求 data/products/comment_list.php
		$.ajax({
			type:"GET",
			url:"data/products/comment_list.php",//目录，以当前网站地址栏为准
			data:{pno,pageSize},
			success:function(data){
				console.log(2);
				console.log(data);
//				console.log(data);
//				2：参数pno/pageSize
				console.log(data.pno);
				console.log(pageSize);
//				3:获取返回数据
				console.log(data.pageCount);
//				4:创建变量保存拼接字符串
				var html="";
//				5:拼接当前页内容
				for(var item of data.data){
					html+=`<li>
						<!--uname-->
						<div class="comment-name">${item.uname}<span class="comment-time">${item.comment_time}</span></div>
						<!--点评星星-->
						<div class="comment-star">
							<div>
								<span class="star">口感</span>
							</div>
							<div>
								<span class="star">配送</span>
							</div>
							<div>
								<span class="star">包装</span>
							</div>
						</div>
						<!--评论内容-->
						<p class="comment-content">${item.comment_detail}</p>
					</li>`;
					
			//		口感
					$("#comment-lists>li>.comment-star>div:first-child>span").addClass("star"+item.grade1);
			//		配送
					$("#comment-lists>li>.comment-star>div:nth-child(2)>span").addClass("star"+item.grade2);
			//		包装
					$("#comment-lists>li>.comment-star>div:last-child>span").addClass("star"+item.grade3);
				}
//				6:保存#comment-lists标签中间
				$("#comment-lists").html(html);
			},
			error:function(){
				console.log(3);
				alert("网络故障请检查");
			}
		});
	}
	loadCommentListByPno(1,8);
//})