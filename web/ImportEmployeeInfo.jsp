<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>导入职工信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/form/form_layout.css">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function checkLogin() {
		var nid = "<%=session.getAttribute("user.id")%>";
		if (nid == "null" || nid == "") {
			window.location.href = "login.jsp";
			alert("请先登录！");
		}
	}

	function showInfo() {
		var info = "<%=session.getAttribute("alertInfo")%>";
		<%session.removeAttribute("alertInfo");%>
		if (info != "null" && info != "") {
			alert(info);
		}
	}
	showInfo();
</script>
</head>

<body onload="checkLogin()">
<div class="panel panel-info form_card">
	<div class="panel-heading">
		<h3 class="panel-title">
			职工信息批量导入
		</h3>
	</div>
	<div class="panel-body">
		<s:form action="employee/importEmployeeInfo_ImportEmployeeInfo"
				method="post" enctype="multipart/form-data" role="form">
			<div class="col-sm-8">
				<div class="col-sm-1"></div>
				<input type="file" title="选择文件" name="employeeFile" label="excelFile"
					   class="file-input-wrapper btn btn-primary" />
				<button type="submit" class="btn btn-success" onclick="succeed()">导入</button>
			</div>
		</s:form>
	</div>
</div>
<div class="panel panel-success form_card">
	<div class="panel-heading">
		<h3 class="panel-title">
			职工基本信息
		</h3>
	</div>
	<div class="panel-body">
		<table class="table table-hover">
			<tr class="active">
				<td width="10%">职工号</td>
				<td width="10%">姓名</td>
				<td width="10%">性别</td>
				<td width="10%">邮箱</td>
				<td width="10%">单位</td>
			</tr>
			<s:iterator id="employeeList" value="#session.employeeList">
				<tr bgcolor="#FFFFFF">
					<td><s:property value="#employeeList.id" />
					</td>
					<td><s:property value="#employeeList.name" />
					</td>
					<td><s:property value="#employeeList.gender" />
					</td>
					<td><s:property value="#employeeList.email" />
					</td>
					<td><s:property value="#employeeList.department" />
					</td>
				</tr>
			</s:iterator>
		</table>
		<%
			session.removeAttribute("employeeList");
		%>
	</div>
</div>


</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.file-input.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<script>
	$('input[type=file]').bootstrapFileInput();
	$('.file-inputs').bootstrapFileInput();
</script>
</html>
