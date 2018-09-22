<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<html>
<head>
    <title>首页</title>
	<style type="text/css">
		*{
	margin:0px;
	padding:0px;
}
li{
	list-style: none;
}
a{
	text-decoration: none;
}
#main{
	width:1090px;
	height:600px;
	background-color:#EDEDED;
}
.list1,.list2,.list3,.list4{
	width:250px;
	height:250px;
	background-color:white;
	border-radius: 10px;
	box-shadow: 5px 10px 5px #E1E1E1;
	margin:20px 100px;
	float:left;
}
.list1:hover,.list2:hover,.list3:hover,.list4:hover{
	transform: scale(1.1,1.1);
}
.img1,.img2,.img3,.img4{
	width:90px;
	height:90px;
	background:url(img/iconbig.png) no-repeat;
	margin:10px;
	float:left;
}
.img1{
	background-position: -8px -5px;
}
.img2{
	background-position: -115px -5px;
}
.img3{
	background-position: -222px -5px;
}
.img4{
	background-position: -329px -5px;
}
#main h4{
	padding:45px 35px 10px;
	color:#6f6767;
	float:left;
	
}
.function_list1{
	width:100px;
	height:120px;
	margin:90px 140px 0px;
}
.function_list1 li{
	line-height: 24px;
}
.function_list1 a{
	color:#929292;
	font-size:14px;
}
		
	</style>
</head>
<body>
<div id="main">
    <div class="list1">
        <div class="img1"></div>
        <h4>数据管理</h4>
        <div class="function_list1">
            <ul>
                <li><a href="${ctx}/parameterManager/selectParameter" target="rif">参数管理</a></li>
                <li><a href="${ctx}/data/show?type=data" target="rif">数据查看</a></li>
                <li><a href="${ctx}/skip/skipType?type=excel" target="rif">数据导入/导出</a></li>
            </ul>
        </div>
    </div>
    <div class="list2">
        <div class="img2"></div>
        <h4>排放预测</h4>
        <div class="function_list1">
            <ul>
                <li><a href="${ctx}/chart/findCounty?skip=forecast">碳排放预测</a></li>
            </ul>
        </div>
    </div>
    <div class="list3">
        <div class="img3"></div>
        <h4>数据报告</h4>
        <div class="function_list1">
            <ul>
                <li><a href="${ctx}/chart/findCounty?skip=chart">图表报告</a></li>
            </ul>
        </div>
    </div>
    <div class="list4">
        <div class="img4"></div>
        <h4>系统管理</h4>
        <div class="function_list1">
            <ul>
                <li><a href="${ctx}/skip/skipType?type=pwd">密码设置</a></li>
                <c:if test="${account.role == '管理员'}">
	                <li><a href="${ctx}/skip/skipType?type=register" target="rif">操作员注册</a></li>
	                <li><a href="${ctx}/account/findAccount">操作员管理</a></li>
                </c:if>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
