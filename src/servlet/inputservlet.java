package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.one.manager.bean.Vendor;
import com.one.manager.dao.managerMapper;

import util.MybatisUtil;

/**
 * Servlet implementation class inputservlet
 */
@WebServlet("/inputservlet")
public class inputservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vendor_id = request.getParameter("vendor_id");
		String vendor_name = request.getParameter("vendor_name");
		String vendor_address = request.getParameter("vendor_address");
		String vendor_phone = request.getParameter("vendor_phone");
		String vendor_fax = request.getParameter("vendor_fax");
		String vendor_contact_person = request.getParameter("vendor_contact_person");
		
		System.out.println(vendor_id + " " + vendor_name + "  " + vendor_address + "  "+vendor_phone+"  "+ vendor_fax+"  " + vendor_contact_person);
	
		Vendor vd = new Vendor();
		vd.setVendor_name(vendor_name);
		vd.setVendor_address(vendor_address);
		vd.setVendor_phone(vendor_phone);
		vd.setVendor_fax(vendor_fax);
		vd.setVendor_contact_person(vendor_contact_person);
		System.out.println(vd);
		SqlSession session = MybatisUtil.getSqlSession();
		managerMapper mapper = session.getMapper(managerMapper.class);
		mapper.saveVendor(vd);
		session.commit();
	
	
	
	request.getRequestDispatcher("/findservlet").forward(request,response);
	}

}
