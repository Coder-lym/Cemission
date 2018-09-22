<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>密码设置</title>
<style type="text/css">
			#main{
				width:1080px;
				height:500px;
			}
			table{
				border-color: #D8D5D5;
				font-size:18px;
				margin:50px 80px 0px 50px;
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
		<script type="text/javascript">
			if(!${resultPwd}){
				alert("旧密码输入错误！");
			}else{
				alert("修改成功！");
			}
		</script>
	</head>
	<body>
		<div id="main">
			<form action="${ctx}/account/updatePwd?id=${account.id}" method="post">
				<table border="1" cellspacing="0" cellpadding="0">
					<tr>
						<td>旧密码：</td>
						<td>
							<input type="text" name="oldPwd" />
						</td>
					</tr>
					<tr>
						<td>新密码：</td>
						<td><input type="text" name="newpassWord"/></td>
					</tr>
					<tr>
						<td>再次确认密码：</td>
						<td><input type="text" name="passWord"/></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="确认修改" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>