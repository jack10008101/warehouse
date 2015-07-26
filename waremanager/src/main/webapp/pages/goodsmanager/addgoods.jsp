<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<!-- Demo page code -->
<script type="text/javascript">
	$(function() {
		//如果是必填的，则加红星标识
	/* 	$("form :input.required").each(function() {
			var $required = $("<span><strong class='high'> *</strong><span>"); //创建元素
			$(this).parent().append($required); //然后将它追加到文档中
		}); */
		//文本框失去焦点后
		$('#addGoods :input').blur(
				function() {
					var $parent = $(this).parent();
					$parent.find(".formtips").remove();
					//验证类型
					if ($(this).is('#type')) {
						if (this.value == "") {
							var errorMsg = "*不可为空";
							$parent.append('<span class="formtips onError">'
									+ errorMsg + '</span>');
						} else {
							var okMsg = '√输入正确.';
							$parent.append('<span class="formtips onSuccess">'
									+ okMsg + '</span>');
						}
					}
					//验证类型
					if($(this).is('#firstType')){
						if (this.value == "") {
							var errorMsg = "*不可为空";
							$parent.append('<span class="formtips onError">'
									+ errorMsg + '</span>');
						} else {
							var okMsg = '√输入正确.';
							$parent.append('<span class="formtips onSuccess">'
									+ okMsg + '</span>');
						}
					
					}
				}).keyup(function() {
			$(this).triggerHandler("blur");
		}).focus(function() {
			$(this).triggerHandler("blur");
		});//end blur

		//提交，最终验证
		$('#send').click(function() {
			$("#addGoods :input.required").trigger('blur');
			var numError = $('form .onError').length;
			if (numError) {
				return false;
			}
			//alert("注册成功,密码已发到你的邮箱,请查收.");
		});
		//重置
		$('#res').click(function() {
			$(".formtips").remove();
		});
	})
</script>
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

.formtips {
	width: 200px;
	margin: 2px;
	padding: 2px;
}

.onError {
	/* background: #ffe0e9; */
	color:red;
	padding-left: 25px;
}

.onSuccess {
	/* background-color: pink;  */
	color:green;
	padding-left: 25px;
}

.high {
	color: Gray;
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
			<li>物品管理 <span class="divider">/</span></li>
			<li class="active">添加物品</li>
		</ul>

		<div class="container-fluid">
			<div class="row-fluid">


				<div class="row-fluid">

					<div class="alert alert-info">
						<button type="button" class="close" data-dismiss="alert">×</button>
						<strong>Just a quick note:</strong> Hope you like the theme!
					</div>

					<div class="block">
						<div class="well">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#" data-toggle="tab">添加物品信息</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div class="tab-pane active in">
									<form class="form-horizontal" method="post"
										enctype="multipart/form-data" id="addGoods">
										<div class="control-group">
											<label class="control-label" for="type">类型</label>
											<div class="controls">
												<input type="text" id="type" name="goods.type"
													placeholder="物品类型如备件、耗材、工具" required="required"
													maxlength="10">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="firstType">一级分类</label>
											<div class="controls">
												<input type="text" id="firstType" name="goods.firstType"
													placeholder="一级分类，如一级备件" maxlength="30">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="secondType">二级分类</label>
											<div class="controls">
												<input type="text" id="secondType" name="goods.secondType"
													placeholder="二级分类，如 220kV：.线路" maxlength="30">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="goodsName">物品名称</label>
											<div class="controls">
												<input type="text" id="goodsName" name="goods.goodsName"
													placeholder="物品名称，如导线" required="required" maxlength="30">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="department">物品编号</label>
											<div class="controls">
												<input type="text" id="partNumber" name="goods.partNumber"
													placeholder="出厂编号型号" required="required" maxlength="20">

											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="unit">单位</label>
											<div class="controls">
												<input type="text" id="unit" name="goods.unit"
													placeholder="物品的计量单位" required="required" maxlength="10">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="price">物品单价</label>
											<div class="controls">
												<input type="text" id="price" name="goods.price"
													placeholder="物品单价" required="required">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="needs">库存阈值</label>
											<div class="controls">
												<input type="text" id="needs" name="goods.needs"
													placeholder="设置库存最低值" required="required">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="providerName">供应商信息</label>
											<div class="controls">
												<input type="text" id="providerName"
													name="goods.providerName" placeholder="供应商信息"
													required="required">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="address">存储地址</label>
											<div class="controls">
												<input type="text" id="address" name="goods.address"
													placeholder="存储地址" required="required">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="remark">备注</label>
											<div class="controls">
												<!-- 	<input type="textarea" id="remark" name="goods.remark"
													placeholder="相关描述信息" > -->
												<textarea id="remark" name="goods.remark"
													placeholder="相关描述信息"></textarea>
											</div>
										</div>
										<div class="control-group">
											<div class="controls">
												<!-- <label class="checkbox"> <input type="checkbox">
												Remember me
											</label> -->
												<button type="button" class="btn" id="btnAdd">添加物品</button>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<button type="reset" class="btn">重置信息</button>
											</div>
										</div>
									</form>
								</div>
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
		debugger;
		$("[rel=tooltip]").tooltip();
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
		});
	</script>
</body>
</html>
