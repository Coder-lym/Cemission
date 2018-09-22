<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>图表</title>
	<style type="text/css">
		#main{
			width:1090px;
			height:600px;
		}
		#check{
			margin:30px 20px;
			float:left;
		}
		.check_txt{
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
		
		#sub{
			margin:30px 120px;
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
		}
		#image{
			width:450px;
			height:400px;
			margin-left:200px;
			clear: both;
		}
		</style>
</head>
<body>
	<div id="main">
		<form action="${ctx}/chart/getChart" method="post">
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
			<div id="sub">
				<input type="submit" value="查看" />
			</div>
		</form>		
		<div id="image">
			<img src="${chartLineURL}"/>
		</div>
	</div><!-- end main -->
</body>
</html>