<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/style2.css" rel="stylesheet" />
 
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
<div id="wrapper">
	<!-- start header -->
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                  <a class="navbar-brand" href="homepage.html"><img src="images/asdasdasdasdasdaddemo.png" alt="logo"/></a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                    	 <li><a href="../login.jsp">登录页</a></li> 
                        <li><a href="homepage.jsp">首页</a></li> 
						<li><a href="about.jsp">关于</a></li>
						<li><a href="services.jsp">服务</a></li>
                        <li><a href="portfolio.jsp">代表作品集</a></li>
                        <li class="active"><a href="contact.jsp">联系</a></li>
                        
                    </ul>
                </div>
            </div>
        </div>
	</header><!-- end header -->
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">联系我们</h2>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	
	<div class="container">
	
							<div class="row">
					
							</div>
	<div class="row">
								<div class="col-md-8">
									
									<div class="done">
			<div class="alert alert-success">
				<button type="button" class="close" data-dismiss="alert">×</button>
				Your message has been sent. Thank you!
			</div>
		</div>
									<div class="contact-form">
											
		<form method="post" action="contact.php" id="contactform" class="contact">
											<div class="form-group has-feedback">
												<label for="name">名字*</label>
												<input type="text" class="form-control" name="name" placeholder="">
												<i class="fa fa-user form-control-feedback"></i>
											</div>
											<div class="form-group has-feedback">
												<label for="email">邮箱*</label>
												<input type="email" class="form-control" name="email" placeholder="">
												<i class="fa fa-envelope form-control-feedback"></i>
											</div>
 
											<div class="form-group has-feedback">
												<label for="message">信息*</label>
												<textarea class="form-control" rows="6" name="comment" placeholder=""></textarea>
												<i class="fa fa-pencil form-control-feedback"></i>
											</div>
											<input type="submit" value="提交" id="submit" class="submit btn btn-default">
										</form>
										 
										
									</div>
								</div>
								
							</div>
							
	</div>
 
	</section>
<footer>
            <span><strong>&nbsp;&nbsp;&nbsp;学号:201723360210</strong></span>
            <span><strong>&nbsp;&nbsp;&nbsp; 蔡瑞彬</strong></span>
            <span><strong>&nbsp;&nbsp;&nbsp; 班级:软件技术A1班</strong></span></h3>
        </footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script> 
<script src="js/portfolio/jquery.quicksand.js"></script>
<script src="js/portfolio/setting.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
</body>
</html>