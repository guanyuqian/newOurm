<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<link rel="apple-touch-icon" sizes="57x57"
	href="assets/ico/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="assets/ico/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/ico/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="assets/ico/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="assets/ico/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="assets/ico/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="assets/ico/apple-touch-icon-152x152.png" />

<!-- start: CSS file-->

<!-- Vendor CSS-->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css"
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
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/add-ons.min.css" rel="stylesheet" />

<style>
footer {
	display: none;
}
</style>

<!-- end: CSS file-->


<!-- Head Libs -->
<script src="assets/plugins/modernizr/js/modernizr.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

<!-- 动态粒子 -->
<script src="assets/js/particles.js"></script>



<title>My JSP starting page</title>
<script src="assets/js/plugins/placeholder/js/jquery.placeholder.min.js"></script>
<script src="assets/js/jquery-1.7.1.js"></script>
<script src="jquery.js" type="text/javascript"></script>
<script src="jquery.inputmask.js" type="text/javascript"></script>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!-- 相册效果 -->
<link href="assets/css/slicebox.css" rel="stylesheet" />
<link href="assets/css/custom.css" rel="stylesheet" />
<link href="assets/css/demo.css" rel="stylesheet" />
<script src="assets/js/jquery-1.7.1.js"></script>
<script src="assets/js/modernizr.custom.46884.js"></script>
<script src="assets/js/jquery.slicebox.js"></script>


<link rel="stylesheet" type="text/css" href="assets/css/fenye.css"
	media="screen" />
<script src="assets/js/jquery.paginate.js" type="text/javascript"></script>
<link rel="stylesheet"
	href="assets/plugtins/jquery-ui/css/jquery-ui-1.10.4.min.css">
<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
<script>
	
</script>
<script>
	var notices;
	$(function() {

		var Page = (function() {

			var $navArrows = $('#nav-arrows').hide(), $navDots = $('#nav-dots')
					.hide(), $nav = $navDots.children('span'), $shadow = $(
					'#shadow').hide(), slicebox = $('#sb-slider').slicebox({
				onReady : function() {

					$navArrows.show();
					$navDots.show();
					$shadow.show();

				},
				onBeforeChange : function(pos) {

					$nav.removeClass('nav-dot-current');
					$nav.eq(pos).addClass('nav-dot-current');

				}
			}),

			init = function() {

				initEvents();

			}, initEvents = function() {

				// add navigation events
				$navArrows.children(':first').on('click', function() {

					slicebox.next();
					return false;

				});

				$navArrows.children(':last').on('click', function() {

					slicebox.previous();
					return false;

				});

				$nav.each(function(i) {

					$(this).on('click', function(event) {

						var $dot = $(this);

						if (!slicebox.isActive()) {

							$nav.removeClass('nav-dot-current');
							$dot.addClass('nav-dot-current');

						}

						slicebox.jump(i + 1);
						return false;

					});

				});

			};

			return {
				init : init
			};

		})();

		Page.init();

	});
	$(document).ready(function() {
		func(1);
	});

	$(function() {
		$("#demo1").paginate({
			count : 5,
			start : 1,
			display : 10,
			border : false,
			text_color : '#888',
			background_color : '#EEE',
			text_hover_color : 'black',
			background_hover_color : '#CFCFCF',
			images : false,
			mouse : 'press',
			onChange : function(page) {
				NoticeChange(page);
			}
		});
		$("#demo2").paginate({
			count : 5,
			start : 1,
			display : 10,
			border : false,
			text_color : '#888',
			background_color : '',
			text_hover_color : 'black',
			background_hover_color : '#CFCFCF',
			images : false,
			mouse : 'press',
			onChange : function(page) {
				NoticeChange(page);
			}
		});
		$("#demo3").paginate({
			count : 5,
			start : 1,
			display : 10,
			border : false,
			text_color : '#888',
			background_color : '#EEE',
			text_hover_color : 'black',
			background_hover_color : '#CFCFCF',
			images : false,
			mouse : 'press',
			onChange : function(page) {
				NoticeChange(page);
			}
		});
		$("#demo4").paginate({
			count : 5,
			start : 1,
			display : 10,
			border : false,
			text_color : '#888',
			background_color : '',
			text_hover_color : 'black',
			background_hover_color : '#CFCFCF',
			images : false,
			mouse : 'press',
			onChange : function(page) {
				NoticeChange(page);
			}
		});
		$("#demo5").paginate({
			count : 5,
			start : 1,
			display : 10,
			border : false,
			text_color : '#888',
			background_color : '#EEE',
			text_hover_color : 'black',
			background_hover_color : '#CFCFCF',
			images : false,
			mouse : 'press',
			onChange : function(page) {
				NoticeChange(page);
			}
		});
		$("#demo6").paginate({
			count : 5,
			start : 1,
			display : 10,
			border : false,
			text_color : '#888',
			background_color : '',
			text_hover_color : 'black',
			background_hover_color : '#CFCFCF',
			images : false,
			mouse : 'press',
			onChange : function(page) {
				NoticeChange(page);
			}
		});
		$("#demo7").paginate({
			count : 5,
			start : 1,
			display : 4,
			border : false,
			text_color : '#888',
			background_color : '',
			text_hover_color : 'black',
			background_hover_color : '#CFCFCF',
			images : false,
			mouse : 'press',
			onChange : function(page) {
				NoticeChange(page);
			}
		});
	});
	function NoticeChange(i) {
		i = i - 1;
		$("#notice").empty();
		var test = "<a href='javascript:test("
				+ i
				+ ")'>"
				+ "	<div class='header'>"
				+ "       <span class='from'>"
				+ notices[i].CreaterName
				+ "</span> <span"+
					"           class='date'> <i class='fa fa-paperclip'></i>"
				+ notices[i].NoticeEndtime
				+ "</span>"
				+ "</div>"
				+ "<div class='title'>"
				+ "<span class='action'> <i class='fa fa-star'></i>"
				+ "</span> "
				+ notices[i].NoticeName
				+ "</div>"
				+ "<div class='description' style='word-wrap:break-word; word-break:break-all;display:block;width:100%;'>"
				+ notices[i].NoticeDes + "</div>" + "</a>";
		$("#notice").html(test);
	}
	function func(i) {

		//提交的参数，name和inch是和struts action中对应的接收变量
		var params = {
			page : i
		};
		$.ajax({
			type : "POST",
			url : "loadListForIndex",
			data : params,
			dataType : 'json',
			success : function(data) {
				notices = data.notices;
				NoticeChange(1);

			},
			error : function(json) {
				console.log(json);
				return false;
			}
		});
	}
</script>

</head>

<body >
	<div style="z-index:999" >
		<jsp:include page="/view/home.jsp"></jsp:include>
	</div>
	<s:form id="form" action="Update" method="post" >
		<div class="mm-page" id="particles-js" >
			<div class="container-fluid content" >
			     <div class="row" >
			
					<div class="main ">
						<div class="page-header">
							<div class="pull-right">
								<h2>主页</h2>
							</div>
						</div>
						<div class="row" style="background:url(assets/images/back4.jpg);  background-size: cover;">
						<div class="row" >
							<div class="col-lg-12 col-md-12">
								<div class="container">
									<div class="wrapper">

										<ul id="sb-slider" style="max-width: 840px;" class="sb-slider"  >
											<li ><a
												href="http://www.flickr.com/photos/strupler/2969119944"
												target="_blank"><img src="assets/images/meiguo2.JPG"
													alt="image1" /></a>
												<div class="sb-description" style="z-index:1">
													<h3>Universal Studio</h3>
												</div></li>
											<li><a href="http://www.baidu.com" target="_self"><img
													src="assets/images/waitan5.JPG"  /></a>
												<div class="sb-description" style="z-index:1">
													<h3>外滩 圣诞节</h3>
												</div></li>
											<li><a href="http://www.baidu.com" target="_parent"><img
													src="assets/images/xiao.JPG" alt="image2" /></a>
												<div class="sb-description" style="z-index:1">
													<h3>小黄人</h3>
												</div></li>
											<li><a href="http://www.baidu.com" target="_top"><img
													src="assets/images/lulu1.JPG" alt="image1" /></a>
												<div class="sb-description" style="z-index:1">
													<h3>璐璐</h3>
												</div></li>
											<li><a
												href="http://www.flickr.com/photos/strupler/2968122059"
												target="_blank"><img src="assets/images/wuxi1.JPG"
													alt="image1" /></a>
												<div class="sb-description" style="z-index:1">
													<h3>无锡</h3>
												</div></li>
										

										</ul>
										<div id="shadow" class="shadow"></div>

										<div id="nav-arrows" class="nav-arrows">
											<a href="#">Next</a> <a href="#">Previous</a>
										</div>

										<div id="nav-dots" class="nav-dots">
											<span class="nav-dot-current"></span> <span></span> <span></span>
											<span></span> <span></span> <span></span> <span></span>
										</div>

									</div>
									<!-- /Wrapper-->
								</div>
							</div>

						</div>

						<div class="row" >
							<div class="col-lg-12 col-md-12">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ">

									<div class="row mailbox">
										<div class="panel bk-bg-white"
											style="/* border-left:23px solid #ecedf0;border-right:23px solid #ecedf0;
											border-top:1px solid #ecedf0;border-bottom:1px solid #ecedf0 */margin:0px">



											<div class="panel-body">
												<div class="col-md-12">

													<!-- <button class="btn btn-primary" type="button"
														onclick="func1(list)">
														<i class="fa fa-chevron-circle-up"></i>收起
													</button>
													<button class="btn btn-primary" type="button"
														onclick="func2(list)">
														<i class="fa fa-chevron-circle-down"></i>展开
													</button>
 -->

													<div
														class="btn-group bk-margin-bottom-6 bk-margin-top-6 pull-right">
														<h4>内部消息</h4>
													</div>
												</div>
												<br />
												<div class="col-md-12" id="list">
													<br />
													<form name="form1" method="post" action="">
														<div id="paginationdemo" class="demo">
															<div class="table-responsive">
																<ul class="messages-list">


																	<li class="unread" id="ln"><a
																		href="javascript:test(1)">
																			<div class="header">
																				<span class="from">Jhon Smith</span> <span
																					class="date"> <i class="fa fa-paperclip"></i>
																					Today, 08:45 AM
																				</span>
																			</div>
																			<div class="title">
																				<span class="action"> <i class="fa fa-star"></i>
																				</span> Contrary to popular belief, Lorem Ipsum is not
																				simply random text.
																			</div>
																			<div class="description">Lorem ipsum dolor sit
																				amet, consectetur adipisicing elit, sed do eiusmod
																				tempor incididunt ut labore et dolore magna
																				aliqua......</div>
																	</a></li>
																	<%-- <li id="2"><a id="2" href="javascript:test(this.id)">
																	<div class="header">
																		<span class="from">Jhon Smith</span> <span
																			class="date"> <span class="fa fa-paper-clip"></span>
																			Today, 07:53 AM
																		</span>
																	</div>
																	<div class="title">
																		<span class="action"> <i class="fa fa-star"></i>
																		</span> Contrary to popular belief, Lorem Ipsum is not simply
																		random text.
																	</div>
																	<div class="description">Lorem ipsum dolor sit
																		amet, consectetur adipisicing elit, sed do eiusmod
																		tempor incididunt ut labore et dolore magna
																		aliqua......</div>
															</a></li> --%>

																</ul>
															</div>
															<div id="demo1" style="padding-left: 32px;"></div>
														</div>
													</form>

												</div>

											</div>
										</div>

										<%-- 				<div class="panel-heading bk-bg-primary" style="width:300px">
										<div class="row">
											<div class="col-xs-8 text-left bk-vcenter">
												<h6 class="bk-margin-off">充值驿站</h6>
											</div>
											<div class="col-xs-4 bk-vcenter text-right">
												<i class="fa fa-users"></i>
											</div>
										</div>
									</div>
									<div class="panel"
										style="border:23px solid #9AC0CD;background-color:#9AC0CD;width:300px;height:300px">
										<div class="panel-title-register text-right"
											style="background-color:#9AC0CD;"></div>
										<form method="post" action="">
											<div class="form-group">
												<label for="money"><strong>金额</strong></label> <input
													id="billMoney" class="form-control" type="text"
													placeholder="填写充值金额" name="money"> <span
													class="help-block" style="color:#778899">每笔最高20万</span>
											</div>
											<div class="form-group">
												<label for="remark"><strong>备注</strong></label> <input
													id="remark" class="form-control" type="text"
													placeholder="有什么什么想和管理员说的呀" name="remark"> <span
													class="help-block" style="color:#778899">20字以内</span>
											</div>
											<table class="table" id="recharge">

												<tr>
													<td><span class="help-block"></span></td>
													<td><span class="help-block"></span></td>
													<td><span class="help-block"></span></td>
													<td><span class="help-block"></span></td>
													<td><button class="btn btn-primary" type="button">
															<i class="fa fa-lightbulb-o"></i> 确认充值
														</button></td>

												</tr>
											</table>


										</form>

									</div> --%>

										<div class="panel  bk-bg-primary"
											style="/* border-left:23px solid #ecedf0;border-right:23px solid #ecedf0;
											border-top:1px solid #ecedf0;border-bottom:1px solid #ecedf0 */margin:0px">



											<div class="panel-body ">
												<div class="col-md-14">

													<!-- 	<button class="btn btn-primary" type="button"
														onclick="func1(list)">
														<i class="fa fa-chevron-circle-up"></i>收起
													</button>
													<button class="btn btn-primary" type="button"
														onclick="func2(list)">
														<i class="fa fa-chevron-circle-down"></i>展开
													</button> -->


													<div
														class="btn-group bk-margin-bottom-6 bk-margin-top-6 pull-right">
														<h4>最新公告</h4>
													</div>
												</div>
												<br />
												<div class="col-md-12" id="list">
													<br />
													<div id="paginationdemo" class="demo">
														<div class="table-responsive" id="test">
															<ul class="messages-list">


																	<li class="unread" id="ln"><a
																		href="javascript:test(1)">
																			<div class="header">
																				<span class="from">Jhon Smith</span> <span
																					class="date"> <i class="fa fa-paperclip"></i>
																					Today, 08:45 AM
																				</span>
																			</div>
																			<div class="title">
																				<span class="action"> <i class="fa fa-star"></i>
																				</span> Contrary to popular belief, Lorem Ipsum is not
																				simply random text.
																			</div>
																			<div class="description">Lorem ipsum dolor sit
																				amet, consectetur adipisicing elit, sed do eiusmod
																				tempor incididunt ut labore et dolore magna
																				aliqua......</div>
																	</a></li>
																	<%-- 	<li id="2"><a id="2" href="javascript:test(this.id)">
																	<div class="header">
																		<span class="from">Jhon Smith</span> <span
																			class="date"> <span class="fa fa-paper-clip"></span>
																			Today, 07:53 AM
																		</span>
																	</div>
																	<div class="title">
																		<span class="action"> <i class="fa fa-star"></i>
																		</span> Contrary to popular belief, Lorem Ipsum is not simply
																		random text.
																	</div>
																	<div class="description">Lorem ipsum dolor sit
																		amet, consectetur adipisicing elit, sed do eiusmod
																		tempor incididunt ut labore et dolore magna
																		aliqua......</div>
															</a></li>
 --%>
																</ul>
														</div>
														<div id="demo2" style="padding-left: 32px;"></div>
													</div>
												</div>
											</div>
										</div>
										<div class="panel bk-bg-white"
											style="/* border-left:15px solid #ecedf0;border-right:23px solid #ecedf0;
											border-top:1px solid #ecedf0;border-bottom:1px solid #ecedf0 */margin:0px">



											<div class="panel-body">
												<div class="col-md-12">

													<!-- <button class="btn btn-primary" type="button"
														onclick="func1(list)">
														<i class="fa fa-chevron-circle-up"></i>收起
													</button>
													<button class="btn btn-primary" type="button"
														onclick="func2(list)">
														<i class="fa fa-chevron-circle-down"></i>展开
													</button>
 -->

													<div
														class="btn-group bk-margin-bottom-6 bk-margin-top-6 pull-right">
														<h4>最新活动</h4>
													</div>
												</div>
												<br />
												<div class="col-md-12" id="list">
													<br />
													<form name="form1" method="post" action="">
														<div id="paginationdemo" class="demo">
															<div class="table-responsive">
																<ul class="messages-list">


																	<li class="unread" id="ln"><a
																		href="javascript:test(1)">
																			<div class="header">
																				<span class="from">Jhon Smith</span> <span
																					class="date"> <i class="fa fa-paperclip"></i>
																					Today, 08:45 AM
																				</span>
																			</div>
																			<div class="title">
																				<span class="action"> <i class="fa fa-star"></i>
																				</span> Contrary to popular belief, Lorem Ipsum is not
																				simply random text.
																			</div>
																			<div class="description">Lorem ipsum dolor sit
																				amet, consectetur adipisicing elit, sed do eiusmod
																				tempor incididunt ut labore et dolore magna
																				aliqua......</div>
																	</a></li>
																	<%-- <li id="2"><a id="2" href="javascript:test(this.id)">
																	<div class="header">
																		<span class="from">Jhon Smith</span> <span
																			class="date"> <span class="fa fa-paper-clip"></span>
																			Today, 07:53 AM
																		</span>
																	</div>
																	<div class="title">
																		<span class="action"> <i class="fa fa-star"></i>
																		</span> Contrary to popular belief, Lorem Ipsum is not simply
																		random text.
																	</div>
																	<div class="description">Lorem ipsum dolor sit
																		amet, consectetur adipisicing elit, sed do eiusmod
																		tempor incididunt ut labore et dolore magna
																		aliqua......</div>
															</a></li> --%>

																</ul>
															</div>
															<div id="demo3" style="padding-left: 32px;"></div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>



								</div>

								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<div class="row mailbox">
										<div class="panel  bk-bg-primary"
											style="/* border-left:15px solid #ecedf0;border-right:15px solid #ecedf0;
											border-top:1px solid #ecedf0;border-bottom:1px solid #ecedf0; */margin:0px">



											<div class="panel-body">
												<div class="col-md-12">




													<div
														class="btn-group bk-margin-bottom-6 bk-margin-top-6 pull-right">
														<h4>最新投票</h4>
													</div>
												</div>
												<br />
												<div class="col-md-12" id="list">
													<br />
													<form name="form1" method="post" action="">
														<div id="paginationdemo" class="demo">
															<div class="table-responsive">
																<ul class="messages-list">


																	<li class="unread" id="ln"><a
																		href="javascript:test(1)">
																			<div class="header">
																				<span class="from">Jhon Smith</span> <span
																					class="date"> <i class="fa fa-paperclip"></i>
																					Today, 08:45 AM
																				</span>
																			</div>
																			<div class="title">
																				<span class="action"> <i class="fa fa-star"></i>
																				</span> Contrary to popular belief, Lorem Ipsum is not
																				simply random text.
																			</div>
																			<div class="description">Lorem ipsum dolor sit
																				amet, consectetur adipisicing elit, sed do eiusmod
																				tempor incididunt ut labore et dolore magna
																				aliqua......</div>
																	</a></li>
																	<%-- 	<li id="2"><a id="2" href="javascript:test(this.id)">
																	<div class="header">
																		<span class="from">Jhon Smith</span> <span
																			class="date"> <span class="fa fa-paper-clip"></span>
																			Today, 07:53 AM
																		</span>
																	</div>
																	<div class="title">
																		<span class="action"> <i class="fa fa-star"></i>
																		</span> Contrary to popular belief, Lorem Ipsum is not simply
																		random text.
																	</div>
																	<div class="description">Lorem ipsum dolor sit
																		amet, consectetur adipisicing elit, sed do eiusmod
																		tempor incididunt ut labore et dolore magna
																		aliqua......</div>
															</a></li>
 --%>
																</ul>
															</div>
															<div id="demo4" style="padding-left: 32px;"></div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
									<div class="row mailbox">
										<div class="panel bk-bg-white" style="margin:0px">



											<div class="panel-body">
												<div class="col-md-12">
													<!-- 
													<button class="btn btn-primary" type="button"
														onclick="func1(list)">
														<i class="fa fa-chevron-circle-up"></i>收起
													</button>
													<button class="btn btn-primary" type="button"
														onclick="func2(list)">
														<i class="fa fa-chevron-circle-down"></i>展开
													</button>
 -->

													<div
														class="btn-group bk-margin-bottom-6 bk-margin-top-6 pull-right">
														<h4>外界消息</h4>
													</div>
												</div>
												<br />
												<div class="col-md-12" id="list">
													<br />
													<form name="form1" method="post" action="">
														<div id="paginationdemo" class="demo">
															<div class="table-responsive">
																<ul class="messages-list">


																	<li class="unread" id="ln"><a
																		href="javascript:test(1)">
																			<div class="header">
																				<span class="from">Jhon Smith</span> <span
																					class="date"> <i class="fa fa-paperclip"></i>
																					Today, 08:45 AM
																				</span>
																			</div>
																			<div class="title">
																				<span class="action"> <i class="fa fa-star"></i>
																				</span> Contrary to popular belief, Lorem Ipsum is not
																				simply random text.
																			</div>
																			<div class="description">Lorem ipsum dolor sit
																				amet, consectetur adipisicing elit, sed do eiusmod
																				tempor incididunt ut labore et dolore magna
																				aliqua......</div>
																	</a></li>
																	<%-- <li id="2"><a id="2" href="javascript:test(this.id)">
																	<div class="header">
																		<span class="from">Jhon Smith</span> <span
																			class="date"> <span class="fa fa-paper-clip"></span>
																			Today, 07:53 AM
																		</span>
																	</div>
																	<div class="title">
																		<span class="action"> <i class="fa fa-star"></i>
																		</span> Contrary to popular belief, Lorem Ipsum is not simply
																		random text.
																	</div>
																	<div class="description">Lorem ipsum dolor sit
																		amet, consectetur adipisicing elit, sed do eiusmod
																		tempor incididunt ut labore et dolore magna
																		aliqua......</div>
															</a></li>
 --%>
																</ul>
															</div>
															<div id="demo5" style="padding-left: 32px;"></div>


														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
									<div class="row mailbox">
										<div class="panel  bk-bg-primary"
											style="/* border-left:15px solid #ecedf0;border-right:15px solid #ecedf0;
											border-top:1px solid #ecedf0;border-bottom:1px solid #ecedf0; */margin:0px">



											<div class="panel-body">
												<div class="col-md-12">




													<div
														class="btn-group bk-margin-bottom-6 bk-margin-top-6 pull-right">
														<h4>最新消费</h4>
													</div>
												</div>
												<br />
												<div class="col-md-12" id="list">
													<br />
													<form name="form1" method="post" action="">
														<div id="paginationdemo" class="demo">
															<div class="table-responsive">
																<ul class="messages-list">


																	<li class="unread" id="ln"><a
																		href="javascript:test(1)">
																			<div class="header">
																				<span class="from">Jhon Smith</span> <span
																					class="date"> <i class="fa fa-paperclip"></i>
																					Today, 08:45 AM
																				</span>
																			</div>
																			<div class="title">
																				<span class="action"> <i class="fa fa-star"></i>
																				</span> Contrary to popular belief, Lorem Ipsum is not
																				simply random text.
																			</div>
																			<div class="description">Lorem ipsum dolor sit
																				amet, consectetur adipisicing elit, sed do eiusmod
																				tempor incididunt ut labore et dolore magna
																				aliqua......</div>
																	</a></li>
																	<%-- 	<li id="2"><a id="2" href="javascript:test(this.id)">
																	<div class="header">
																		<span class="from">Jhon Smith</span> <span
																			class="date"> <span class="fa fa-paper-clip"></span>
																			Today, 07:53 AM
																		</span>
																	</div>
																	<div class="title">
																		<span class="action"> <i class="fa fa-star"></i>
																		</span> Contrary to popular belief, Lorem Ipsum is not simply
																		random text.
																	</div>
																	<div class="description">Lorem ipsum dolor sit
																		amet, consectetur adipisicing elit, sed do eiusmod
																		tempor incididunt ut labore et dolore magna
																		aliqua......</div>
															</a></li>
 --%>
																</ul>
															</div>
															<div id="demo6" style="padding-left: 32px;"></div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>



								</div>
								<div class="col-lg-1 col-md-8 col-sm-8 col-xs-12">
									<img src="assets/images/dong.gif" alt="line" />
								</div>
								<div class="col-lg-3 col-md-8 col-sm-8 col-xs-12">

									<%-- 
									<div class="panel-heading bk-bg-primary">
										<div class="row">
											<div class="col-xs-8 text-left bk-vcenter">
												<h6 class="bk-margin-off">充值驿站</h6>
											</div>
											<div class="col-xs-4 bk-vcenter text-right">
												<i class="fa fa-users"></i>
											</div>
										</div>
									</div>
									<div class="panel"
										style="border:10px solid #9AC0CD;background-color:#9AC0CD;height:260px;">
										<div class="panel-title-register text-right"
											style="background-color:#9AC0CD;"></div>
										<form method="post" action="">
											<div class="form-group">
												<label for="money"><strong>金额</strong></label> <input
													id="billMoney" class="form-control" type="text"
													placeholder="填写充值金额" name="money"> <span
													class="help-block" style="color:#778899">每笔最高20万</span>
											</div>
											<div class="form-group">
												<label for="remark"><strong>备注</strong></label> <input
													id="remark" class="form-control" type="text"
													placeholder="有什么什么想和管理员说的呀" name="remark"> <span
													class="help-block" style="color:#778899">20字以内</span>
											</div>
											<table class="table" id="recharge">

												<tr>
													<td><span class="help-block"></span></td>
													<td><span class="help-block"></span></td>
													<td><span class="help-block"></span></td>
													<td><span class="help-block"></span></td>
													<td><button class="btn btn-primary" type="button">
															<i class="fa fa-lightbulb-o"></i> 确认充值
														</button></td>

												</tr>
											</table>


										</form>

									</div> --%>


									<div class="panel-heading bk-bg-primary">
										<div class="row">
											<div class="col-xs-8 text-left bk-vcenter">
												<h6 class="bk-margin-off">附近集体</h6>
											</div>
											<div class="col-xs-4 bk-vcenter text-right">
												<i class="fa fa-users"></i>
											</div>
										</div>
									</div>
									<div
										class="panel-body bk-bg-white bk-padding-off-top bk-padding-off-bottom"
										style="height:700px">
										<div id="paginationdemo" class="demo">
											<div class="table-responsive">
												<div class="row">
													<div
														class="col-xs-3 bk-vcenter text-center bk-padding-top-10 bk-padding-bottom-10">
														<a class="bk-avatar" style="cursor:pointer"> <img
															class="img-circle bk-img-60 bk-border-primary bk-border-2x bk-border-darken"
															alt="" src="assets/img/avatar.jpg"
															onclick="alert('集体描述')"
															onmouseover="this.style.backgroundColor='#D1EEEE'"
															onmouseout="this.style.backgroundColor=''">
														</a>
													</div>
													<div class="col-xs-9 bk-vcenter">
														<h5 class="bk-fg-primary bk-margin-off-bottom">
															<div class="point point-success point-lg"></div>
															Michael
														</h5>
														<p>Nullam vitae arcu in leo molestie hendrerit at quis
															sem.</p>
													</div>
												</div>
												<div class="row">
													<div
														class="col-xs-3 bk-vcenter text-center bk-padding-top-10 bk-padding-bottom-10">
														<a class="bk-avatar" style="cursor:pointer"> <img
															class="img-circle bk-img-60 bk-border-primary bk-border-2x bk-border-darken"
															alt="" src="assets/img/avatar.jpg"
															onclick="alert('集体描述')">
														</a>
													</div>
													<div class="col-xs-9 bk-vcenter">
														<h5 class="bk-fg-primary bk-margin-off-bottom">
															<div class="point point-success point-lg"></div>
															Michael
														</h5>
														<p>Nullam vitae arcu in leo molestie hendrerit at quis
															sem.</p>
													</div>
												</div>
												<div class="row">
													<div
														class="col-xs-3 bk-vcenter text-center bk-padding-top-10 bk-padding-bottom-10">
														<a class="bk-avatar" style="cursor:pointer"> <img
															class="img-circle bk-img-60 bk-border-primary bk-border-2x bk-border-darken"
															alt="" src="assets/img/avatar.jpg">
														</a>
													</div>
													<div class="col-xs-9 bk-vcenter">
														<h5 class="bk-fg-primary bk-margin-off-bottom">
															<div class="point point-success point-lg"></div>
															Michael
														</h5>
														<p>Nullam vitae arcu in leo molestie hendrerit at quis
															sem.</p>
													</div>
												</div>
												<div class="row">
													<div
														class="col-xs-3 bk-vcenter text-center bk-padding-top-10 bk-padding-bottom-10">
														<a class="bk-avatar" style="cursor:pointer"> <img
															class="img-circle bk-img-60 bk-border-primary bk-border-2x bk-border-darken"
															alt="" src="assets/img/avatar.jpg">
														</a>
													</div>
													<div class="col-xs-9 bk-vcenter">
														<h5 class="bk-fg-primary bk-margin-off-bottom">
															<div class="point point-success point-lg"></div>
															Michael
														</h5>
														<p>Nullam vitae arcu in leo molestie hendrerit at quis
															sem.</p>
													</div>
												</div>
												<div class="row">
													<div
														class="col-xs-3 bk-vcenter text-center bk-padding-top-10 bk-padding-bottom-10">
														<a class="bk-avatar" href="#"> <img
															class="img-circle bk-img-60 bk-border-primary bk-border-2x bk-border-darken"
															alt="" src="assets/img/avatar.jpg">
														</a>
													</div>
													<div class="col-xs-9 bk-vcenter">
														<h5 class="bk-fg-primary bk-margin-off-bottom">
															<div class="point point-success point-lg"></div>
															Michael
														</h5>
														<p>Nullam vitae arcu in leo molestie hendrerit at quis
															sem.</p>
													</div>
												</div>
												<div class="row">
													<div
														class="col-xs-3 bk-vcenter text-center bk-padding-top-10 bk-padding-bottom-10">
														<a class="bk-avatar" href="#"> <img
															class="img-circle bk-img-60 bk-border-primary bk-border-2x bk-border-darken"
															alt="" src="assets/img/avatar.jpg">
														</a>
													</div>
													<div class="col-xs-9 bk-vcenter">
														<h5 class="bk-fg-primary bk-margin-off-bottom">
															<div class="point point-success point-lg"></div>
															Michael
														</h5>
														<p>Nullam vitae arcu in leo molestie hendrerit at quis
															sem.</p>
													</div>
												</div>
												<div class="row">
													<div
														class="col-xs-3 bk-vcenter text-center bk-padding-top-10 bk-padding-bottom-10">
														<a class="bk-avatar" href="#"> <img
															class="img-circle bk-img-60 bk-border-primary bk-border-2x bk-border-darken"
															alt="" src="assets/img/avatar.jpg">
														</a>
													</div>
													<div class="col-xs-9 bk-vcenter">
														<h5 class="bk-fg-primary bk-margin-off-bottom">
															<div class="point point-success point-lg"></div>
															Michael
														</h5>
														<p>Nullam vitae arcu in leo molestie hendrerit at quis
															sem.</p>
													</div>
												</div>


											</div>
											<p></p>
											<div id="demo7" style="padding-left: 32px;"></div>
										</div>




									</div>
								</div>
							</div>
						</div>
  </div>
					</div>
				</div>
			</div>
		</div>
		
	</s:form>
</body>
</html>
