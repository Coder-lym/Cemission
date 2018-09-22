<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预测</title>
</head>
<body>
<title>预测</title>
	<style type="text/css">
		#main{
			width:1090px;
			height:600px;
		}
	/********************************check(县区)********************************/	
		#check{
			margin:30px 20px 10px;
			float:left;
		}
		.check_txt,.year_txt{
			font-size: 20px;
			float:left;
		}
		.check_text{
			width:100px;
			height:40px;
			float:left;
		}
		.check_text select{
			width:180px;
			height:30px;
			padding-left:10px;
			border-radius: 5px;
		}
		/********************************year年份********************************/
		#year{
			margin:30px 0px;
			
		}
		.year_txt{
			margin-top:30px;
			margin-left:80px;
			float:left;
		}
		.year_text input{
			width:100px;
			height:25px;
			padding-left:10px;
			border-radius: 5px;
			float: left;
		}
	 	/********************************提交按钮********************************/
		#sub{
			margin:15px 50px;
			float:left;
			
		}
		#sub input{
			width:70px;
			height:30px;
			border:none;
			border-radius: 5px;
			background-color: #4D97DE;
			font-size: 16px;
			line-height: 30px;
			clear: both;
		}
		/*********************************result********************************/
		#result{
			clear:both;
			margin:0px 20px;
		}
		.res_exp,.res_dev,.res_cvalue{
			font-size: 20px;
			float:left;
		}
		.res_expvalue{
			width:180px;
			height:25px;
			float: left;
		}
		.res_dev{
			margin-left: 30px;
		}
		.res_devalue{
			width:120px;
			height:25px;
			float: left;
		}
		.res_cvalue{
			clear:both;
			margin-top: 20px;
		}
		.res{
			width:120px;
			height:25px;
			background-color: #FFFFFF;
			margin-top: 20px;
			float: left;
		}
		/*********************************图表********************************/
		#image{
			width:450px;
			height:400px;
			margin-top:40px;
			margin-left:280px;
			clear: both;
		}
	</style>
</head>
<body>
	<div id="main">
		<form action="${ctx}/yuce/forecast" method="post">
			<div id="check">
				<div class="check_txt">
					请选择县（区）：
				</div>
				<div class="check_text">
					<select name="code">
						<option value="">--请选择--</option>
					<c:forEach items="${county}" var="county">	
						<option value="${county.code}">${county.county}</option>
					</c:forEach>	
					</select>
				</div>
			</div><!-- end check -->
			<div id="year">
				<div class="year_txt">
					请输入年份：
				</div>
				<div class="year_text">
					<input type="text" name="year" id="year" placeholder="请输入年份" />
				</div>
			</div><!-- end year -->
			<div id="sub">
				<input type="submit" name="sub" id="sub" value="查看" />
			</div>
		</form>	
		<div id="result">
			<div class="res_exp">
				一元线性回归公式：
			</div>
			<c:if test="${dataPoint != null}">
				<div class="res_expvalue">${dataPoint.expression}</div>
			</c:if>	
				<div class="res_dev">
					误差（R²）:
				</div>
			<c:if test="${dataPoint != null}">	
				<div class="res_devalue">${dataPoint.deviation}</div>
			</c:if>		
				<div class="res_cvalue">
					预测值：
				</div>
			<c:if test="${dataPoint != null}">	
				<div class="res">${dataPoint.cvalue}</div>
			</c:if>
		</div><!-- end result -->
		<div id="image">
			<img src="${chartLineURL}"/>
		</div>
	</div><!-- end main -->
</body>
</html>