<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
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

<script src="${pageContext.request.contextPath}/lib/jquery-1.7.2.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		/* 	$("#btnDelete").click(function(){
		 bootbox.confirm("确认删除当前用户？",function(result){
		 if(result){
		 window.location.href="deleteUserInfoById"
		 }
		 });
		 }); */
	});
</script>
<!-- Demo page code -->

<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #ccc;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold;
}
</style>

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
			<li class="active">用户列表</li>
		</ul>

		<div class="container-fluid">
			<div class="row-fluid">


				<div class="row-fluid">

					<div class="alert alert-info">
						<button type="button" class="close" data-dismiss="alert">×</button>
						<strong>Just a quick note:</strong> Hope you like the theme!
					</div>

					<div class="block">
						<table class="table table-striped">
							<tr>
								<td>用户Id</td>
								<td>用户名</td>
								<td>所属部门</td>
								<td>工号</td>
								<td>是否管理员</td>
								<td>姓名</td>
								<td>联系方式</td>
								<td>删除用户</td>
								<td>修改密码</td>
								<td>修改信息</td>
							</tr>
							<s:iterator value="list" var="u">

								<tr style="background-color: #FFFFFF">
									<%-- <s:if test="%{u.name!=null}"> --%>
									<td style="color: green"><s:property value="#u.id" /></td>
									<td style="color: green"><s:property value="#u.userName" /></td>
									<td><a
										href="<%-- admin/scanDetail!ForNews.action?id=${news.id} --%>"><s:property
												value="#u.department" /></a></td>
									<td><s:property value="#u.workId" /></td>
									<td>
										<%-- <s:property value="#u.manager" /> --%> <s:if
											test="%{u.manager==true}">是</s:if> <s:else>否</s:else>
									</td>
									<td><s:property value="#u.name" /></td>
									<td><s:property value="#u.phone" /></td>
									<td><a
										onclick="{if(bootbox.confirm('是否确认删除当前的用户？')){return true;}return false;}"
										href="userInfoAction_deleteUserInfoById.action?id=${u.id}">删除</a></td>
									<td><a
										href="${pageContext.request.contextPath}/pages/usermanager/updatepassword.jsp?userName=${u.userName}">修改密码</a></td>
									<td><a
										href="${pageContext.request.contextPath}/pages/usermanager/updateuser.jsp?userName=${u.userName}">修改信息</a></td>
									</td>
								</tr>
							</s:iterator>
						</table>
						<br>
						<div align="center">
							<s:iterator value="pageBean">
							 共<span style="color: red"> <s:property value="allRow" />
								</span>条记录 共<span style="color: red"> <s:property
										value="totalPage" />
								</span>页 当前位于第<span style="color: red"> <s:property
										value="currentPage" />
								</span>页 
							<s:if test="%{currentPage==1}">
							首页 <i class="icon-arrow-left">前一页</i>
							&nbsp; </s:if>
								<s:else>
									<a href="userInfoAction_getUserInfoList.action?page=1">首页</a>
									<a
										href="userInfoAction_getUserInfoList.action?page=<s:property value="%{currentPage-1}"/>"><i
										class="icon-arrow-left"></i>前一页</a>
								</s:else>
								<s:if test="%{currentPage!=totalPage}">
									<a
										href="userInfoAction_getUserInfoList.action?page=<s:property value="%{currentPage+1}"/>"><i
										class="icon-arrow-right"></i>后一页</a>
									<a
										href="userInfoAction_getUserInfoList.action?page=<s:property value="totalPage"/>">最后一页</a>
								</s:if>
								<s:else>
							后一页<i class="icon-arrow-right"></i>
							末页
							</s:else>
							</s:iterator>
						</div>
					</div>
				</div>
			</div>
			<%-- <jsp:include page="/pages/public/bottom.jsp"></jsp:include> --%>
		</div>
	</div>

	<!-- 	</div> -->
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
