package com.graduation.service.impl;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.graduation.entity.ExcelBean;
import com.graduation.entity.QuanShengData;
import com.graduation.mapper.DataMapper;
import com.graduation.mapper.ExcelMapper;
import com.graduation.service.ExcelService;
import com.graduation.util.ExcelUtil;

@Service
public class ExcelServiceImpl implements ExcelService{
	
	@Autowired
	private ExcelMapper excelMapper;
	@Autowired
	private DataMapper dataMapper;

	@Override
	public void importExcel(InputStream in, MultipartFile file) throws Exception {
		
		List<List<Object>> listob = ExcelUtil.getBankListByExcel(in, file.getOriginalFilename());
		List<QuanShengData> list = new ArrayList<QuanShengData>();
		//遍历listob数据，把数据放到List中
		for(int i = 0;i < listob.size();i++){
			List<Object> ob = listob.get(i);
			QuanShengData qsData = new QuanShengData();
			qsData.setYear(String.valueOf(ob.get(0)));
			qsData.setCode(String.valueOf(ob.get(1)));
			qsData.setCounty(String.valueOf(ob.get(2)));
			qsData.setClimateType(String.valueOf(ob.get(3)));
			qsData.setLandArea(String.valueOf(ob.get(4)));
			qsData.setAverage(String.valueOf(ob.get(5)));
			qsData.setNjrainfall(String.valueOf(ob.get(6)));
			qsData.setNjair(String.valueOf(ob.get(7)));
			qsData.setFrostless(String.valueOf(ob.get(8)));
			qsData.setNjsunshine(String.valueOf(ob.get(9)));
			qsData.setTotallabor(String.valueOf(ob.get(10)));
			qsData.setLabor(String.valueOf(ob.get(11)));
			qsData.setYxarea(String.valueOf(ob.get(12)));
			qsData.setLsarea(String.valueOf(ob.get(13)));
			qsData.setLstotal(String.valueOf(ob.get(14)));
			qsData.setXmarea(String.valueOf(ob.get(15)));
			qsData.setXmtotal(String.valueOf(ob.get(16)));
			qsData.setYmarea(String.valueOf(ob.get(17)));
			qsData.setYmtotal(String.valueOf(ob.get(18)));
			qsData.setMharea(String.valueOf(ob.get(19)));
			qsData.setMhtotal(String.valueOf(ob.get(20)));
			qsData.setYlarea(String.valueOf(ob.get(21)));
			qsData.setYltotal(String.valueOf(ob.get(22)));
			qsData.setDgarea(String.valueOf(ob.get(23)));
			qsData.setDgtotal(String.valueOf(ob.get(24)));
			qsData.setDsarea(String.valueOf(ob.get(25)));
			qsData.setDstotal(String.valueOf(ob.get(26)));
			qsData.setPigcunl(String.valueOf(ob.get(27)));
			qsData.setCattlecunl(String.valueOf(ob.get(28)));
			qsData.setSheepcunl(String.valueOf(ob.get(29)));
			qsData.setCattlechul(String.valueOf(ob.get(30)));
			qsData.setPigchul(String.valueOf(ob.get(31)));
			qsData.setSheepchul(String.valueOf(ob.get(32)));
			qsData.setPigtotal(String.valueOf(ob.get(33)));
			qsData.setCattletotal(String.valueOf(ob.get(34)));
			qsData.setSheeptotal(String.valueOf(ob.get(35)));
			qsData.setMymtotal(String.valueOf(ob.get(36)));
			qsData.setSymtotal(String.valueOf(ob.get(37)));
			qsData.setQeggs(String.valueOf(ob.get(38)));
			qsData.setNcyd(String.valueOf(ob.get(39)));
			qsData.setNchf(String.valueOf(ob.get(40)));
			qsData.setNyjx(String.valueOf(ob.get(41)));
			qsData.setGdarea(String.valueOf(ob.get(42)));
			qsData.setNbzara(String.valueOf(ob.get(43)));
			list.add(qsData);
		}
		excelMapper.insertExcel(list);
	}

	//Excel导出
	@Override
	public XSSFWorkbook exportExcel(String excelName) throws Exception {
		List<QuanShengData> list = dataMapper.findData();
		List<ExcelBean> excel = new ArrayList<>();
		Map<Integer,List<ExcelBean>> map = new LinkedHashMap<>();
		XSSFWorkbook xssfWorkbook = null;
		//设置标题栏
		excel.add(new ExcelBean("年份","year",0));
		excel.add(new ExcelBean("县区代码","code",0));
		excel.add(new ExcelBean("县（区）","county",0));
		excel.add(new ExcelBean("气候类型","climateType",0));
		excel.add(new ExcelBean("土地面积","landArea",0));
		excel.add(new ExcelBean("平均海拔","average",0));
		excel.add(new ExcelBean("年均降雨量","njrainfall",0));
		excel.add(new ExcelBean("年均气温","njair",0));
		excel.add(new ExcelBean("无霜期","frostless",0));
		excel.add(new ExcelBean("年平均日照时间","njsunshine",0));
		excel.add(new ExcelBean("农村劳动力合计","totallabor",0));
		excel.add(new ExcelBean("其中农林牧渔劳动力","labor",0));
		excel.add(new ExcelBean("有效灌溉面积","yxarea",0));
		excel.add(new ExcelBean("粮食种植面积","lsarea",0));
		excel.add(new ExcelBean("粮食总产量","lstotal",0));
		excel.add(new ExcelBean("小麦种植面积","xmarea",0));
		excel.add(new ExcelBean("小麦产量","xmtotal",0));
		excel.add(new ExcelBean("玉米种植面积","ymarea",0));
		excel.add(new ExcelBean("玉米产量","ymtotal",0));
		excel.add(new ExcelBean("棉花种植面积","mharea",0));
		excel.add(new ExcelBean("棉花产量","mhtotal",0));
		excel.add(new ExcelBean("油料种植面积","ylarea",0));
		excel.add(new ExcelBean("油料总产量","yltotal",0));
		excel.add(new ExcelBean("当归种植面积","dgarea",0));
		excel.add(new ExcelBean("当归产量","dgtotal",0));
		excel.add(new ExcelBean("党参种植面积","dsarea",0));
		excel.add(new ExcelBean("党参总产量","dstotal",0));
		excel.add(new ExcelBean("猪存栏量","pigcunl",0));
		excel.add(new ExcelBean("牛存栏数","cattlecunl",0));
		excel.add(new ExcelBean("羊存栏数","sheepcunl",0));
		excel.add(new ExcelBean("牛出栏数","cattlechul",0));
		excel.add(new ExcelBean("猪出栏数","pigchul",0));
		excel.add(new ExcelBean("羊出栏数","sheepchul",0));
		excel.add(new ExcelBean("猪肉产量","pigtotal",0));
		excel.add(new ExcelBean("牛肉产量","cattletotal",0));
		excel.add(new ExcelBean("羊肉产量","sheeptotal",0));
		excel.add(new ExcelBean("绵羊毛","mymtotal",0));
		excel.add(new ExcelBean("山羊毛","symtotal",0));
		excel.add(new ExcelBean("禽蛋","qeggs",0));
		excel.add(new ExcelBean("农村用电量","ncyd",0));
		excel.add(new ExcelBean("农村化肥施用实物量","nchf",0));
		excel.add(new ExcelBean("农业机械总动力","nyjx",0));
		excel.add(new ExcelBean("耕地面积","gdarea",0));
		excel.add(new ExcelBean("农作物播种面积","nbzara",0));
		map.put(0, excel);
		String sheetName = "sheet1";
		//调用ExcelUtil的方法
		xssfWorkbook = ExcelUtil.createExcelFile(QuanShengData.class, list, map, sheetName);
		
		return xssfWorkbook;
	}

}
