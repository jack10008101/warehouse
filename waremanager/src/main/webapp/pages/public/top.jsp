<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="utf-8">
<title>index</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/lib/bootbox/bootbox.js"
	type="text/javascript"></script>
</head>
<body>
<div class="navbar">
		<div class="navbar-inner">
			<ul class="nav pull-right">

				<!-- <li><a href="#" class="hidden-phone visible-tablet visible-desktop" role="button">Settings</a></li> -->
				<li id="fat-menu" class="dropdown"><a href="#" role="button"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="icon-user"></i> Jack Smith <i class="icon-caret-down"></i>
				</a>

					<ul class="dropdown-menu">
						<!-- <li><a tabindex="-1" href="#">My Account</a></li>
                         <li class="divider"></li>
                         <li><a tabindex="-1" class="visible-phone" href="#">Settings</a></li>
                         <li class="divider visible-phone"></li> -->
						<li><a tabindex="-1" href="sign-in.html">Logout</a></li>
					</ul></li>

			</ul>
			<a class="brand" href="index.html"><span class="first">中国水电顾问集团</span>
				<span class="second">风电张北有限公司</span> </a> <a class="brand"
				href="index.jsp" class="brand" align="center"><span
				class="first"> <img
					src="${pageContext.request.contextPath}/images/logo.png"></span><span
				class="second"> <!-- <img src="images/1.png">  -->
			</span></a>
		</div>
	</div>
</body>
</html>