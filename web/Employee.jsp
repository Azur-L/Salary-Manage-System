<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>工资管理系统</title>
	<link rel="stylesheet" href="css/form/form_layout.css">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function checkLogin() {
		var nid = "<%=session.getAttribute("user.id")%>";	
		if (nid == "null" || nid == "") {			
			window.location.href="login.jsp";
			alert("请先登录！");
		}
	}

	function showInfo() {
		var info = "<%=session.getAttribute("alertInfo")%>";
		<%session.removeAttribute("alertInfo");%>
		if(info != "null" && info != "") {
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
			职工信息录入
		</h3>
	</div>
	<div class="panel-body">
		<form class="form-horizontal" role="form" id="E_form">
			<div class="form-group">
				<label for="E_id" class="col-sm-2 control-label">职工号:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="E_id" name="employee.id" placeholder="范围111111-999999" >
				</div>
				<label for="E_name" class="col-sm-2 control-label">姓名:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="E_name" name="employee.name" placeholder="姓名" >
				</div>
			</div>
			<div class="form-group">
				<label for="E_gender" class="col-sm-2 control-label">性别:<span style="color:red">*</span></label>
				<div class="col-sm-2">
					<select id="E_gender" name="employee.gender" class="form-control">
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</div>
				<div class="col-sm-1"></div>
				<label for="E_birthday" class="col-sm-2 control-label">出生日期:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<input type="text" class="form-control datepicker" id="E_birthday" name="employee.birthday" autocomplete="off">
				</div>
			</div>
			<div class="form-group">
				<label for="E_Uid" class="col-sm-2 control-label">身份证号:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="E_Uid" name="employee.uid" >
				</div>
				<label for="E_email" class="col-sm-2 control-label">邮箱:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="E_email" name="employee.email" >
				</div>
			</div>
			<div class="form-group">
				<label for="E_department" class="col-sm-2 control-label">单位:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="E_department" name="employee.department" >
				</div>
				<label for="E_jobType" class="col-sm-2 control-label">岗位性质:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<select id="E_jobType" name="employee.jobType" class="form-control">
						<option value="管理">管理</option>
						<option value="专技">专技</option>
						<option value="工人">工人</option>
						<option value="其它" selected>其它</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="E_maxEducation" class="col-sm-2 control-label">最高学历:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<select id="E_maxEducation" name="employee.maxEducation" class="form-control">
						<option value="无">无</option>
						<option value="博士研究生">博士研究生</option>
						<option value="硕士研究生">硕士研究生</option>
						<option value="本科">本科</option>
						<option value="大专(高职)">大专(高职)</option>
						<option value="高中(中专)">高中(中专)</option>
						<option value="初中">初中</option>
						<option value="小学">小学</option>
					</select>
				</div>
				<label for="E_maxEducationDate" class="col-sm-2 control-label">最高学历获得时间:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<input type="text" class="form-control datepicker" id="E_maxEducationDate" name="employee.maxEducationDate" autocomplete="off">
				</div>

			</div>

			<div class="form-group">
				<label for="E_maxDegree" class="col-sm-2 control-label">最高学位:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<select id="E_maxDegree" name="employee.maxDegree" class="form-control">
						<option value="无">无</option>
						<option value="学士">学士</option>
						<option value="硕士">硕士</option>
						<option value="博士">博士</option>
					</select>
				</div>
				<label for="E_maxDegreeDate" class="col-sm-2 control-label">最高学位获得时间:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<input type="text" class="form-control datepicker" id="E_maxDegreeDate" name="employee.maxDegreeDate" autocomplete="off">
				</div>
			</div>
			<div class="form-group">
				<label for="E_type" class="col-sm-2 control-label">人员身份:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="E_type" name="employee.type">
				</div>
				<label for="E_source" class="col-sm-2 control-label">入校来源:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="E_source" name="employee.source">
				</div>
			</div>
			<div class="form-group">
				<label for="E_reachSchoolDate" class="col-sm-2 control-label">入校报到时间:<span style="color:red">*</span></label>
				<div class="col-sm-3">
					<input type="text" class="form-control datepicker" id="E_reachSchoolDate" name="employee.reachSchoolDate" autocomplete="off">
				</div>
				<label for="E_hireWork" class="col-sm-2 control-label">聘任职务:</label>
				<div class="col-sm-3">
					<select id="E_hireWork" name="employee.hireWork" class="form-control" onchange="showB(this.selectedIndex)">
						<option value="无">无</option>
						<option value="正部级">正部级</option>
						<option value="副部级">副部级</option>
						<option value="正厅级">正厅级</option>
						<option value="副厅级">副厅级</option>
						<option value="正处级">正处级</option>
						<option value="副处级">副处级</option>
						<option value="正科级">正科级</option>
						<option value="副科级">副科级</option>
						<option value="科员">科员</option>
						<option value="办事员">办事员</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="E_workLevel" class="col-sm-2 control-label">职务级别:</label>
				<div class="col-sm-3">
					<select id="E_workLevel" name="employee.workLevel" class="form-control" onchange="showB(this.selectedIndex)">
						<option value="">无</option>
						<option value="1">一级</option>
						<option value="2">二级</option>
						<option value="3">三级</option>
						<option value="4">四级</option>
						<option value="5">五级</option>
						<option value="6">六级</option>
						<option value="7">七级</option>
						<option value="8">八级</option>
						<option value="9">九级</option>
						<option value="10">十级</option>
					</select>
				</div>
				<label for="E_startWorkDate" class="col-sm-2 control-label">任职时间:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control datepicker" id="E_startWorkDate" name="employee.startWorkDate" autocomplete="off">
				</div>

			</div>
			<div class="form-group">
				<label for="E_hireTitle" class="col-sm-2 control-label">聘任职称:</label>
				<div class="col-sm-3">
					<select id="E_hireTitle" name="employee.hireTitle" class="form-control" onchange="showC(this.selectedIndex)">
						<option value="无">无</option>
						<option value="正高级">正高级</option>
						<option value="副高级">副高级</option>
						<option value="中级">中级</option>
						<option value="助理级">助理级</option>
						<option value="员级">员级</option>
					</select>
				</div>
				<label for="E_titleLevel" class="col-sm-2 control-label">职称级别:</label>
				<div class="col-sm-3">
					<select id="E_titleLevel" name="employee.titleLevel" class="form-control" onchange="showD(this.selectedIndex)">
						<option value="">无</option>
						<option value="1">一级</option>
						<option value="2">二级</option>
						<option value="3">三级</option>
						<option value="4">四级</option>
						<option value="5">五级</option>
						<option value="6">六级</option>
						<option value="7">七级</option>
						<option value="8">八级</option>
						<option value="9">九级</option>
						<option value="10">十级</option>
						<option value="11">十一级</option>
						<option value="12">十二级</option>
						<option value="13">十三级</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="E_hireDate" class="col-sm-2 control-label">聘任时间:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control datepicker" id="E_hireDate" name="employee.hireDate" autocomplete="off">
				</div>
				<label for="E_hireJob" class="col-sm-2 control-label">(拟)聘任岗位:</label>
				<div class="col-sm-3">
					<select id="E_hireJob" name="employee.hireJob" class="form-control" onchange="showE(this.selectedIndex)">
						<option value="无">无</option>
						<option value="高级技工">高级技工</option>
						<option value="技师">技师</option>
						<option value="高级工">高级工</option>
						<option value="中级工">中级工</option>
						<option value="初级工">初级工</option>
						<option value="普通工">普通工</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label for="E_jobLevel" class="col-sm-2 control-label">聘岗级别:</label>
				<div class="col-sm-3">
					<select id="E_jobLevel" name="employee.jobLevel" class="form-control" onchange="showF(this.selectedIndex)">
						<option value="">无</option>
						<option value="1">技术工一级</option>
						<option value="2">技术工二级</option>
						<option value="3">技术工三级</option>
						<option value="4">技术工四级</option>
						<option value="5">技术工五级</option>
						<option value="6">普通工</option>
					</select>
				</div>
			</div>
			<div class="ctrl">
					<button type="button" class="btn btn-success col-sm-1" onclick="addEmployee()">增加</button>
					<div class="col-sm-1"></div>
					<input class="btn btn-warning col-sm-1" type="RESET" value="重置">
			</div>
		</form>
	</div>
</div>


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/liveValidation.js"></script>
<script type="text/javascript" src="js/employee.js"></script>
</body>
</html>
