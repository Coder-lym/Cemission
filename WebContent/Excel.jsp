<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Excel导入导出</title>
		<style type="text/css">
			#main{
				width:1070px;
				height:600px;
			}
			.nav{
				height:40px;
			}
			#export{
				width:300px;
				font-size: 18px;
				margin:30px 80px 0px 50px;
			}
			.ex_text,.data_import{
				float:left;
			}
			.ex_text{
				margin-left:30px;
			}
			.ex_text a,.data_import a{
				color:#04294C;
				text-decoration: none;
			}
			.ex_text,.im_text input{
				width:70px;
				height:40px;
				text-align: center;
				line-height: 40px;
				border-radius: 8px;
				background-color: #569DE2;
			}
			.im_file{
				margin-top: 5px;
				margin-left:20px;
			}
			.data_import{
				width:100px;
				height:40px;
				text-align: center;
				line-height: 40px;
				border-radius: 8px;
				background-color: #569DE2;
				margin-left:30px;
			}
/* 			select{ */
/* 				width:300px; */
/* 				height:30px; */
/* 				font-size: 18px; */
/* 			} */
			#import{
				width:390px;
				height:40px;
				font-size: 18px;
				margin-left:20px;
				float:left;
			}
			#import input{
				font-size:18px;
				border:none;
			}
			.im_text,.im_file{
				float:left;
			}
			.im_file input{
				width:300px;
				height:30px;
				font-size: 18px;			
			}
			#excel{
				margin-top: 20px;
			}
		</style>
		<script type="text/javascript">
			function check(){
				var file = document.getElementById('excel_file');
				if(file.value == ''){
					alert("请选择要导入的Excel！");
					return false;
				}else{
					file.value == null;
					return true;
				}
			}
			function selectdata(){
				var url = document.location.href;
				$.ajax({
					asyns:false,
					type:"POST",
					url:'${ctx}/data/show'
				})
			}
		</script>
	</head>
	<body onload="selectdata()">
		<div id="main">
			<div class="nav">
				<div id="export">
					<div class="data_import">
<!-- 						<select name=""> -->
<!-- 							<option value="">请选择导出表</option> -->
<!-- 							<option value="">请选择导出表</option> -->
<!-- 							<option value="">请选择导出表</option> -->
<!-- 							<option value="">请选择导出表</option> -->
<!-- 						</select> -->
						<a href="${ctx}/datasave.jsp" target="bif">数据录入</a>
					</div>
					<div class="ex_text">
						<a href="${ctx}/excel/exportExcel?excelName=全省数据">导出</a>
					</div>
				</div>
				<div id="import">
					<form action="${ctx}/excel/importExcel" method="post" enctype="multipart/form-data" id="form1" onsubmit="return check()" target="bif">
						<div class="im_text">
							<input type="submit" value="导入">
						</div>
						<div class="im_file">
							<input type="file" name="file" id="excel_file" accept="xlsx" size="80" />
						</div>
					</form>
				</div>
			</div><!-- end nav -->
			<div id="excel">
				<c:if test="${main}">
					<iframe src="" name="bif" width="1080px" height="840px" frameborder="no" scrolling="yes"></iframe>
				</c:if>
				<c:if test="${!main}">
					<iframe src="" name="bif" width="1080px" height="840px" frameborder="no" scrolling="yes"></iframe>
				</c:if>
			</div>
		</div><!-- end main -->
	</body>
</html>
