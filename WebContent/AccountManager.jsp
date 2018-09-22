<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>操作员管理</title>
		<style type="text/css">
			#main{
				width:1080px;
				height:500px;
			}
			.nav{
				margin:30px 80px 0px 50px;
			}
			.account_name,.account_type,.name_text,.name_input,.type_text,.type_input,.btn{
				float: left;
			}
			.account_type{
				margin-left:50px;
			}
			.account_name input{
				width: 220px;
				height:25px;
				font-size: 16px;
				line-height: 25px;
			}
			.account_type select{
				width:200px;
				height:30px;
				font-size: 16px;
				line-height: 30px;
			}
			.name_text,.type_text{
				width:120px;
				height:40px;
				font-size: 20px;
				text-align: center;
				line-height: 40px;
			}
			.name_input,.type_input{
				margin-top:5px;
				margin-left:5px;
			}
			.btn{
				margin-top: 5px;
				margin-left:30px;
			}
			.btn input{
				width:70px;
				height:30px;
				font-size: 18px;
				border:none;
				border-radius:5px;
				background-color: #89C2F9;
			}
			.account_table{
				padding:50px 30px 0px ;
				clear:both;
			}
			table{
				border-color: #D8D5D5;
			}
			th{
				width:180px;
				height:30px;
				color:#53616C;
			}
			td{
				width:180px;
				height:35px;
				text-align: center;
			}
			a{
				color:blue;
				font-size:16px;
				text-decoration:none;
			}
			a:hover{
				color:red;
			}
		</style>
	</head>
	<body>
		<div id="main">
			<div class="nav">
				<form action="${ctx}/account/findAccount" method="post">
					<!-- 按操作员名称搜索 -->
					<div class="account_name">
						<div class="name_text">
							操作员名称：
						</div>
						<div class="name_input">
							<input type="text" name="userName" />
						</div>
					</div>
					<!-- 按操作员角色搜索 -->
					<div class="account_type">
						<div class="type_text">
							操作员角色：
						</div>
						<div class="type_input">
							<select name="role">
								<option value="">请选择</option>
								<option value="管理员">管理员</option>
								<option value="普通用户">普通用户</option>
							</select>
						</div>
					</div>
					<div class="btn">
						<input type="submit" value="搜索"/>
					</div>
				</form>
			</div><!-- end nav -->
			<div class="account_table">
				<table border="1" cellpadding="0" cellspacing="0">
					<tr>
						<th>序号</th>
						<th>操作员名称</th>
						<th>操作员角色</th>
						<th>操作员密码</th>
						<th>操作</th>
					</tr>
					<c:if test="${accounts != null}">
						<c:forEach var="account" items="${accounts}" varStatus="status">
							<tr>
								<td>${status.index+1}</td>
								<td>${account.userName}</td>
								<td>${account.role}</td>
								<td>${account.passWord}</td>
								<td>
									<a href="${ctx}/account/findAccountById?id=${account.id}">修改</a>|
									<a href="${ctx}/account/deleteAccount?id=${account.id}">删除</a>
								</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
	</body>
</html>