package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.one.manager.bean.Billitem;
import com.one.manager.bean.Dept;
import com.one.manager.dao.managerMapper;


import util.MybatisUtil;

/**
 * Servlet implementation class insertbillitemservlet
 */
@WebServlet("/insertbillitemservlet")
public class insertbillitemservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int venderid=0;
		String totalmoney=request.getParameter("sum");
		SqlSession ss=MybatisUtil.getSqlSession();
		managerMapper mapper=ss.getMapper(managerMapper.class);
		List<Dept> list=mapper.selectDept();
		for(int i=0;i<list.size();i++) {
			String valueObj=request.getParameter("box"+i);
			System.out.println(valueObj);
			int value=Integer.parseInt(valueObj);
			if(value!=0) {
				String moneyObj=request.getParameter("money"+i);
				System.out.println(moneyObj);
				float money=Float.parseFloat(moneyObj);
				int dept_id=list.get(i).getDept_id();
				Billitem billitem=new Billitem();
				billitem.setDept_id(dept_id);
				billitem.setBill_Item_Expense(money);
				venderid=Integer.parseInt(request.getParameter("venderid"));
				int bill_id=mapper.selectBillid(venderid);
				billitem.setBill_ID(bill_id);
				mapper.insertBillitem(billitem);
			}
		}
		if(totalmoney!=null) {
		float total=Float.parseFloat(totalmoney);
		System.out.println(total);
		mapper.updateBillmoney(total,venderid);
		ss.commit();
		}
		request.getRequestDispatcher("/jsp/Description.jsp").forward(request, response);
	}
}
