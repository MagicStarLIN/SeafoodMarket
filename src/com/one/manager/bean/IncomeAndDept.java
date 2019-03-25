package com.one.manager.bean;

import java.io.Serializable;

public class IncomeAndDept implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String dept_name;
	private String business_Date;
	private String lst_mod_timestemp;
	private Integer daily_income;
	private Integer income_id;
	

	public Integer getIncome_id() {
		return income_id;
	}
	public void setIncome_id(Integer income_Id) {
		income_id = income_Id;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public String getBusiness_Date() {
		return business_Date;
	}
	public void setBusiness_Date(String business_Date) {
		this.business_Date = business_Date;
	}
	public String getLst_mod_timestemp() {
		return lst_mod_timestemp;
	}
	public void setLst_mod_timestemp(String lst_mod_timestemp) {
		this.lst_mod_timestemp = lst_mod_timestemp;
	}
	public Integer getDaily_income() {
		return daily_income;
	}
	public void setDaily_income(Integer daily_income) {
		this.daily_income = daily_income;
	}
	@Override
	public String toString() {
		return "IncomeAndDept [dept_name=" + dept_name + ", business_Date=" + business_Date + ", lst_mod_timestemp="
				+ lst_mod_timestemp + ", daily_income=" + daily_income + "]";
	}
	
	
	 
}
