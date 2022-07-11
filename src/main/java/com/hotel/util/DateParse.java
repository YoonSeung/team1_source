package com.hotel.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;


public class DateParse {
	private static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private static SimpleDateFormat strFormat = new SimpleDateFormat("yyyyMMdd");
	private static DateTimeFormatter localDateFormat = DateTimeFormatter.ofPattern("yyyyMMdd");
	
	// �ܺο��� ��ü ���� ����
	private DateParse() {}
	
	// yyyy-MM-dd -> yyyyMMdd	=>	DB�� �ֱ� ���� ���
	public static String dateToStr(String date) {
		return date.replaceAll("-", "");
	}
	
	// yyyyMMdd -> yyyy-MM-dd	=>	input date value�� �ֱ� ���� ���
	public static String strToDate(String str) {
		Date date;
		try {
			date = strFormat.parse(str);
			return dateFormat.format(date);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// getTodayPlus(int) �Ķ����+ 	0 ������ ����, ?��?��, 1 ������ ����
	public static String getTodayPlus(int plus) {
		LocalDate now = LocalDate.now(); 	// ����ð�
		now = now.plusDays(plus);			// ����ð� + "plus"��
		return now.format(localDateFormat);	// yyyyMMdd������
	}
	
	//��¥���ϱ�
	public static String datePlus(String date, int plus) {
		if(date.contains("-")) date = DateParse.dateToStr(date);
		LocalDate localDate = LocalDate.parse(date, DateTimeFormatter.BASIC_ISO_DATE);
		return localDate.plusDays(plus).format(DateTimeFormatter.BASIC_ISO_DATE);
		// return yyyyMMdd
	}
	
	// ��¥ ���� ��� end - start
	public static int dateDif(String start, String end) {
		if(start.contains("-") || end.contains("-")) {
			start = DateParse.dateToStr(start);
			end = DateParse.dateToStr(end);
		}
		
		try {
			Date startDate = strFormat.parse(start);
			Date endDate = strFormat.parse(end);
			int dif = (int) ((endDate.getTime()-startDate.getTime()) / (24*60*60*1000));
			System.out.println("��¥ ����: "+dif);
			return dif;
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return -1;
	}
}

