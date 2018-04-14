<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title></title>
		<meta name="description" content="Multi-Level Push Menu: Off-screen navigation with multiple levels" />
		<meta name="keywords" content="multi-level, menu, navigation, off-canvas, off-screen, mobile, levels, nested, transform" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../../favicon.ico">
		
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
 		<link rel="stylesheet" type="text/css" href="../css/bootstrap-select.css"> 
		<link rel="stylesheet" type="text/css" href="../css/bootstrap-datetimepicker.min.css"> 
		
		<link rel="stylesheet" type="text/css" href="../css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="../css/demo.css" />
		<link rel="stylesheet" type="text/css" href="../css/icons.css" />
		<link rel="stylesheet" type="text/css" href="../css/component.css" />
		
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="../js/bootstrap.js"></script>
		<script type="text/javascript" src="../js/bootstrap-select.js"></script>
		<script type="text/javascript" src="../js/bootstrap-datetimepicker.js"></script>
		
		<script src="../js/modernizr.custom.js"></script>
		
	     <script type="text/javascript">
	     $('#datetimepicker').datetimepicker();
	     </script>
	     
	     <script type="text/javascript">
		
		  function setTime() {
              var Stime = $('#tStime').val();
              var Ftime = $('#tFtime').val();
               alert(Stime);
               alert(Ftime);
               
               var start = new Date(Stime.replace("-", "/").replace("-", "/"));  
               var end = new Date(Ftime.replace("-", "/").replace("-", "/"));  
               if(end<start){  
            	   alert("结束时间比开始时间早");
                   return false;    
               } 
               
          $.ajax({ 
              type : "post",
              url : "setT!setTime1",
              data : {
            	  Stime : Stime,
            	  Ftime : Ftime
              },
              dataType:"json",
      
              success : function(data) {
                  alert(data);
                   $('#Stime').val("");
                   $('#Ftime').val("");
                   location.reload();
              },
              error : function() {
                  alert("设置失败");
              }
          });
      }
		
		</script>
		
		
	</head>
	<body>
		<div class="container_1">
			<!-- Push Wrapper -->
			<div class="mp-pusher" id="mp-pusher">
			<br>
			<a href="#" id="trigger" class="menu-trigger"></a>
			<!-- mp-menu -->
				<nav id="mp-menu" class="mp-menu">
					<div class="mp-level">
						<h2 class="icon icon-world">系统</h2>
						<ul>
						<!-- 论文管理 -->
							<li class="icon icon-arrow-left">
								<a class="icon icon-display" href="#">论文管理</a>
								<div class="mp-level">
									<h2 class="icon icon-display">论文管理</h2>
									<ul>
										<li class="icon ">
											<a class="icon icon-phone" href="P_1_1.jsp">题目审批</a>
										</li>
										<li class="icon ">
											<a class="icon icon-tv" href="P_1_2.jsp">选题管理</a>
										</li>
										<li class="icon ">
											<a class="icon icon-camera" href="P_1_3.jsp">任务书管理</a>
										</li>
										<li class="icon ">
											<a class="icon icon-camera" href="P_1_4.jsp">开题报告管理</a>
										</li>
										<li class="icon ">
											<a class="icon icon-camera" href="P_1_5.jsp">中期检测管理</a>
										</li>
									</ul>
								</div>
							</li>
						<!-- 答辩管理 -->
							<li class="icon icon-arrow-left">
								<a class="icon icon-news" href="#">答辩管理</a>
								<div class="mp-level">
									<h2 class="icon icon-news">答辩管理</h2>
									<ul>
										<li><a href="P_2_1.jsp">互评设置</a></li>
										<li><a href="P_2_2.jsp">答辩分组设置</a></li>
										<li><a href="P_2_3.jsp">学生申请答辩</a></li>
										<li><a href="P_2_4.jsp">答辩记录</a></li>
									</ul>
								</div>
							</li>
						<!-- 通知管理 -->	
							<li class="icon icon-arrow-left">
								<a class="icon icon-shop" href="#">通知管理</a>
								<div class="mp-level">
									<h2 class="icon icon-shop">通知管理</h2>
									<ul>
										<li class="icon">
											<a class="icon icon-t-shirt" href="P_3_1.jsp">通知发布</a>
										</li>
										<li class="icon">
											<a class="icon icon-t-shirt" href="P_3_2.jsp">通知浏览</a>
										</li>
										<li class="icon">
											<a class="icon icon-t-shirt" href="P_3_3.jsp">通知管理</a>
										</li>
										<li class="icon">
											<a class="icon icon-t-shirt" href="P_3_4.jsp">通知查询</a>
										</li>
									</ul>
								</div>
							</li>
						<!-- 系统管理 -->
						<li class="icon icon-arrow-left">
								<a class="icon icon-shop" href="#">系统管理 </a>
								<div class="mp-level">
									<h2 class="icon icon-shop">系统管理 </h2>
									<ul>
										<li class="icon icon-arrow-left">
											<a class="icon icon-t-shirt" href="#">设置系统时间</a>
										<div class="mp-level">
											<h2 class="icon icon-shop">设置系统时间</h2>
											<ul>
												<li class="icon"><a class="icon icon-t-shirt" href="#">设置老师出题时间</a>
												</li>
												<li class="icon"><a class="icon icon-t-shirt" href="P_4_1_2.jsp">设置学生选题时间</a>
												</li>
											</ul>
										</div>
									</li>
										
									</ul>
								</div>
							</li>
							<li><a class="icon icon-photo" href="#">退出系统</a></li>
						</ul>
					</div>
				</nav>
				
				<!-- /mp-menu -->



				<div class="scroller"><!-- this is for emulating position fixed of the nav -->
					<div class="scroller-inner">
						
<!-- 						<div class="content clearfix"> -->
<!-- 							<div class="block block-100" ></div> -->
							
<!-- 						       设置老师出题时间 -->
                          <div class="container">
							<div class="row clearfix">
								<div class="col-md-12 column">
								<div class="page-header">
									<h1>
										肇庆学院 <small>大学毕业论文设计管理系统</small>    <button type="button" class="btn active btn-sm btn-info disabled">设置老师出题时间</button>
									</h1>
								</div>
								<br><br>
								<form action="">
								<div class="form-group col-sm-12 column">
								<div class="form-group col-sm-3 column">
								<label style="color: white">开始时间:</label>
								<input id="tStime" style="width: 205px"  readonly class="form-control form_datetime ">
								</div>	
								<div class="form-group col-sm-3 column">
								
								<label style="color: white">截止时间:</label>
								<input id="tFtime" style="width: 205px"  readonly class="form-control form_datetime ">
								
								 
								 </div>
								</div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" onclick="setTime()" class="btn btn-default btn-success">确定</button>
								</FORM>
								
								
								
								</div>

								

							</div>
							</div>
							
							
						</div>
							
<!-- 						</div> -->
					</div><!-- /scroller-inner -->
				</div><!-- /scroller -->
                
			</div><!-- /pusher -->
			
		</div><!-- /container -->
		
		
		
		<script src="../js/classie.js"></script>
		<script src="../js/mlpushmenu.js"></script>
		<script type="text/javascript">
    $(".form_datetime").datetimepicker({
    	todayBtn:  1,
    	format: 'yyyy-mm-dd hh:ii'
    	});
</script> 
		<script>
			new mlPushMenu( document.getElementById( 'mp-menu' ), document.getElementById( 'trigger' ) );
		</script>
	</body>
</html>