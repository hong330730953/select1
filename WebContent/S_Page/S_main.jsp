<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Multi-Level Push Menu - Demo 1</title>
		<meta name="description" content="Multi-Level Push Menu: Off-screen navigation with multiple levels" />
		<meta name="keywords" content="multi-level, menu, navigation, off-canvas, off-screen, mobile, levels, nested, transform" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../../favicon.ico">
		<link rel="stylesheet" type="text/css" href="../css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="../css/demo.css" />
		<link rel="stylesheet" type="text/css" href="../css/icons.css" />
		<link rel="stylesheet" type="text/css" href="../css/component.css" />
		<script src="../js/modernizr.custom.js"></script>
	</head>
	<body>
		<div class="container_1">
			<!-- Push Wrapper -->
			<div class="mp-pusher" id="mp-pusher">
			
			<a href="#" id="trigger" class="menu-trigger">打开/关闭 菜单</a>
			<!-- mp-menu -->
				<nav id="mp-menu" class="mp-menu">
					<div class="mp-level">
						<h2 class="icon icon-world">系统</h2>
						<ul>
						<!-- 个人信息 -->
							<li class="icon icon-arrow-left">
								<a class="icon icon-display" href="#">个人信息</a>
								<div class="mp-level">
									<h2 class="icon icon-display">个人信息</h2>
									<ul>
										<li class="icon ">
											<a class="icon icon-phone" href="S_person.jsp">基本信息</a>
										</li>
										<li class="icon ">
											<a class="icon icon-tv" href="S_change.jsp">修改密码</a>
										</li>
									</ul>
								</div>
							</li>
						<!-- 论文选题 -->
							<li>
								<a class="icon icon-tv" href="S_select.jsp">论文选题</a>
							</li>
						<!-- 信息浏览 -->	
							<li>
								<a class="icon icon-news" href="S_message.jsp">信息浏览</a>
							</li>
						<!-- 申请答辩 -->
							<li>
								<a class="icon icon-camera" href="S_apply.jsp">申请答辩</a>
							</li>
						<!-- 查看成绩 -->
							<li>
								<a class="icon icon-shop" href="S_score.jsp">查看成绩</a>
							</li>
							<li><a class="icon icon-photo" href="#">退出系统</a></li>
						</ul>
					</div>
				</nav>
				
				<!-- /mp-menu -->



				<div class="scroller"><!-- this is for emulating position fixed of the nav -->
					<div class="scroller-inner">
						<header class="codrops-header">
							<h1>肇庆学院 <span>大学毕业论文设计管理系统</span></h1>
						</header>
						<div class="content clearfix">
<!-- 							<div class="block block-100" ></div> -->
							
						     <div class="container">
						     ${currentUser.name }
</div>
							
						</div>
					</div><!-- /scroller-inner -->
				</div><!-- /scroller -->
                
			</div><!-- /pusher -->
			
		</div><!-- /container -->
		
		
		
		<script src="../js/classie.js"></script>
		<script src="../js/mlpushmenu.js"></script>
		<script>
			new mlPushMenu( document.getElementById( 'mp-menu' ), document.getElementById( 'trigger' ) );
		</script>
	</body>
</html>