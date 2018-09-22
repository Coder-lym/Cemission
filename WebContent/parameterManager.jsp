<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<html>
<head>
    <title>参数管理</title>
<%--     <link rel="stylesheet" type="text/css" href="${ctx}/assets/css/parameterManager.css"/> --%>
	<style type="text/css">
		#main{
			width:1060px;
			height:600px;
		}
		.parameter_list{
			margin:10px 80px 0px 50px;
		}
		a{
			color:blue;
			font-size:16px;
			text-decoration:none;
		}
		a:hover{
			color:red;
		}
		p{
			color:#6F6767;
			font-size: 18px;
			margin-bottom:0px;
		}
		table{
			border-color: #D8D5D5;
		}
		th{
			color:#53616C;
			height:35px;
		}
		td{
			width:250px;
			height:40px;
			text-align: center;
		}
		
	</style>
</head>
<body>
<div id="main">
    <div class="parameter_list">
        <p>农作物&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作物单位：亩</p>
        <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>作物名称</th>
                <th>碳排放系数</th>
                <th>操作</th>
            </tr>

		<c:if test="${list != null}">
			
			<c:forEach var="parameter" items="${list}">
				<c:if test="${parameter.parameterType.equals('农作物')}">
		            <tr>
		                <td>${parameter.parameterName}</td>
		                <td>${parameter.cemissionCoe}</td>
		                <td>
		                	<a href="${ctx}/parameterManager/findparameterById?id=${parameter.id}">修改</a>|
		                	<a href="${ctx}/parameterManager/deleteParameter?id=${parameter.id}">删除</a>
		               	</td>
 		                
		            </tr>
	            </c:if>
            </c:forEach>
        </c:if>
			<tr>
				<td colspan="3">
					<a href="../parameterAdd.jsp">添加</a>
				</td>
			</tr>
        </table>
    </div>
    <div class="parameter_list">
        <p>家畜</p>
        <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>种类</th>
                <th>碳排放系数</th>
                <th>操作</th>
            </tr>
			<c:if test="${list != null}">
			
				<c:forEach var="parameter" items="${list}">
					<c:if test="${parameter.parameterType.equals('家畜')}">
			            <tr>
			                <td>${parameter.parameterName}</td>
		                <td>${parameter.cemissionCoe}</td>
		                <td>
		                	<a href="${ctx}/parameterManager/findparameterById?id=${parameter.id}">修改</a>|
		                	<a href="${ctx}/parameterManager/deleteParameter?id=${parameter.id}">删除</a>
		               	</td>
			            </tr>
            		</c:if>
            	</c:forEach>
        	</c:if>
           	<tr>
				<td colspan="3">
					<a href="../parameterAdd.jsp">添加</a>
				</td>
			</tr>
        </table>
    </div>
    <div class="parameter_list">
        <p>农用品</p>
        <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>名称</th>
                <th>碳排放系数</th>
                <th>操作</th>
            </tr>
			<c:if test="${list != null}">
			
				<c:forEach var="parameter" items="${list}">
					<c:if test="${parameter.parameterType.equals('农用品')}">
			            <tr>
			                <td>${parameter.parameterName}</td>
		                <td>${parameter.cemissionCoe}</td>
		                <td>
		                	<a href="${ctx}/parameterManager/findparameterById?id=${parameter.id}">修改</a>|
		                	<a href="${ctx}/parameterManager/deleteParameter?id=${parameter.id}">删除</a>
		               	</td>
            		</c:if>
            	</c:forEach>
        	</c:if>
            <tr>
				<td colspan="3">
					<a href="../parameterAdd.jsp">添加</a>
				</td>
			</tr>
        </table>
    </div>
    <div class="parameter_list">
        <p>其他</p>
        <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>名称</th>
                <th>碳排放系数</th>
                <th>操作</th>
            </tr>

           <c:if test="${list != null}">
			
				<c:forEach var="parameter" items="${list}">
					<c:if test="${parameter.parameterType.equals('其他')}">
			            <tr>
			                <td>${parameter.parameterName}</td>
		                <td>${parameter.cemissionCoe}</td>
		                <td>
		                	<a href="${ctx}/parameterManager/findparameterById?id=${parameter.id}">修改</a>|
		                	<a href="${ctx}/parameterManager/deleteParameter?id=${parameter.id}">删除</a>
		               	</td>
			            </tr>
            		</c:if>
            	</c:forEach>
        	</c:if>
            <tr>
				<td colspan="3">
					<a href="../parameterAdd.jsp">添加</a>
				</td>
			</tr>
        </table>
    </div>

</div><!--end main-->
</body>
</html>
