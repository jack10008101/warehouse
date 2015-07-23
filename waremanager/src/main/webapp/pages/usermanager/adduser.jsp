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
		$('#userName').change(function() {
			var userName = $("#userName").val();
			if (userName.length<6||userName.length>20) {
				bootbox.alert("用户名长度在6——15之间");
				$("#userName").val("输入用户名,长度为6-15");
				return;
			}
		});
		$("#password").change(function() {
			var password = $("#password").val();
			if (password.length<6||password.length>20) {
				bootbox.alert("密码长度在6——15之间");
				$("#password").val("");
				return;
			}
		});
		$("#btnAdd").click(function(){
			debugger;
			var userName = $("#userName").val();
			if (userName.length<6||userName.length>20) {
				bootbox.alert("用户名长度在6——15之间");
				$("#userName").val("输入用户名,长度为6-15");
				return;
			}
			var password = $("#password").val();
			if (password.length<6||password.length>20) {
				bootbox.alert("密码长度在6——15之间");
				$("#password").val("");
				return;
			}
			
			$("#addUserInfo").attr("action","userInfoAction_add.action").submit();
			bootbox.alert("success");
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
										<label class="control-label" for="department">密码</label>
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
												id="manager" value="true" checked="checked">是
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
												type="radio" class="radio-inline" name="userInfo.manager"
												id="manager" value="false">否
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
					<!-- 
					<div class="block">
						<a href="#page-stats" class="block-heading" data-toggle="collapse">Latest
							Stats</a>
						<div id="page-stats" class="block-body collapse in">

							<div class="stat-widget-container">
								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">2,500</p>
										<p class="detail">Accounts</p>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">3,299</p>
										<p class="detail">Subscribers</p>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">$1,500</p>
										<p class="detail">Pending</p>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">$12,675</p>
										<p class="detail">Completed</p>
									</div>
								</div>

							</div>
						</div>
					</div> -->
				</div>

				<!-- <div class="row-fluid">
    <div class="block span6">
        <a href="#tablewidget" class="block-heading" data-toggle="collapse">Users<span class="label label-warning">+10</span></a>
        <div id="tablewidget" class="block-body collapse in">
            <table class="table">
              <thead>
                <tr>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Username</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Mark</td>
                  <td>Tompson</td>
                  <td>the_mark7</td>
                </tr>
                <tr>
                  <td>Ashley</td>
                  <td>Jacobs</td>
                  <td>ash11927</td>
                </tr>
                <tr>
                  <td>Audrey</td>
                  <td>Ann</td>
                  <td>audann84</td>
                </tr>
                <tr>
                  <td>John</td>
                  <td>Robinson</td>
                  <td>jr5527</td>
                </tr>
                <tr>
                  <td>Aaron</td>
                  <td>Butler</td>
                  <td>aaron_butler</td>
                </tr>
                <tr>
                  <td>Chris</td>
                  <td>Albert</td>
                  <td>cab79</td>
                </tr>
              </tbody>
            </table>
            <p><a href="users.html">More...</a></p>
        </div>
    </div> -->
				<!--  <div class="block span6">
       <a href="#widget1container" class="block-heading" data-toggle="collapse">Collapsible </a>
       <div id="widget1container" class="block-body collapse in">
           <h2>Here's a Tip</h2>
           <p>This template was developed with <a href="#" target="_blank">Middleman</a> and includes .erb layouts and views.</p>
           <p>All of the views you see here (sign in, sign up, users, etc) are already split up so you don't have to waste your time doing it yourself!</p>
           <p>The layout.erb file includes the header, footer, and side navigation and all of the views are broken out into their own files.</p>
           <p>If you aren't using Ruby, there is also a set of plain HTML files for each page, just like you would expect.</p>
       </div>
   </div>
   </div>
   
   <div class="row-fluid">
   <div class="block span6">
       <div class="block-heading">
           <span class="block-icon pull-right">
               <a href="#" class="demo-cancel-click" rel="tooltip" title="Click to refresh"><i class="icon-refresh"></i></a>
           </span>
   
           <a href="#widget2container" data-toggle="collapse">History</a>
       </div>
       <div id="widget2container" class="block-body collapse in">
           <table class="table list">
             <tbody>
                 <tr>
                     <td>
                         <p><i class="icon-user"></i> Mark Otto</p>
                     </td>
                     <td>
                         <p>Amount: $1,247</p>
                     </td>
                     <td>
                         <p>Date: 7/19/2012</p>
                         <a href="#">View Transaction</a>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <p><i class="icon-user"></i> Audrey Ann</p>
                     </td>
                     <td>
                         <p>Amount: $2,793</p>
                     </td>
                     <td>
                         <p>Date: 7/12/2012</p>
                         <a href="#">View Transaction</a>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <p><i class="icon-user"></i> Mark Tompson</p>
                     </td>
                     <td>
                         <p>Amount: $2,349</p>
                     </td>
                     <td>
                         <p>Date: 3/10/2012</p>
                         <a href="#">View Transaction</a>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <p><i class="icon-user"></i> Ashley Jacobs</p>
                     </td>
                     <td>
                         <p>Amount: $1,192</p>
                     </td>
                     <td>
                         <p>Date: 1/19/2012</p>
                         <a href="#">View Transaction</a>
                     </td>
                 </tr>
                   
             </tbody>
           </table>
       </div>
   </div> -->
				<!--  <div class="block span6">
       <p class="block-heading">Not Collapsible</p>
       <div class="block-body">
           <h2>Built with Less</h2>
           <p>The CSS is built with Less. There is a compiled version included if you prefer plain CSS.</p>
           <p>Fava bean jícama seakale beetroot courgette shallot amaranth pea garbanzo carrot radicchio peanut leek pea sprouts arugula brussels sprout green bean. Spring onion broccoli chicory shallot winter purslane pumpkin gumbo cabbage squash beet greens lettuce celery. Gram zucchini swiss chard mustard burdock radish brussels sprout groundnut. Asparagus horseradish beet greens broccoli brussels.</p>
           <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
       </div>
   </div>
   </div> -->

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
