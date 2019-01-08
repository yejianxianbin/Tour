$(document).ready(function(e) {
    

function school(){
		//定义滚动速度
		var speed =0.1;
		//获取<div id="imgbox">元素
		var tail = document.getElementById("tail");
		//复制一个<span>，用于无缝滚动
		tail.innerHTML += tail.innerHTML;
		//获取两个<span>元素
		var span = tail.getElementsByTagName("span");
		//启动定时器，调用滚动函数
		var timer1 = window.setInterval(marquee,speed);
		//鼠标移入时暂停滚动，移出时继续滚动
		tail.onmouseover = function(){
			clearInterval(timer1);
		}
		tail.onmouseout = function(){
			timer1=setInterval(marquee,speed);
		};
		//滚动函数
		function marquee(){
			//当第1个<span>被完全卷出时
			if(tail.scrollLeft > span[0].offsetWidth){
				//将被卷起的内容归0
				tail.scrollLeft = 0;
			}else{
				//否则向左滚动
				++tail.scrollLeft;
			}
		}
	}
	// 调用环境展示函数
	school();	
	});	