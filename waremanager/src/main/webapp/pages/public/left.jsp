<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="utf-8">
<title>index</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="sidebar-nav" id="accordion">
		<!-- <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i
			class="icon-hand-right"></i>warehouse</a>
		<ul id="dashboard-menu" class="nav nav-list collapse in">
			<li><a href="index.html">Home</a></li>
			<li><a href="users.html">Sample List</a></li>
			<li><a href="user.html">Sample Item</a></li>
			<li><a href="media.html">Media</a></li>
			<li><a href="calendar.html">Calendar</a></li>
		</ul>
		<a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i
			class="icon-hand-right"></i>warehouse</a>
		<ul id="dashboard-menu" class="nav nav-list collapse in">
			<li><a href="index.html">Home</a></li>
			<li><a href="users.html">Sample List</a></li>
			<li><a href="user.html">Sample Item</a></li>
			<li><a href="media.html">Media</a></li>
			<li><a href="calendar.html">Calendar</a></li>
		</ul>
		<a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i
			class="icon-briefcase"></i>Account<span class="label label-info">+3</span></a>
		<ul id="accounts-menu" class="nav nav-list collapse">
			<li><a href="sign-in.html">Sign In</a></li>
			<li><a href="sign-up.html">Sign Up</a></li>
			<li><a href="reset-password.html">Reset Password</a></li>
		</ul>
 -->   <!-- 物品管理 -->
		<a href="#goods-manager" class="nav-header collapsed"
			data-toggle="collapse"> <i class="icon-hand-right"></i>物品管理<i
			class="icon-chevron-up"></i>
		</a>
		<ul id="goods-manager" class="nav nav-list collapse">
			<li><a href="${pageContext.request.contextPath}/pages/goodsmanager/addgoods.jsp">添加物品</a></li>
			<li><a href="${pageContext.request.contextPath}/pages/goodsmanager/listgoods.jsp">物品列表</a></li>
			<li><a href="${pageContext.request.contextPath}/pages/goodsmanager/borrowgoods.jsp">物品借出</a></li>
			<li><a href="${pageContext.request.contextPath}/pages/goodsmanager/borrowlist.jsp">借出列表</a></li>
		</ul>
		<!--出入库管 -->
				<a href="#inout-manager" class="nav-header collapsed"
			data-toggle="collapse"> <i class="icon-hand-right"></i>出入库管理<i
			class="icon-chevron-up"></i>
		</a>
		<ul id="inout-manager" class="nav nav-list collapse">
			<li><a href="${pageContext.request.contextPath}/pages/inoutmanager/instore.jsp">物品入库</a></li>
			<li><a href="${pageContext.request.contextPath}/pages/inoutmanager/outstore.jsp">物品出库</a></li>
			<li><a href="${pageContext.request.contextPath}/pages/inoutmanager/instorelist.jsp">入库列表</a></li>
			<li><a href="${pageContext.request.contextPath}/pages/inoutmanager/outstorelist.jsp">出库列表</a></li>
		</ul>
		<!-- 报废和返厂 -->
		<a href="#scrapandback-menu" class="nav-header collapsed"
			data-toggle="collapse"><i class="icon-hand-right"></i>报废和返厂<i
			class="icon-chevron-up"></i></a>
		<ul id="scrapandback-menu" class="nav nav-list collapse">
			<li><a
				href="${pageContext.request.contextPath}/pages/scrapandback/addscraporder.jsp">添加报废单</a></li>
			<li><a
				href="${pageContext.request.contextPath}/pages/scrapandback/addbackorder.jsp">添加返厂单</a></li>
			<li><a
				href="${pageContext.request.contextPath}/pages/scrapandback/listscraporder.jsp">报废单列表</a></li>
				<li><a
				href="${pageContext.request.contextPath}/pages/scrapandback/listbackorder.jsp">返厂单列表</a></li>
		</ul>
		<!-- 系统管理 -->
	<a href="#system-menu" class="nav-header collapsed"
			data-toggle="collapse"><i class="icon-hand-right"></i>系统管理<i
			class="icon-chevron-up"></i></a>
		<ul id="system-menu" class="nav nav-list collapse">
			<li><a
				href="${pageContext.request.contextPath}/pages/usermanager/adduser.jsp">添加用户</a></li>
			<li><a
				href="${pageContext.request.contextPath}/pages/usermanager/listuser.jsp">用户列表</a></li>
			<li><a
				href="${pageContext.request.contextPath}/pages/usermanager/updateuser.jsp">修改信息</a></li>
				<li><a
				href="${pageContext.request.contextPath}/pages/usermanager/updatepassword.jsp">更改密码</a></li>
		</ul>
		<!--    <a href="#legal-menu" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>Legal</a>
     <ul id="legal-menu" class="nav nav-list collapse">
         <li ><a href="privacy-policy.html">Privacy Policy</a></li>
         <li ><a href="terms-and-conditions.html">Terms and Conditions</a></li>
     </ul>
     
     <a href="help.html" class="nav-header" ><i class="icon-question-sign"></i>Help</a>
     <a href="faq.html" class="nav-header" ><i class="icon-comment"></i>Faq</a> -->
	</div>
</body>
</html>