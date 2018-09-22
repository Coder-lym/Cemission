<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据展示</title>
<style type="text/css">
	#main{
		width:3080px;
		height:600px;
	}
	table{
		table-layout: fixed;
		text-align:center;
	}
	tr:hover{
		background-color:#BADBF9;
	}
	th,td{
		width:100%;
		word-break:keep-all;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}
</style>
</head>
<body>
	<div id="main">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<th>年份</th>
				<th>县区代码</th>
				<th>县（区）</th>
				<th>气候类型</th>
				<th>土地面积（平方公里）</th>
				<th>平均海拔（米）</th>
				<th>年均降雨量（毫米）</th>
				<th>年均气温（℃）</th>
				<th>无霜期（天）</th>
				<th>年平均日照时间（小时）</th>
				<th>农村劳动力合计（万）</th>
				<th>其中农林牧渔劳动力（万人）</th>
				<th>有效灌溉面积（万亩）</th>
				<th>粮食种植面积（万亩）</th>
				<th>粮食总产量（吨）</th>
				<th>小麦种植总面积（万亩）</th>
				<th>小麦总产量（吨）</th>
				<th>玉米种植面积（万亩）</th>
				<th>玉米产量（吨）</th>
				<th>棉花种植面积（万亩）</th>
				<th>棉花产量（吨）</th>
				<th>油料种植面积（千公顷）</th>
				<th>油料产量（吨）</th>
				<th>当归种植面积（万亩）</th>
				<th>当归产量（吨）</th>
				<th>党参种植面积（万亩）</th>
				<th>党参产量（吨）</th>
				<th>猪存栏数（万头）</th>
				<th>牛存栏数（万头）</th>
				<th>羊存栏数（万只）</th>
				<th>牛出栏数（万头）</th>
				<th>猪出栏数（万头）</th>
				<th>羊出栏数（万只）</th>
				<th>猪肉产量（吨）</th>
				<th>牛肉产量（吨）</th>
				<th>羊肉产量（吨）</th>
				<th>绵羊毛（吨）</th>
				<th>山羊毛（吨）</th>
				<th>禽蛋（万吨）</th>
				<th>农村用电量（万千瓦时）</th>
				<th>农村化肥施用实物量（吨）</th>
				<th>农业机械总动力（千瓦）</th>
				<th>耕地面积（万亩）</th>
				<th>农作物播种面积（万亩）</th>
			</tr>
			<c:if test="${qsData != null}">
				<c:forEach var="qsdata" items="${qsData}">
					<tr>
						<td>${qsdata.year}</td>
						<td>${qsdata.code}</td>
						<td>${qsdata.county}</td>
						<td>${qsdata.climateType}</td>
						<td>${qsdata.landArea}</td>
						<td>${qsdata.average}</td>
						<td>${qsdata.njrainfall}</td>
						<td>${qsdata.njair}</td>
						<td>${qsdata.frostless}</td>
						<td>${qsdata.njsunshine}</td>
						<td>${qsdata.totallabor}</td>
						<td>${qsdata.labor}</td>
						<td>${qsdata.yxarea}</td>
						<td>${qsdata.lsarea}</td>
						<td>${qsdata.lstotal}</td>
						<td>${qsdata.xmarea}</td>
						<td>${qsdata.xmtotal}</td>
						<td>${qsdata.ymarea}</td>
						<td>${qsdata.ymtotal}</td>
						<td>${qsdata.mharea}</td>
						<td>${qsdata.mhtotal}</td>
						<td>${qsdata.ylarea}</td>
						<td>${qsdata.yltotal}</td>
						<td>${qsdata.dgarea}</td>
						<td>${qsdata.dgtotal}</td>
						<td>${qsdata.dsarea}</td>
						<td>${qsdata.dstotal}</td>
						<td>${qsdata.pigcunl}</td>
						<td>${qsdata.cattlecunl}</td>
						<td>${qsdata.sheepcunl}</td>
						<td>${qsdata.cattlechul}</td>
						<td>${qsdata.pigchul}</td>
						<td>${qsdata.sheepchul}</td>
						<td>${qsdata.pigtotal}</td>
						<td>${qsdata.cattletotal}</td>
						<td>${qsdata.sheeptotal}</td>
						<td>${qsdata.mymtotal}</td>
						<td>${qsdata.symtotal}</td>
						<td>${qsdata.qeggs}</td>
						<td>${qsdata.ncyd}</td>
						<td>${qsdata.nchf}</td>
						<td>${qsdata.nyjx}</td>
						<td>${qsdata.gdarea}</td>
						<td>${qsdata.nbzara}</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</body>
</html>
