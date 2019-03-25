package dao;

import org.apache.ibatis.session.SqlSession;

import com.one.manager.bean.Bill;
import com.one.manager.bean.Vendor;
import com.one.manager.dao.managerMapper;

import util.MybatisUtil;

public class vbDao {
	
	public Vendor findBillList(String name){
		SqlSession session = MybatisUtil.getSqlSession();	
		managerMapper mapper = session.getMapper(managerMapper.class);
		Vendor vendor = mapper.findBillList(name);
		session.commit();
		return vendor;
	}
	
	public Bill findBill(Integer id){
		SqlSession session = MybatisUtil.getSqlSession();	
		managerMapper mapper = session.getMapper(managerMapper.class);
		Bill bill = mapper.findBill(id);
		session.commit();
		return bill;
	}
	
	public int updateBill(Bill bill){
		SqlSession session = MybatisUtil.getSqlSession();	
		managerMapper mapper = session.getMapper(managerMapper.class);
		int result = mapper.updateBill(bill);
		session.commit();
		return result;
	}
	
	
}
