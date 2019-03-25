package com.one.manager.bean;

public class Dept {
			private int dept_id;
			private String dept_name;
			private String dept_descreption;
			public int getDept_id() {
				return dept_id;
			}
			public void setDept_id(int dept_id) {
				this.dept_id = dept_id;
			}
			public String getDept_name() {
				return dept_name;
			}
			public void setDept_name(String dept_name) {
				this.dept_name = dept_name;
			}
			public String getDept_descreption() {
				return dept_descreption;
			}
			public void setDept_descreption(String dept_descreption) {
				this.dept_descreption = dept_descreption;
			}
			@Override
			public String toString() {
				return "Dept [dept_id=" + dept_id + ", dept_name=" + dept_name + ", dept_descreption="
						+ dept_descreption + "]";
			}
			
}
