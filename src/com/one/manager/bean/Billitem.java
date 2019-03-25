package com.one.manager.bean;

public class Billitem {
	private int bill_ID;
	private int dept_id; 
	private int bill_Item_ID;
	private float Bill_Item_Expense ;
	public int getBill_ID() {
		return bill_ID;
	}
	public void setBill_ID(int bill_ID) {
		this.bill_ID = bill_ID;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public int getBill_Item_ID() {
		return bill_Item_ID;
	}
	public void setBill_Item_ID(int bill_Item_ID) {
		this.bill_Item_ID = bill_Item_ID;
	}
	public float getBill_Item_Expense() {
		return Bill_Item_Expense;
	}
	public void setBill_Item_Expense(float bill_Item_Expense) {
		Bill_Item_Expense = bill_Item_Expense;
	}
	
}
