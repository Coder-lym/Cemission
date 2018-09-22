<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>参数添加</title>
		<style type="text/css">
			#main{
				width:1090px;
				height:600px;
			}
			table{
				border-color: #D8D5D5;
				font-size:18px;
				margin:10px 80px 0px 50px;
			}
			th{
				color:#53616C;
			}
			td{
				width:350px;
				height:50px;
				text-align: center;
			}
			input{
				width:300px;
				height:40px;
				font-size:16px;
				border:none;
			}
			select{
				width:300px;
				height:40px;
				font-size:16px;
			}	
		</style>
	</head>
	<body>
		<div id="main">
			<form action="${ctx}/parameterManager/insertParameter" method="post">
				<table border="1" cellspacing="0" cellpadding="0">
					<tr>
						<td>参数名称</td>
						<td>
							<input type="text" name="parameterName"/>
						</td>
						
					</tr>
					<tr>
						<td>碳排放系数</td>
						<td>
							<input type="text" name="cemissionCoe"/>
						</td>
					</tr>
					<tr>
						<<td>参数类别</td>
						<td>
							<select name="parameterType">
								<option >请选择</option>
								<option value="农作物">农作物</option>
								<option value="家畜">家畜</option>
								<option value="农用品">农用品</option>
								<option value="其他">其他</option>
							</select>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="确定"/>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>