//get  post
	function ajax({type,url,data,dataType}){//{"type":type,"url":url,"data":data}
		return new Promise(callback=>{
			//1.创建xhr对象
			var xhr=new XMLHttpRequest();
			//拼接参数data："uname=wuqingwan&upwd=123456"
			//如果type是get，且data不为空，才+?+data
			if(type.toLowerCase()==="get" && data!==undefined){
				url+="?"+data;
				}
			//2.创建请求
			xhr.open(type,url,true);
			//3.设置回调函数-onreadystatechange
			xhr.onreadystatechange=function(){
				//console.log(xhr.readyState);//触发四次
				if(xhr.readyState==4){
					if(xhr.status==200){
						//接收响应数据
						var resData=xhr.responseText;
						//如果响应消息的类型是json
						if(dataType!==undefined && dataType.toLowerCase()==="json"){
							resData=JSON.parse(resData);
							}
						callback(resData);
					}
				}
			}
			//如果是post
			if(type.toLowerCase()==="post"){
			//增加：更改请求消息头
				xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
				}
			//4.发送请求
				xhr.send(type.toLowerCase()=="get"?null:data);
		});
	}