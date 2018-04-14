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
				<div class="scroller"><!-- this is for emulating position fixed of the nav -->
					<div class="scroller-inner">
						<div class="content clearfix">
						<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					学生登陆
				</h1>
			</div>
			<form class="form-horizontal" role="form" action="student!login" method="post">
				<div class="form-group">
					 <label for="inputText3" class="col-sm-2 control-label">学号</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="student.id" name="student.id" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="student.pwd" name="student.pwd" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							 <label><input type="checkbox" />记住我</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">登陆</button>
						 <button type="reset" class="btn btn-default">重置</button>
					</div>
				</div>
			</form>
		</div>
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
		<script>
	if('${error}'!=''){
		alert('${error}');
	}
</script>
	</body>
</html>