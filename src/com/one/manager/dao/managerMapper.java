package com.one.manager.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.one.manager.bean.Bill;
import com.one.manager.bean.Billitem;
import com.one.manager.bean.Dept;
import com.one.manager.bean.Income;
import com.one.manager.bean.IncomeAndDept;
import com.one.manager.bean.User;
import com.one.manager.bean.Vendor;




public interface managerMapper {
	@Select("select * from table_dept where dept_id = #{dept_id}")
	public Dept selectDeptById(int dept_id);
	@Select("select * from table_dept")
	public List<Dept> selectAll();
	@Insert("insert into table_dept(dept_id,dept_name,dept_descreption) values(seq_dept.nextval,#{dept_name},#{dept_descreption})")
	public int addDept(Dept dept);
	@Update("update table_dept set dept_name = #{dept_name},dept_descreption = #{dept_descreption} where dept_id = #{dept_id}")
	public int updateDept(Dept dept);
	//获得主页面中数据
	@Select("select i.income_id,d.dept_name,i.business_Date,i.lst_mod_timestemp,i.daily_income from Table_Income i,Table_Dept d where d.dept_id = i.dept_Id ")
	public List<IncomeAndDept> getAll();
	//获取Dept
	@Select(" select * from Table_Dept ")
	public List<Dept> getALLDept();
	//获取Income 
	@Select(" select * from Table_Income ")
	public List<Income> getALLIncome();
	//插入income
	@Insert(" insert into Table_Income values(id.nextval,#{dept_id},#{daily_income},sysdate,sysdate) ")
	public int insertIncome(Income i);
	//查找dept
	@Select(" select * from Table_Dept where dept_name = #{dept_name} ")
	public Dept findDept(String dept_name);
	@Update(" update Table_Income set dept_id = #{dept_id},daily_income = #{income} where Income_id = #{income_id} ")
	public int updateIncome(@Param("dept_id") Integer dept_id,@Param("income") Integer income,@Param("income_id") Integer income_id);
	@Select("select * from shop_user where username = #{username} and password = #{password}")
	public User selectUserByUserName(User user);
	@Select("select * from Table_bill,Table_Vendor where vendor_name=#{name} and table_bill.vendor_id=table_vendor.vendor_id")
	@ResultMap("mapper.Vendormap")
	public Vendor findBillList(@Param("name")String name);
	
	
	@Select("select * from Table_bill where bill_id=#{bill_id}")		
	public Bill findBill(@Param("bill_id")Integer id);
	
	@Update("update Table_bill set bill_paid_flag=#{bill_paid_flag} where bill_id=#{bill_id}")
	public int updateBill(Bill bill);
	
	@Select("select vendor_id,Vendor_name,Vendor_address,Vendor_phone,Vendor_fax,Vendor_contact_person from Table_Vendor order by vendor_id desc")
	public List<Vendor> findVendor();
	@Insert("insert into Table_Vendor (vendor_id,vendor_name,vendor_address,vendor_phone,vendor_fax,vendor_contact_person)values(vendor_id.nextval,#{vendor_name},#{vendor_address},#{vendor_phone},#{vendor_fax},#{vendor_contact_person})")
	public int saveVendor(Vendor vd);
	@Update("update Table_Vendor  set vendor_name = #{vendor_name},vendor_address = #{vendor_address},vendor_phone= #{vendor_phone},vendor_fax = #{vendor_fax},vendor_contact_person = #{vendor_contact_person} where vendor_id = #{vendor_id}")
	public int updateVendor(Vendor vd);
	@Select("select vendor_id,vendor_name,vendor_address,vendor_phone,vendor_fax,vendor_contact_person from Table_Vendor where vendor_id = #{vendor_id}")
	public Vendor findoneVendor(String vendor_id);
	@Select(" select Vendor_ID,Vendor_name from Table_Vendor ")
	public List<Vendor> selectVender();
	@Insert(" insert into table_bill(bill_id,Vendor_id,Bill_Date,bill_paid_flag,Bill_due_Date) values(bill_id.nextval,#{vendor_id},to_date(#{bill_date},'yyyy/mm/dd'),'0',to_date(#{bill_due_date},'yyyy/mm/dd')) ")
	public int insertBill(Bill bill);
//	@Update(" update table_bill set Bill_Date=to_date(#{bill_Date},'yyyy/mm/dd'),Bill_due_Date=to_date(#{bill_due_Date},'yyyy/mm/dd') where Vendor_id=#{vendor_id} ")
//	public int updateBill(Bill bill);
	@Select(" select * from Table_dept")
	public List<Dept> selectDept();
	@Insert(" insert into Table_Bill_Item(Bill_ID,Dept_id,Bill_Item_ID,Bill_Item_Expense) values(#{bill_ID},#{dept_id},#{bill_Item_ID},#{Bill_Item_Expense})")
	public int insertBillitem(Billitem billitem);
	@Select(" select bill_id from table_bill where vendor_id=#{id}")
	public int selectBillid(int id);
	@Insert(" update table_bill set Bill_amount= #{money} where Vendor_id=#{id}")
	public int updateBillmoney(@Param("money") float money,@Param("id") int id);
	@Select("select * from table_bill")
	public List<Bill> selectbillitem();
}

