package com.graduation.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DataUtil {

	public static String DateToString(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str = sdf.format(date);
		return str;	
	}

	
}
