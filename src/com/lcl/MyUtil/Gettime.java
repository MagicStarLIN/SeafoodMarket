package com.lcl.MyUtil;

import java.util.Date;

public class Gettime {
	public Date gettime(){
		long l = System.currentTimeMillis();

		Date date = new Date(l);

		
		return date;
	}

}
