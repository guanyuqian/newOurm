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
<link href="assets/css/slicebox.css" rel="stylesheet" />
<link href="assets/css/custom.css" rel="stylesheet" />
<link href="assets/css/demo.css" rel="stylesheet" />
<script src="assets/js/jquery-1.7.1.js"></script>
<script src="assets/js/modernizr.custom.46884.js"></script>
<script src="assets/js/jquery.slicebox.js"></script>
<script type="text/javascript">
	$(document).ready(function() {	
        	
		$("#close").click(function() {
	$("#money").hide();

	});
		
	});
</script>

  </head>
  
 <body onload="setup();">
	<!-- Start: Content -->
	
	
					
									
                                          <%--  <div class="panel" >
                                           <div class="panel-title-register text-right">
                                          
                                          
                                       
                                   
                                   <a class="btn-close" id="close" >
                                       <i class="fa fa-times"></i>
                                       </a>
                                      

                          
                                                </div>
                                                <form method="post" action="" >
                                                    <div class="form-group" >
                                               <label for="money"><strong>金额</strong></label>
                                            <input id="billMoney" class="form-control" type="text" placeholder="填写充值金额" name="money">
                                           <span class="help-block">每笔最高20万</span>
                                                    </div>
                                               <div class="form-group">
                                                  <label for="remark"><strong>备注</strong></label>
                                                 <input id="remark" class="form-control" type="text" placeholder="有什么什么想和管理员说的呀" name="remark">
                                                  <span class="help-block">20字以内</span>
                                              </div>
                                              <table class="table"  id="recharge">
  
                                             <tr>
                                          <td><span class="help-block"></span></td>
                                          <td><span class="help-block"></span></td>
                                          <td><span class="help-block"></span></td>
                                          <td><span class="help-block"></span></td>
                                          <td><button class="btn btn-primary" type="button">
                                               <i class="fa fa-lightbulb-o"></i>
                                                                                                                                                           确认充值
                                                </button></td>
    
                                                  </tr>
                                                </table>
                                               
                                              
                                              </form>
                                              
                                          </div>
                                        --%>
                                        <div class="row">
                                        	<div class="col-lg-4 col-md-8 col-sm-8 col-xs-12">
									<div class="panel-heading bk-bg-primary" >
										<div class="row">
											<div class="col-xs-8 text-left bk-vcenter">
												<h6 class="bk-margin-off">充值驿站</h6>
											</div>
											<div class="col-xs-4 bk-vcenter text-right">
												<i class="fa fa-users"></i>
											</div>
										</div>
										</div>
								  <div class="panel"  style="border:23px solid #9AC0CD;background-color:#9AC0CD;">
                                           <div class="panel-title-register text-right"style="background-color:#9AC0CD;">
                                          
                                          
                                       
                                  
                                      

                          
                                                </div>
                                                <form method="post" action="" >
                                                    <div class="form-group" >
                                               <label for="money" ><strong>金额</strong></label>
                                            <input id="billMoney" class="form-control" type="text" placeholder="填写充值金额" name="money">
                                           <span class="help-block" style="color:#778899">每笔最高20万</span>
                                                    </div>
                                               <div class="form-group">
                                                  <label for="remark"><strong>备注</strong></label>
                                                 <input id="remark" class="form-control" type="text" placeholder="有什么什么想和管理员说的呀" name="remark">
                                                  <span class="help-block" style="color:#778899">20字以内</span>
                                              </div>
                                              <table class="table"  id="recharge">
  
                                             <tr>
                                          <td><span class="help-block"></span></td>
                                          <td><span class="help-block"></span></td>
                                          <td><span class="help-block"></span></td>
                                          <td><span class="help-block"></span></td>
                                          <td><button class="btn btn-primary" type="button">
                                               <i class="fa fa-lightbulb-o"></i>
                                                                                                                                                           确认充值
                                                </button></td>
    
                                                  </tr>
                                                </table>
                                               
                                              
                                              </form>
                                              
                                          </div>		
							            </div>
							            </div>
									
			
 
  </body>
</html>
