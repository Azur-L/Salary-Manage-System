<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>工资系统</title>
		<link rel="stylesheet" href="css/left.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript">
	function checkLogin() {
		var nid = "<%=session.getAttribute("user.id")%>";
		
		if (nid == "null" || nid == "") {			
			window.location.href="login.jsp";

		}
	}
</script>
	</head>
	<body >
		<div class="body">
		    <div class="draw">
		      <!--LeftSidebar content-->
		      	<fieldset style="background:#2b333b">
				<h3 style="text-align: center;color: #fdffff">工资管理</h3>
					<ul id="accordion" class="accordion">
						<li>
							<div class="link"><i class="fa_start"></i>职工信息管理<i class="fa_end"></i></div>
							<ul class="submenu">
								<li><a href="Employee.jsp" target="mainFrame">信息录入</a></li>
								<li><a href="DisplayEmployeeInfo.jsp" target="mainFrame">职工查询</a></li>
								<li><a href="SalaryInfoDisplay.jsp" target="mainFrame">工资查询</a></li>
								<li><a href="ImportEmployeeInfo.jsp" target="mainFrame">批量导入</a></li>
							</ul>
						</li>
						<li>
							<div class="link"><i class="fa_start"></i>基本工资体系<i class="fa_end"></i></div>
							<ul class="submenu">
								<li><a href="getData" target="mainFrame">基本工资标准</a></li>
								<li><a href="salaryComputeFormula.jsp" target="mainFrame">工资计算公式</a></li>
							</ul>
						</li>
						<li>
							<div class="link"><i class="fa_start"></i>工资普调<i class="fa_end"></i></div>
							<ul class="submenu">
								<li><a href="newWorkerSalary_daiqixin.jsp" target="mainFrame">增员起薪</a></li>
								<li><a href="remove.jsp" target="mainFrame">减员停薪、取消工资关系</a></li>
								<li><a href="nianzhongjiang.jsp" target="mainFrame">年终一次性奖金</a></li>
								<li><a href="specialSalaryFunChoose.jsp" target="mainFrame">特殊情况工资变动</a></li>
							</ul>
						</li>
						<li>
							<div class="link"><i class="fa_start"></i>人事调动<i class="fa_end"></i></div>
							<ul class="submenu">
								<li><a href="campusmobilization.jsp" target="mainFrame">校内调动</a></li>
								<li><a href="academictitlechange.jsp" target="mainFrame">职称变动</a></li>
								<li><a href="positionchange.jsp" target="mainFrame">职务变动</a></li>
							</ul>
						</li>
						<li>
							<div class="link"><i class="fa_start"></i>工资发放<i class="fa_end"></i></div>
							<ul class="submenu">
								<li><a href="autoSalary" target="mainFrame">每月工资生成</a></li>
								<li><a href="Querystatistics.jsp" target="mainFrame">历月工资查询统计</a> </li>
							</ul>
						</li>
					</ul>
				</fieldset>
			</div>
		</div>
	</body>
</html>
