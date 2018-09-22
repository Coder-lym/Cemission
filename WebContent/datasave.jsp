<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据录入</title>
<style type="text/css">
			#main{
				width:3080px;
				height:512px;
			}
			table{
				table-layout: fixed;
				text-align: center;
			}
			tr:hover{
				background-color:#BADBF9;
			}
			
			.t1{
				width:150px;
				height:30px;
			}
			.t3{
				height:50px;
			}
			.t2 input{
				border:none;
				width:300px;
				height:30px;
				line-height:30px;
				text-align:center;
			}
		</style>
		<script type="text/javascript">
			if(!${res}){
				alert("录入失败，请重新录入！");
			}else{
				alert("录入成功！");
			}
		</script>
	</head>
	<body>
		<div id="main">
			<form action="${ctx}/data/save" method="post">
				<table border="1" cellpadding="0" cellspacing="0">
					<tr>
						<td class="t1">年份</td>
						<td class="t2">
							<input type="text" name="year" />
						</td>
						<td class="t1">县区代码</td>
						<td class="t2">
							<input type="text" name="code" />
						</td>
					</tr>
					<tr>
						<th class="t1">县（区）</th>
						<td class="t2">
							<input type="text" name="county" />
						</td>
						<td class="t1">气候类型</td>
						<td class="t2">
							<input type="text" name="climateType" />
						</td>
					</tr>
					<tr>
						<td class="t1">土地面积</td>
						<td class="t2">
							<input type="text" name="landArea" />
						</td>
						<td class="t1">平均海拔</td>
						<td class="t2">
							<input type="text" name="average" />
						</td>
					</tr>
					<tr>
						<td class="t1">年均降雨量</td>
						<td class="t2">
							<input type="text" name="njrainfall" />
						</td>
						<td class="t1">年均气温</td>
						<td class="t2">
							<input type="text" name="njair" />
						</td>
					</tr>
					<tr>
						<td class="t1">无霜期</td>
						<td class="t2">
							<input type="text" name="frostless" />
						</td>
						<td class="t1">年平均日照时间</td>
						<td class="t2">
							<input type="text" name="njsunshine" />
						</td>
					</tr>
					<tr>
						<td class="t1">农村劳动力合计</td>
						<td class="t2">
							<input type="text" name="totallabor" />
						</td>
						<td class="t1">其中农林牧渔劳动力</td>
						<td class="t2">
							<input type="text" name="labor" />
						</td>
					</tr>
					<tr>
						<td class="t1">有效灌溉面积</td>
						<td class="t2">
							<input type="text" name="yxarea" />
						</td>
						<td class="t1">粮食种植面积</td>
						<td class="t2">
							<input type="text" name="lsarea" />
						</td>
					</tr>
					<tr>
						<td class="t1">粮食总产量</td>
						<td class="t2">
							<input type="text" name="lstotal" />
						</td>
						<td class="t1">小麦种植面积</td>
						<td class="t2">
							<input type="text" name="xmarea" />
						</td>
					</tr>
					<tr>
						<td class="t1">小麦总产量</td>
						<td class="t2">
							<input type="text" name="xmtotal" />
						</td>
						<td class="t1">玉米种植面积</td>
						<td class="t2">
							<input type="text" name="ymarea" />
						</td>
					</tr>
					<tr>
						<td class="t1">玉米总产量</td>
						<td class="t2">
							<input type="text" name="ymtotal" />
						</td>
						<td class="t1">棉花种植面积</td>
						<td class="t2">
							<input type="text" name="mharea" />
						</td>
					</tr>
					<tr>
						<td class="t1">棉花总产量</td>
						<td class="t2">
							<input type="text" name="mhtotal" />
						</td>
						<td class="t1">油料种植面积</td>
						<td class="t2">
							<input type="text" name="ylarea" />
						</td>
					</tr>
					<tr>
						<td class="t1">油料总产量</td>
						<td class="t2">
							<input type="text" name="yltotal" />
						</td>
						<td class="t1">当归种植面积</td>
						<td class="t2">
							<input type="text" name="dgarea" />
						</td>
					</tr>
					<tr>
						<td class="t1">当归总产量</td>
						<td class="t2">
							<input type="text" name="dgtotal" />
						</td>
						<td class="t1">党参种植面积</td>
						<td class="t2">
							<input type="text" name="dsarea" />
						</td>
					</tr>
					<tr>
						<td class="t1">党参总产量</td>
						<td class="t2">
							<input type="text" name="dstotal" />
						</td>
						<td class="t1">猪存栏数</td>
						<td class="t2">
							<input type="text" name="pigcunl" />
						</td>
					</tr>
					<tr>
						<td class="t1">猪出栏数</td>
						<td class="t2">
							<input type="text" name="pigchul" />
						</td>
						<td class="t1">猪肉产量</td>
						<td class="t2">
							<input type="text" name="pigtotal" />
						</td>
					</tr>
					<tr>
						<td class="t1">牛存栏量</td>
						<td class="t2">
							<input type="text" name="cattlecunl" />
						</td>
						<td class="t1">牛出栏量</td>
						<td class="t2">
							<input type="text" name="cattlechul" />
						</td>
					</tr>
					<tr>
						<td class="t1">牛肉产量</td>
						<td class="t2">
							<input type="text" name="cattletotal" />
						</td class="t1">
						<td>羊存栏量</td>
						<td class="t2">
							<input type="text" name="sheepcunl" />
						</td class="t1">
					</tr>
					<tr>
						<td class="t1">羊出栏量</td>
						<td class="t2">
							<input type="text" name="sheepchul" />
						</td>
						<td class="t1">羊肉产量</td>
						<td class="t2">
							<input type="text" name="sheeptotal" />
						</td>
					</tr>
					<tr>
						<td class="t1">绵羊毛产量</td>
						<td class="t2">
							<input type="text" name="mymtotal" />
						</td>
						<td class="t1">山羊毛产量</td>
						<td class="t2">
							<input type="text" name="symtotal" />
						</td>
					</tr>
					<tr>
						<td class="t1">禽蛋产量</td>
						<td class="t2">
							<input type="text" name="qeggs" />
						</td>
						<td class="t1">农村用电量</td>
						<td class="t2">
							<input type="text" name="ncyd" />
						</td>
					</tr>
					<tr>
						<td class="t1">农村化肥施用实物量</td>
						<td class="t2">
							<input type="text" name="nchf" />
						</td>
						<td class="t1">农业机械总动力</td>
						<td class="t2">
							<input type="text" name="nyjx" />
						</td>
					</tr>
					<tr>
						<td class="t1">耕地面积</td>
						<td class="t2">
							<input type="text" name="gdarea" />
						</td>
						<td class="t1">农作物播种面积</td>
						<td class="t2">
							<input type="text" name="nbzara" />
						</td>
					</tr>
					<tr>
						<td colspan="4" class="t3">
							<input type="submit" value="录入" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>