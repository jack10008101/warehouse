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
function skip(){  
    var currentPage=document.getElementById('textfield').value;  
    document.location="admin/scanNews.action?currentPage="+currentPage;  
}  
function nextPage(){  
    document.location="admin/scanNews.action?currentPage=<s:property value="%{pageBean.currentPage+1}"/>";  
}  
function prePage(){  
    document.location="admin/scanNews.action?currentPage=<s:property value="%{pageBean.currentPage-1}"/>";  
}  
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
								<td>新闻ID</td>
								<td>添加时间</td>
								<td>新闻标题</td>
								<td>添加人</td>
								<td>新闻类型</td>
								<td>编辑</td>
								<td>删除</td>
							</tr>
							<s:iterator value="resultList" id="news">
								<s:if test="%{#news!=null}">
									<tr style="background-color: #FFFFFF">

										<td style="color: green"><s:property value="#news.id" /></td>
										<td style="color: green"><s:property
												value="#news.createdate" /></td>
										<td><a
											href="<%-- admin/scanDetail!ForNews.action?id=${news.id} --%>"
											class="tableChars"><s:property value="#news.title" /></a></td>
										<td><s:property value="#news.author" /></td>
										<td style="color: green"><s:property value="#news.type" /></td>
										<td><a
											href="<%-- admin/editNews!getNewsDetail.action?id=${news.id} --%>"><span
												class="tableChars">编辑</span></a></td>
										<td><a
											onclick="{if(confirm('删除后不可恢复，确实要删除该信息？')){return true;}return false;}"><span
												class="tableChars">删除</span></a></td>
									</tr>
								</s:if>
							</s:iterator>
						</table>
						<br> <span> 共<span style="color: red">
								${recordSum} </span>条记录 <span style="color: red"> ${PageSum} </span>页
							当前位于第<span style="color: red"> ${currentPage} </span>页 <a
							href="<!-- admin/scanNews.action?currentPage=1 -->">首页</a> <a
							href="javascript:prePage()"> <i class="icon-arrow-left"></i>前一页
						</a>&nbsp; <a href="javascript:nextPage()"> 后一页<i
								class="icon-arrow-right"></i></a> <a
							href="<!-- admin/scanNews.action?currentPage=<s:property value='PageSum' />">尾页</a>
							<input name="currentPage" type="text"
							style="width: 25px; height: 20px;" id="textfield" /> <a
							href="javascript:skip()">GO</a>
						</span>
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
