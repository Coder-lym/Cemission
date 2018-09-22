<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<html>
<head>
    <title>甘肃省碳排放管理系统</title>
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
.center{
	width:1290px;
	margin:0px auto;
}
/****** head *******/
#head{
	width:100%;
	height:135px;
	border-bottom: 2px solid #54A1EF;
	background:-webkit-linear-gradient(left,#54A2ED,#9bceff,#569de2,#c9e2fb);
}
.title{
	height:135px;
	font-size:40px;
	line-height:135px;
	color:white;
}
/******** main ********/
.main_left{
	width:258px;
	height:715px;
	border-top:2px solid #A3CDFD;
	border-right:1px solid white;
	background-color:#bcdeff;
	float:left;
}
.main_right{
	width:1090px;
	height:715px;
	border-top: 2px solid #DFE1DE;
	background-color:#EDEDED;
	float:left;
}
/*********************************** main_left *********************************/
.foo_ul .li1{
	height:60px;
	font-size:16px;
	font-weight:800;
	line-height:60px;
	padding-left:32px;
	border-top:1px solid #8AC3F9;
	border-bottom: 1px solid #8AC3F9;
	background:-webkit-linear-gradient(#A5D9FE,#90c7ff);
}

.li1 a{
	color:#716e6e;
}
.son_ul li{
	font-size:14px;
	height:40px;
	line-height:40px;
	padding-left:32px;
	border-bottom: 1px solid #CBE7FF;
	background-color:#E2F2FF;
}
.son_ul li:hover{
	background-color:#cce5fd;
}
.son_ul a{
	color:#53616C;
}
.son_ul a:hover{
	color:#09a7e0;
}
.icon1,.icon2,.icon3,.icon4,.icon5{
	width:25px;
	height:25px;
	margin-top:15px;
	margin-left:32px;
	background:url(img/icon.png) no-repeat;
	float:left;
}
.icon1{
	background-position: -14px -8px;
}
.icon2{
	background-position: -123px -8px;
}
.icon3{
	background-position: -232px -8px;
}
.icon4{
	background-position: -341px -8px;
}
.icon5{
	background-position: -450px -8px;
}
/*********************************** main_right *********************************/
.mr_nav{
	height:60px;
	background-color:#E1E1E1;
}
.account_info,.account_type,.info,.type,.info_text,.type_text{
	padding-top:15px;
	float:left;
}
.account_info{
	margin-left: 60px;
	
}
.account_type{
	margin-left:20px;
}
.info,.type{
	width:100px;
}
#time{
	margin-left:380px;
	padding-top:30px;
	float:left;
}
.handle{
	margin-left:10px;
	padding-top:27px;
	float:left;
}
.a_index,.a_logout{
	width: 50px;
	height:25px;
	text-align: center;
	line-height: 25px;
	border-radius: 5px;
	float:left;
}
.a_index a,.a_logout a{
	color:#01030c;
	font-size: 18px;
}
.a_index{
	background-color: green;
}
.a_logout{
	background-color: #ff180d;
	margin-left: 10px;
}
.nav{
	width:1090px;
	height:40px;
	background-color:#E1E1E1;
	border-top: 1px solid white;
	line-height: 40px;
	
}
.nav h4{
	padding-left:40px;
}
.list{
	width:200px;
	height:200px;
	background-color:#FFFFFF;
	margin-top:30px;
	margin-left:80px;
	border-radius: 8px;
	box-shadow: 5px 10px 5px #E1E1E1;
	clear: both;
}
    	
    </style>
    <script type="text/javascript">
    function showTime1(){
    	var today=new Date();//获得当前时间
        var year=today.getFullYear();//年
        var months=today.getMonth()+1;//月
        var day=today.getDate();//日
        var  hour=today.getHours();//时
        var  minutes=today.getMinutes()//分;
        var  seconds=today.getSeconds();//秒
        var weekends=today.getDay();
        var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
        var week=arr_week[weekends];
        document.getElementById("time").innerHTML=year+"年"+months+"月"+day+"日"+"  "+week;
    }
    function showTime2(){
    	var today=new Date();//获得当前时间
        var year=today.getFullYear();//年
        var months=today.getMonth()+1;//月
        var day=today.getDate();//日
        var  hour=today.getHours();//时
        var  minutes=today.getMinutes()//分;
        var  seconds=today.getSeconds();//秒
        var weekends=today.getDay();
        var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
        var week=arr_week[weekends];
        if(minutes < 10){
        	document.getElementById("time").innerHTML=year+"."+months+"."+day+"&nbsp;&nbsp;"+hour+":0"+minutes;
        }else{
        	document.getElementById("time").innerHTML=year+"."+months+"."+day+"&nbsp;&nbsp;"+hour+":"+minutes;
        }
        
    }

    function show1(){
    	if (document.getElementById("1_ul").style.display == "block") {
    		document.getElementById("1_ul").style.display = "none";
    		
    	} else{
    		document.getElementById("1_ul").style.display = "block";
    		document.getElementById("2_ul").style.display = "none";
    		document.getElementById("3_ul").style.display = "none";
    		document.getElementById("4_ul").style.display = "none";
    		document.getElementById("5_ul").style.display = "none";
    	}
    }
    function show2(){
    	if (document.getElementById('2_ul').style.display == "block") {
    		document.getElementById('2_ul').style.display = "none";
    	} else{
    		document.getElementById('2_ul').style.display = "block";
    		document.getElementById("1_ul").style.display = "none";
    		document.getElementById("5_ul").style.display = "none";
    	}
    }
    function show3(){
    	if (document.getElementById('3_ul').style.display == "block") {
    		document.getElementById('3_ul').style.display = "none";
    	} else{
    		document.getElementById('3_ul').style.display = "block";
    		document.getElementById("1_ul").style.display = "none";
    		document.getElementById("5_ul").style.display = "none";
    	}
    }
    function show4(){
    	if (document.getElementById('4_ul').style.display == "block") {
    		document.getElementById('4_ul').style.display = "none";
    	} else{
    		document.getElementById('4_ul').style.display = "block";
    		document.getElementById("1_ul").style.display = "none";
    		document.getElementById("5_ul").style.display = "none";
    	}
    }
    function show5(){
    	if (document.getElementById('5_ul').style.display == "block") {
    		document.getElementById('5_ul').style.display = "none";
    	} else{
    		document.getElementById('5_ul').style.display = "block";
    		document.getElementById("1_ul").style.display = "none";
    		document.getElementById('2_ul').style.display = "none";
    		document.getElementById('3_ul').style.display = "none";
    		document.getElementById('4_ul').style.display = "none";
    	}
    }

    </script>
</head>

<body onload="showTime2()">
<div id="head">
    <div class="center">
        <div class="title">
            甘肃省典型农业生产系统碳排放预测管理系统
        </div>
    </div>
</div>
<div id="main">
    <div class="main_left">
        <div class="ml_center">
            <ul class="foo_ul">
                <div class="icon1"></div>
                <li class="li1"><a href="javascript:onclick=show1()">系统设置</a></li>
                <ul id="1_ul" style="display: none;" class="son_ul">
                    <li><a href="pwd.jsp" target="rif">密码设置</a></li>
                    <c:if test="${account.role == '管理员'}">
	                    <li><a href="register.jsp" target="rif">操作员注册</a></li>
	                    <li><a href="${ctx}/account/findAccount" target="rif">操作员管理</a></li>
                	</c:if>
                </ul>
                <div class="icon2"></div>
                <li class="li1"><a href="javascript:onclick=show2()">数据管理</a></li>
                <ul id="2_ul" style="display: none;" class="son_ul">
                    <li><a href="${ctx}/parameterManager/selectParameter" target="rif" >参数管理</a></li>
<!--                     <li><a href="#">公式定义</a></li> -->
                    <li><a href="${ctx}/data/show" target="rif">数据查看</a></li>
                    <li><a href="Excel.jsp" target="rif">数据导入/导出</a></li>
                </ul>
                <div class="icon3"></div>
                <li class="li1"><a href="javascript:onclick=show3()">排放预测</a></li>
                <ul id="3_ul" style="display: none;" class="son_ul">
                    <li><a href="${ctx}/chart/findCounty?skip=forecast" target="rif">碳排放预测</a></li>
                </ul>
                <div class="icon4"></div>
                <li class="li1"><a href="javascript:onclick=show4()">数据报告</a></li>
                <ul id="4_ul" style="display: none;" class="son_ul">
                    <li><a href="${ctx}/chart/findCounty?skip=chart" target="rif">图表报告</a></li>
                </ul>
                <div class="icon5"></div>
                <li class="li1"><a href="javascript:onclick=show5()">系统帮助</a></li>
                <ul id="5_ul" style="display: none;" class="son_ul">
<!--                     <li><a href="#">系统配置</a></li> -->
<!--                     <li><a href="#">系统公告</a></li> -->
<!--                     <li><a href="#">帮助信息</a></li> -->
                    <li><a href="${ctx}/account/logout">退出系统</a></li>
                </ul>
            </ul>
        </div>
    </div>
    <div class="main_right">
        <div class="mr_nav">
        	<div class="account_info">
						<div class="info_text">用户：</div>
						<div class="info">${account.userName}</div>
					</div>
					<div class="account_type">
						<div class="type_text">角色：</div>
						<div class="type">${account.role}</div>
					</div>
            <div id="time"></div>
            <div class="handle">
				<div class="a_index">
					<a href="mainIndex.jsp" target="rif" >主页</a>&nbsp;&nbsp;
				</div>
				<div class="a_logout">
					<a href="${ctx}/account/logout">注销</a>
				</div>
			</div>
        </div>
        <iframe src="mainIndex.jsp" name="rif" width="1090" height="600"frameborder="no" scrolling="auto"></iframe>
    </div>
</div>
</body>
</html>
