<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<html>
<head>
    <title>甘肃省碳排放预测管理系统</title>
	<style type="text/css">
		*{
	margin:0px;
	padding:0px;
}
/*** 渐变 ***/
.linear{
	width:100%;
	height:662px;
	background:-webkit-linear-gradient(top,#E5EFFB,#badbf9,#89c2f9,#54A2ED);
	/*background:-webkit-linear-gradient(top,#54A2ED,#89c2f9,#badbf9,#E5EFFB);*/
}
/*** head ***/
#head{
	width:100%;
	height:200px;
}
.title{
	text-align: center;
	line-height:180px;
	font-size:30px;
	text-shadow: 5px 10px 5px #54A2ED;
}
.scroll{
	margin-left:407px;
	font-size:18px;
	color:#04294c;
}
marquee{
	border-radius:15px;
}
/*** main ***/
#main{
	width:100%;
	height:340px;
}
#main .login{
	width:550px;
	height:300px;
	margin:10px auto;
	/*background-color:#bfdcf7;*/
	box-shadow: 5px 20px 10px 2px #8AC3F9, -6px 21px 15px 1px #E5EFFB;
	border-bottom-left-radius: 25px;
	border-bottom-right-radius: 25px;
}
/********************** form表单 ***************************/
.form{
	padding-top:50px;
	width:550px;
	height:280px;
}
.user,.pwd{
	margin-left:35px;
	width:530px;
	height:50px;
}
.pwd{
	margin-top:20px;
}
.text,.input{
	font-size:20px;
	line-height: 42px;
	float:left;
}
.input input{
	width:380px;
	height:40px;
	font-size:18px;
	text-align: center;
	border-radius:10px;
	border:none;
}
.prompt{
    color:red;
    font-size:20px;
    height:30px;
    text-align:center;
}
.btn{
	margin:10px 205px;
	
}
.btn input{
	width:150px;
	height:60px;
	font-size:22px;
	
	border:none;
	border-radius: 10px;
	background:-webkit-radial-gradient(#4d97de,#E5EFFB);
}
/*** foot ***/
#foot .copyright{
	text-align: center;
	margin-top:20px;
	font-size:20px;
	line-height:30px;
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
	
	</script>
</head>
<body onload="showTime1()" class="linear" >
<div id="head" >
    <div class="title">
         甘肃省典型农业生产系统碳排放预测管理系统
    </div>
    <div class="scroll">
        <marquee align="left" behavior="scroll" bgcolor="#C0DDF9" direction="left"
                 width="548px" height="30px" loop="-1" scrollamount="10" scrolldelay="80"
                 onmouseout="start()" onmouseover="stop()">
            倡导低碳生活&nbsp;&nbsp; 呵护生态家园 &nbsp;&nbsp;共享碧水蓝天&nbsp;&nbsp;&nbsp;&nbsp;<span id="time"></span>
        </marquee>
    </div>
</div><!--end head-->
<div id="main">
    <div class="login">
        <form action="${ctx}/account/accountLogin" method="post">
            <div class="form">
                <div class="user">
                    <div class="text">
                        用户名：
                    </div>
                    <div class="input">
                        <input type="text" name="userName" id="username" placeholder="请输入用户名"/>
                    </div>
                </div>
                <div class="pwd">
                    <div class="text">
                        密&nbsp;&nbsp;&nbsp;码：
                    </div>
                    <div class="input">
                        <input type="password" name="passWord" id="password" placeholder="请输入密码"/>
                    </div>
                </div>
                <div class="prompt" id="prompt"></div>
                <div class="btn">
                    <input type="submit" value="登&nbsp;&nbsp;&nbsp;录"/>
                </div>
            </div><!--end form-->
        </form>
    </div><!--end login-->
</div><!--end main-->
<div id="foot">
    <div class="copyright">
        甘肃农业大学<br />信息科学技术学院
    </div>
</div><!--end foot-->
</body>
<script type="text/javascript">
	if(${result == 'fail'}){
		document.getElementById("prompt").innerHTML= "用户名或密码输入错误，请重新输入！";
	}else if(${result == 'null'}){
		document.getElementById("prompt").innerHTML= "用户名或密码为空！";
	}
</script>
</html>

