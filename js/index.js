// 加载楼层1
$(()=>{//事件绑定
    // $.ajax({
    //     type:"get",
    //     url:"data/index/getFloor1.php",
    //     // dataType:"json"}
    // )
    $.get("data/index/getFloor1.php")
        .then(resData=>{
            var html="";
            for(var p of resData){
                html+=`<li>
						<a href="${p.href}">
							<div class="image" style="background-image: url('${p.pic_top}');"></div>
							<div class="detailImg" style="background-image: url('${p.pic_bottom}');"></div>
							<div class="desc">
								<h3>${p.title}</h3>
								<h4>¥${p.price}</h4>
							</div>
						</a>
					</li>`;
            }
            // console.log(resData);
            document.querySelector("#f1 .display>ul").innerHTML=html;
        })
});
// 加载楼层2
$(()=>{
    // $.ajax({
    //     type:"get",
    //     url:"data/index/getFloor2.php",
    //     // dataType:"json"}
    // )
    $.get("data/index/getFloor2.php")
        .then(resData=>{
            var html="";
            for(var p of resData){
                html+=`<li>
						<a href="${p.href}">
							<div class="image" style="background-image: url('${p.pic_top}');"></div>
							<div class="detailImg" style="background-image: url('${p.pic_bottom}');"></div>
							<div class="desc">
								<h3>${p.title}</h3>
								<h4>¥${p.price}</h4>
							</div>
						</a>
					</li>`;
            }
            // console.log(resData);
            document.querySelector("#f2 .display>ul").innerHTML=html;
        })
});
// 加载楼层3
$(()=>{
    // $.ajax({
    //     type:"get",
    //     url:"data/index/getFloor3.php",
    //     // dataType:"json"}
    // )
    $.get("data/index/getFloor3.php")
        .then(resData=>{
            var html="";
            for(var p of resData){
                html+=`<li>
						<a href="${p.href}">
							<div class="image" style="background-image: url('${p.pic_top}');"></div>
							<div class="detailImg" style="background-image: url('${p.pic_bottom}');"></div>
							<div class="desc">
								<h3>${p.title}</h3>
								<h4>${p.details}</h4>
							</div>
						</a>
					</li>`;
            }
            // console.log(resData);
            document.querySelector("#f3 .display>ul").innerHTML=html;
        })
});