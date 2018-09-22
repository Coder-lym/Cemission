<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>操作员信息修改</title>
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
			<form action="${ctx}/account/updateAccount?id=${accountById.id}" method="post">
				<table border="1" cellspacing="0" cellpadding="0">
					<tr>
						<td>操作员名称</td>
						<td>
							<input type="text" value="${accountById.userName}" name="userName" />
						</td>
					</tr>
					<tr>
						<td>操作员密码</td>
						<td>
							<input type="text" value="${accountById.passWord}" name="passWord" />
						</td>
					</tr>
					<tr>
						<td>操作员角色</td>
						<td>
						
							<select name="role">
							<c:if test="${accountById.role == '管理员'}">
								<option value="管理员" selected = "selected">管理员</option>
								<option value="普通用户">普通用户</option>
							</c:if>
							<c:if test="${accountById.role == '普通用户'}">
								<option value="管理员" >管理员</option>
								<option value="普通用户" selected = "selected">普通用户</option>
							</c:if>	
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