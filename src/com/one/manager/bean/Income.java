package com.one.manager.bean;

import java.io.Serializable;

public class Income implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer income_id;
    private Integer dept_id;// -- 外键
    private Integer daily_income;// --收入
    private String business_date;// --该条收入记录所在的日期
    private String lst_mod_timestemp;
	public Integer getIncome_id() {
		return income_id;
	}
	public void setIncome_id(Integer income_id) {
		this.income_id = income_id;
	}
	public Integer getDept_id() {
		return dept_id;
	}
	public void setDept_id(Integer dept_id) {
		this.dept_id = dept_id;
	}
	public Integer getDaily_income() {
		return daily_income;
	}
	public void setDaily_income(Integer daily_income) {
		this.daily_income = daily_income;
	}
	public String getBusiness_date() {
		return business_date;
	}
	public void setBusiness_date(String business_date) {
		this.business_date = business_date;
	}
	public String getLst_mod_timestemp() {
		return lst_mod_timestemp;
	}
	public void setLst_mod_timestemp(String lst_mod_timestemp) {
		this.lst_mod_timestemp = lst_mod_timestemp;
	}
	@Override
	public String toString() {
		return "Income [income_id=" + income_id + ", dept_id=" + dept_id + ", daily_income=" + daily_income
				+ ", business_date=" + business_date + ", lst_mod_timestemp=" + lst_mod_timestemp + "]";
	}
	
	}
    

