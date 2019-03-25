package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.one.manager.bean.Bill;
import com.one.manager.bean.Dept;
import com.one.manager.dao.managerMapper;

import util.MybatisUtil;

/**
 * Servlet implementation class insertBillservlet
 */
@WebServlet("/insertBillservlet")
public class insertBillservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String billdate=request.getParameter("billdate");
		String billduedate=request.getParameter("billduedate");
		String vendor=request.getParameter("select");
		int vendor_id=Integer.parseInt(vendor);
		Bill bill=new Bill();
		bill.setBill_date(billdate);
		bill.setBill_due_date(billduedate);
		bill.setVendor_id(vendor_id);
		System.out.println(bill);
		SqlSession ss=MybatisUtil.getSqlSession();
		managerMapper mapper=ss.getMapper(managerMapper.class);
		mapper.insertBill(bill);
		ss.commit();
		List<Dept> list=mapper.selectDept();
		for(Dept dept:list) {
			System.out.println(dept.getDept_name());
		}
		request.setAttribute("venderid", vendor);
		request.setAttribute("deptlist", list);
		request.getRequestDispatcher("/jsp/jsp2.jsp").forward(request, response);
	}

}
