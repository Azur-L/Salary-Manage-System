<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/form/form_layout.css">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>公式计算公式</title>
<script type="text/javascript">
		function initSalaryCompute()
		{
			var myform=document.forms[0];
			myform.action="initSalaryCompute/initSalaryCompute_salaryComputeFormula";
			myform.method="post";
			myform.submit();
			alert("设置成功!");
		}
		function checkLogin() {
		    var nid = "<%=session.getAttribute("user.id")%>";

		    if (nid == "null" || nid == "") {
			window.location.href = "login.jsp";
			$(".alert").alert("请先登录！");
		    }
	    }
	    
	  
</script>

</head>


<body onload="checkLogin()">

	<!-- <div class="container" style="margin-top:20px;font-family:'宋体'">
    <h2>工资计算公式</h2>
    <hr/>
 
  	
   <div class="row" >
   <div class="span2.2" >
   
   	<span>地区差：</span><br/>
   	<span>岗位津贴： </span><br/>
   	<span>教护补贴：</span><br/>
   	<span>特殊津贴(岗位加权)：</span><br/>
   	<span>特殊津贴(岗位加权)：</span><br/>
   	<span>其它补贴(岗位加权)：</span><br/>
   	<span>其它补贴(薪级加权)：</span><br/>
   	<span>电话补贴(岗位加权)：</span><br/>
   	<span>电话补贴(薪级加权)：</span><br/>	
   	 			
   </div>
   <div class="span6">
   <input type="text" name="areaDifference" style="height:16px;"/><br/>
   <input type="text" name="positionAllowance" style="height:16px;"/><br/>
   <input type="text" name="educationAllowance" style="height:16px;" /><br/>
   <input type="text" name="specialPositionParas" style="height:16px;"/><br/>
   <input type="text" name="specialLevelParas" style="height:16px;"/><br/>
   <input type="text" name="otherPositionParas" style="height:16px;"/><br/>
   <input type="text" name="otherLevelParas" style="height:16px;"/><br/>
   <input type="text" name="phonePositionParam" style="height:16px;"/><br/>
    <input type="text" name="phoneLevelParam"  style="height:16px;"/><br/>
   </div>
   </div>
   <div style="margin-left:150px;margin-top:30px;">
   <input class="btn btn-success" type="button" name="btnOk" onclick="initSalaryCompute()" value="确定" />
   </div>
  	</div>-->

	<div class="panel panel-info form_card">
		<div class="panel-heading">
			<h3 class="panel-title">
				设置工资计算公式
			</h3>
		</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form" id="myform">
				<div class="form-group">
					<label for="areaDifference" class="col-sm-2 control-label">地区差：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="areaDifference" name="areaDifference" >
					</div>
					<label for="positionAllowance" class="col-sm-2 control-label">岗位津贴：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="positionAllowance" name="positionAllowance" >
					</div>
				</div>
				<div class="form-group">
					<label for="educationAllowance" class="col-sm-2 control-label">教护补贴：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="educationAllowance" name="educationAllowance" >
					</div>
					<label for="onlyChildAllowance" class="col-sm-2 control-label">独生子女：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="onlyChildAllowance" name="onlyChildAllowance">
					</div>

				</div>
				<div class="form-group">
					<label for="specialPositionParas" class="col-sm-2 control-label">特殊津贴(岗位加权)：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="specialPositionParas" name="specialPositionParas">
					</div>
					<label for="specialLevelParas" class="col-sm-2 control-label">特殊津贴(薪级加权)：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="specialLevelParas" name="specialLevelParas" >
					</div>

				</div>
				<div class="form-group">
					<label for="otherPositionParas" class="col-sm-2 control-label">其它补贴(岗位加权)：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="otherPositionParas" name="otherPositionParas" >
					</div>
					<label for="otherLevelParas" class="col-sm-2 control-label">其它补贴(薪级加权)：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="otherLevelParas" name="otherLevelParas">
					</div>
				</div>
				<div class="form-group">
					<label for="phonePositionParam" class="col-sm-2 control-label">电话补贴(岗位加权)：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="phonePositionParam" name="phonePositionParam" >
					</div>
					<label for="phoneLevelParam" class="col-sm-2 control-label">电话补贴(薪级加权)： </label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="phoneLevelParam" name="phoneLevelParam">
					</div>
				</div>
				<div class="col-sm-1 "></div>
				<input type="button" name="btnOk" class="btn btn-success col-sm-1" onclick="initSalaryCompute()" value="确定" />
				<div class="col-sm-1"></div>
				<input class="btn btn-warning col-sm-1" type="RESET" value="重置">
			</form>
		</div>
	</div>
</body>
</html>