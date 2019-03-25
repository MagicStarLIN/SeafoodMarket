package com.one.manager.bean;

import java.io.Serializable;

public class Bill implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer bill_id;
	private Integer vendor_id;
	private String bill_date;
	private String bill_due_date;
	private String bill_paid_flag;
	private Integer bill_amount;
	
	public Integer getBill_id() {
		return bill_id;
	}
	public void setBill_id(Integer bill_id) {
		this.bill_id = bill_id;
	}
	public Integer getVendor_id() {
		return vendor_id;
	}
	public void setVendor_id(Integer vendor_id) {
		this.vendor_id = vendor_id;
	}
	public String getBill_date() {
		return bill_date;
	}
	public void setBill_date(String bill_date) {
		this.bill_date = bill_date;
	}
	public String getBill_due_date() {
		return bill_due_date;
	}
	public void setBill_due_date(String bill_due_date) {
		this.bill_due_date = bill_due_date;
	}
	public String getBill_paid_flag() {
		return bill_paid_flag;
	}
	public void setBill_paid_flag(String bill_paid_flag) {
		this.bill_paid_flag = bill_paid_flag;
	}
	public Integer getBill_amount() {
		return bill_amount;
	}
	public void setBill_amount(Integer bill_amount) {
		this.bill_amount = bill_amount;
	}
	
	@Override
	public String toString(){
		return "Bill [bill_id:"+bill_id+" bill_date:"+bill_date+" bill_due_date:"+bill_due_date
				+" bill_paid_flag:"+bill_paid_flag+" bill_amount:"+bill_amount+"]";
	}
	
	
}
