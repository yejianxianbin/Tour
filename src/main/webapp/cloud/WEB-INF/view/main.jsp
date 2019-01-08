<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<style type="text/css">
#west {
	margin-top: 30px;
	height: 100px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台</title>
<link href="css/default.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="js/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="js/themes/icon.css" />
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.1.2.2.js"></script>
<script type="text/javascript" src='js/outlook2.js'> </script>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/style2.css" rel="stylesheet" />

</head>
<body class="easyui-layout" style="overflow-y: hidden" scroll="no">
	<div id="wrapper">

		<!-- start header -->
		<header>
		<div class="navbar navbar-default navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><img
						src="images/asdasdasdasdasdaddemo.png" /></a>
				</div>
				<div class="navbar-collapse collapse ">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp">登录页</a></li>
						<li><a href="homepage.jsp">首页</a></li>
						<li><a href="about.jsp">关于</a></li>
						<li><a href="services.jsp">服务</a></li>
						<li><a href="portfolio.jsp">代表作品集</a></li>

						<li><a href="contact.jsp">联系</a></li>

					</ul>
				</div>
			</div>
		</div>
		</header>
		<!-- end header -->
	</div>
	<div region="north" split="true" border="false"
		style="overflow: hidden; height: 30px; background: url(images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%; line-height: 20px; color: #fff; font-family: Verdana, 微软雅黑, 黑体">
		<span style="float: right; padding-right: 20px;" class="head">欢迎
			${sessionScope.user.username } <a
			href="http://localhost:8080/cloud/homepage.jsp" id="loginOut">安全退出</a>
		</span> <span style="padding-left: 10px; font-size: 16px;"><img
			src="images/headerLogo.png" width="30" height="20" align="absmiddle" />
			后台</span>
	</div>
	<div region="south" split="true"
		style="height: 30px; background: #D2E0F2;">
		<div class="footer"></div>
	</div>
	<div region="west" hide="true" split="true" title="导航菜单"
		style="width: 180px;" id="west">
		<div id="nav" class="easyui-accordion" fit="true" border="false">
			<!--  导航内容 -->

		</div>

	</div>
	<div id="mainPanle" region="center"
		style="background: #eee; overflow-y: hidden">
		<div id="tabs" class="easyui-tabs" fit="true" border="false">
			<div title="欢迎使用"
				style="padding: 20px; overflow: hidden; color: red;"></div>
		</div>
	</div>



	<script type="text/javascript">
	 var _menus = {"menus":[
						{"menuid":"1","icon":"icon-sys","menuname":"我的文件",
							"menus":[
									{"menuid":"12","menuname":"视频","icon":"icon-log","url":"/cloud/main/class?type=video"},
									{"menuid":"13","menuname":"音乐","icon":"icon-log","url":"/cloud/main/class?type=music"},
									{"menuid":"14","menuname":"照片","icon":"icon-log","url":"/cloud/main/class?type=photo"},
									{"menuid":"15","menuname":"文档","icon":"icon-log","url":"/cloud/main/class?type=document"},
									{"menuid":"16","menuname":"压缩包","icon":"icon-log","url":"/cloud/main/class?type=zip"},
									{"menuid":"17","menuname":"文件管理","icon":"icon-log","url":"/cloud/main/file?dir=0"}
								]
						},{"menuid":"8","icon":"icon-sys","menuname":"资源共享",
							"menus":[{"menuid":"21","menuname":"共享区","icon":"icon-nav","url":"/cloud/main/public"}
								]
						}
				]};


	
      

    </script>
</body>
</html>