<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'QueryBill.jsp' starting page</title>
<meta charset="UTF-8" />
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- Import google fonts -->
<link
	href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light"
	rel="stylesheet" type="text/css" />

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />


<!-- start: CSS file-->

<!-- Vendor CSS-->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- Plugins CSS-->
<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css"
	rel="stylesheet" />
<link
	href="assets/plugins/bootstrap-datepicker/css/datepicker-theme.css"
	rel="stylesheet" />
<link
	href="assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.css"
	rel="stylesheet" />
<link
	href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css"
	rel="stylesheet" />
<link
	href="assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css"
	rel="stylesheet" />


<!-- Plugins CSS-->
<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="assets/plugins/fullcalendar/css/fullcalendar.css"
	rel="stylesheet" />
<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet" />

<!-- Theme CSS -->
<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->

<link href="assets/css/add-ons.min.css" rel="stylesheet" />

<!-- end: CSS file-->


<!-- Head Libs -->
<script src="assets/plugins/modernizr/js/modernizr.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->


<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 引入 -->
<script
	src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="assets/js/pages/calendar.js"></script>
<script src="assets/js/plugins/placeholder/js/jquery.placeholder.min.js"></script>
<script src="assets/js/jquery-1.7.1.js"></script>
<link href="assets/css/style.css" rel="stylesheet" />
<link rel="stylesheet"
	href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css">
<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="assets/css/jquery.multiselect.css" />
<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
<script type="text/javascript" src="assets/js/jquery.multiselect.js"></script>
<style>
.col-md-2.control-label.magin {
	width: 80px;
	margin-top: 10px;
	padding-left: 30px;
	padding-right: 0px;
}
</style>
<script language="JavaScript">
	var userList;
	$(function() {
		$(".datepicker").datepicker({
			language : "zh-CN",
			autoclose : true,//选中之后自动隐藏日期选择框
			clearBtn : true,//清除按钮
			todayBtn : true,//今日按钮
			format : "yyyy-mm-dd"//日期格式，详见 http://bootstrap-datepicker.readthedocs.org/en/release/options.html#format
		});
	});
	$(function() {

		$("#select").multiselect({
			checkAllText : "全选",
			uncheckAllText : "清空",
			noneSelectedText : "请选择你的接收对象",
			selectedList : 1,
			selectedText : '# 人已被选择 ',

		});

		$("#alert_values").click(function() {
			var valueStr = $("#test_select").multiselect("values");
		});
	});
	$(document).ready(function() {
		$("#addBill").click(function() {
			$("#dialog").dialog("open");
		});
		$("#done").click(function() {
			alert("创建成功");
			$("#createBill").submit();
		});
		$("#dialog").dialog({
			autoOpen : false,
			height : 380,
			width : 800,
			show : {
				effect : "blind",
				duration : 1000
			},
			hide : {
				effect : "explode",
				duration : 1000
			}
		});
	});
</script>
</head>

<body>
	<jsp:include page="/view/home.jsp"></jsp:include>
	<div id="dialog" title="新账单">
		<form class="form-horizontal " id="createBill" method="post"
			action="createBill">
			<div class="form-group">
				<label for="input-small" class="col-sm-2 control-label">账单名称：</label>
				<div class="col-sm-4">
					<input type="text" placeholder=".input-sm"
						class="form-control input-sm" name="input-small" id="input-small">
				</div>


				<label for="input-small" class="col-sm-2 control-label">账单金额：</label>
				<div class="col-sm-4">
					<input type="text" placeholder=".input-sm"
						class="form-control input-sm" name="input-small" id="input-small">
				</div>
			</div>
			<div class="form-group">
				<label for="input-small" class="col-sm-2 control-label">账单类型：</label>
				<div class="col-sm-4">
					<input type="text" placeholder=".input-sm"
						class="form-control input-sm" name="input-small" id="input-small">
				</div>


				<label for="input-small" class="col-sm-2 control-label">账单用户：</label>
				<div class="col-sm-4 ">
					<select id="select" title="Basic example" multiple="multiple"
						name="AllUser">
						<s:iterator value="AllUser" var="book">
							<option value="<s:property value="#book.userid" />"><s:property
									value="#book.userName" />
							</option>
						</s:iterator>
					</select>
				</div>

			</div>
			<div class="form-group">
				<div class="col-lg-12 col-md-12">
					<textarea rows="3" placeholder="此处输入账单具体描述......"
						class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-lg-10 col-md-10"></div>
				<button class="bk-margin-5 btn btn-success control-label"
					id="done" type="button">确定</button>
			</div>
		</form>
	</div>
	<div class="container-fluid content">
		<div class="row">
			<div class="main sidebar-minified" style="min-height: 668px;">
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li><a href="index.html"><i class="icon fa fa-home"></i>Home</a></li>
							<li class="active"><i class="fa fa-table"></i>账单</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>账单</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel">
							<div class="panel-heading bk-bg-primary">
								<h4>
									<i class="fa fa-indent red"></i>查询条件
								</h4>
								<div class="panel-actions">
									<!-- <a class="btn-setting" href="form-elements.html#"><i
										class="fa fa-rotate-right black"></i></a> <a class="btn-minimize"
										href="form-elements.html#"><i
										class="fa fa-chevron-up black"></i></a> <a class="btn-close"
										href="form-elements.html#"><i class="fa fa-times black"></i></a> -->
								</div>
							</div>
							<div class="panel-body">
								<form role="form" class="form-horizontal group-border">
									<div class="form-group">
										<label class="col-lg-1 col-md-1 col-sm-6 control-label">关键词</label>
										<div class="col-lg-5 col-md-5">
											<input type="text" class="form-control">
										</div>
										<label class="col-lg-1 col-md-1 col-sm-6 control-label">时间范围</label>
										<%-- 	<div class="col-md-5">
											<span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span> <input type="text"
												class="datepicker form-control" name="endTime"
												id="userBirthday" placeholder="请选择公告截止日期" />
										</div> --%>
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="fa fa-calendar"></i>
											</span> <input type="text" class="form-control datepicker">
										</div>
										<br> <br> <br> <label
											class="col-md-1 control-label">账单类型</label>
										<div class="col-lg-5 col-md-5">
											<select size="1" class="form-control" name="select">
												<option value="0">全部</option>
												<option value="1">收入</option>
												<option value="2">支出</option>
											</select>
										</div>

										<label for="select" class="col-md-1 control-label">审核情况</label>
										<div class="col-lg-5 col-md-5">
											<select size="1" class="form-control" name="select">
												<option value="0">全部</option>
												<option value="1">已审核</option>
												<option value="2">已弃审</option>
												<option value="3">待审核</option>
											</select>
										</div>

									</div>
									<hr>
									<div class="col-lg-12 col-md-12"></div>
									<div class="form-group">
										<div class="col-lg-4 col-md-4"></div>
										<div class="col-lg-4 col-md-4">
											
											<button class="bk-margin-5 btn btn-success" id="addBill"
												type="button">添加账单</button>
									
										</div>
									</div>
								</form>

								<div class="form-group">
									<div class="col-lg-12">

										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>创建者</th>
														<th>账单名称</th>
														<th>账单金额</th>
														<th>账单类型</th>
														<th>审核情况</th>
													</tr>
												</thead>
												<tbody>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>James</td>
														<td>SEO</td>
														<td>5000$</td>
														<td>收入</td>

														<td><span class="label label-danger">已弃审</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Steven</td>
														<td>Photographer</td>
														<td>1269$</td>
														<td>收入</td>

														<td><span class="label label-default">待审核</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Willson</td>
														<td>Developer</td>
														<td>2563$</td>
														<td>收入</td>
														<td><span class="label label-success">已审核</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Willson</td>
														<td>Developer</td>
														<td>2563$</td>
														<td>收入</td>
														<td><span class="label label-success">已审核</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Willson</td>
														<td>Developer</td>
														<td>2563$</td>
														<td>收入</td>
														<td><span class="label label-success">已审核</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Willson</td>
														<td>Developer</td>
														<td>2563$</td>
														<td>收入</td>
														<td><span class="label label-success">已审核</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Willson</td>
														<td>Developer</td>
														<td>2563$</td>
														<td>收入</td>
														<td><span class="label label-success">已审核</span></td>
													</tr>

													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Aselay</td>
														<td>Project manger</td>
														<td>6253$</td>
														<td>收入</td>

														<td><span class="label label-success">已审核</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>James</td>
														<td>SEO</td>
														<td>5000$</td>
														<td>收入</td>

														<td><span class="label label-danger">已弃审</span></td>
													</tr>
													<tr>
														<td>Steven</td>
														<td>Photographer</td>
														<td>1269$</td>
														<td>收入</td>

														<td><span class="label label-default">待审核</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Willson</td>
														<td>Developer</td>
														<td>2563$</td>
														<td>收入</td>
														<td><span class="label label-success">已审核</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''" >
														<td>Willson</td>
														<td>Developer</td>
														<td>2563$</td>
														<td>收入</td>
														<td><span class="label label-success">已审核</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Willson</td>
														<td>Developer</td>
														<td>2563$</td>
														<td>收入</td>
														<td><span class="label label-success">已审核</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Willson</td>
														<td>Developer</td>
														<td>2563$</td>
														<td>收入</td>
														<td><span class="label label-success">已审核</span></td>
													</tr>
													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Willson</td>
														<td>Developer</td>
														<td>2563$</td>
														<td>收入</td>
														<td><span class="label label-success">已审核</span></td>
													</tr>

													<tr onmouseover="this.style.backgroundColor='#D1EEEE'" onmouseout="this.style.backgroundColor=''">
														<td>Aselay</td>
														<td>Project manger</td>
														<td>6253$</td>
														<td>收入</td>

														<td><span class="label label-success">已审核</span></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
</body>
</html>
