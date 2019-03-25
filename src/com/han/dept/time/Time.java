package com.han.dept.time;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Time {
public Date gettime(){
	long l = System.currentTimeMillis();

	Date date = new Date(l);

	
	return date;
}
}