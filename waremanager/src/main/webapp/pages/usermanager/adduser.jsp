<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>index</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/theme.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/base.css">
<script src="${pageContext.request.contextPath}/lib/jquery-1.7.2.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$('#userName').mouseout(function() {
			var userName = $("#userName").val();
			if (userName.length<6||userName.length>20) {
				//bootbox.alert("用户名长度在6——15之间");
				$("#userName").val("输入用户名,长度为6-15");
				return;
			}
		});
	});
	$(function(){
		$("#password").mouseout(function() {
			var password = $("#password").val();
			if (password.length<6||password.length>20) {
				//bootbox.alert("密码长度在6——15之间");
				$("#password").val();
				return;
			}
		});
	});
	$(function(){
		$("#btnAdd").click(function(){
			var userName = $("#userName").val();
			if (userName.length<6||userName.length>20) {
				//bootbox.alert("用户名长度在6——15之间");
				$("#userName").val("输入用户名,长度为6-15");
				return;
			}
			var password = $("#password").val();
			if (password.length<6||password.length>20) {
				//bootbox.alert("密码长度在6——15之间");
				$("#password").val("密码长度在6——15之间");
				return;
			}
			
			$("#addUserInfo").attr("action","userInfoAction_add.action").submit();
			bootbox.alert("success");
		});
	});
        $(function(){
		$('#userName').mouseleave(function(){
			var userName = $("#userName").val();
			
			$.ajax({
				url:"userInfoAction_userNameExists.action",
				dataType:'html',
				data:{userName:userName},
		        success:function(strValue)
                {
                   if(strValue=="true"){
                      // bootbox.alert("用户名已经存在");
                       $("#btnAdd").attr({"disabled":"disabled"});
                       return;
                   }else
                   {
                	   //bootbox.confirm("用户名可以使用");
                       $("#btnAdd").removeAttr("disabled");
                   }
                }
			});
		});
	}); 
</script>
<!-- Demo page code -->
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="lib/html5.js"></script>
    <![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="../assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body class="">
	<!--<![endif]-->
	<!-- 网页头部 -->
	<jsp:include page="/pages/public/top.jsp"></jsp:include>
	<jsp:include page="/pages/public/left.jsp"></jsp:include>
	<div class="content">
		<ul class="breadcrumb">
			<li>系统管理 <span class="divider">/</span></li>
			<li class="active">添加用户</li>
		</ul>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="row-fluid">
					<div class="alert alert-info">
						<button type="button" class="close" data-dismiss="alert">×</button>
						<strong>Just a quick note:</strong> Hope you like the theme!
					</div>
					<div class="well">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#" data-toggle="tab">添加用户信息</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane active in">
								<form class="form-horizontal"  method="post" enctype="multipart/form-data" id="addUserInfo">
									<div class="control-group">
										<label class="control-label" for="userName">用户名</label>
										<div class="controls">
											<input type="text" id="userName" name="userInfo.userName"
												placeholder="输入用户名,长度为6-15" maxlength="15" required="required">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="password" >密码</label>
										<div class="controls">
											<input type="password" id="password" name="userInfo.password"
												placeholder="输入密码,长度为6-15" required="required">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="department">所属部门</label>
										<div class="controls">
											<input type="text" id="department" name="userInfo.department"
												placeholder="所属部门" required="required">

										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="workId">工号</label>
										<div class="controls">
											<input type="text" id="workId" name="userInfo.workId"
												placeholder="输入工号" required="required">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="manager">管理员</label>
										<div class="controls">
											<input type="radio" class="radio-inline" name="userInfo.manager"
												id="manager" value="true" >是
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
												type="radio" class="radio-inline" name="userInfo.manager"
												id="manager" value="false" checked="checked">否
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="name">姓名</label>
										<div class="controls">
											<input type="text" id="name" name="userInfo.name" placeholder="真实姓名" required="required">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="phone">联系方式</label>
										<div class="controls">
											<input type="text" id="phone" name="userInfo.phone" placeholder="联系方式" required="required">
										</div>
									</div>
									<div class="control-group">
										<div class="controls">
											<!-- <label class="checkbox"> <input type="checkbox">
												Remember me
											</label> -->
											<button type="button" class="btn" id="btnAdd">添加用户</button>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<button type="reset" class="btn">重置信息</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

				<%-- <jsp:include page="/pages/public/bottom.jsp"></jsp:include> --%>
			</div>
		</div>

	</div>
	<script
		src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
		});
	</script>
</body>
</html>
