package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.han.dept.time.Time;
import com.one.manager.bean.Vendor;
import com.one.manager.dao.managerMapper;

import util.MybatisUtil;

/**
 * Servlet implementation class updateservlet
 */
@WebServlet("/updateservlet")
public class updateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vendor_id =   request.getParameter("vendor_id");
		//System.out.println(vendor_id);
		String vendor_name = request.getParameter("vendor_name");
		String vendor_address = request.getParameter("vendor_address");
		String vendor_phone = request.getParameter("vendor_phone");
		String vendor_fax = request.getParameter("vendor_fax");
		String vendor_contact_person = request.getParameter("vendor_contact_person");
		//?Vendor_ID=${vendor_ID}" <input type="hidden" name="vendor_ID" value="${theVd.vendor_ID}" />
		
		Vendor vd = new Vendor();
		vd.setVendor_id(Integer.parseInt(vendor_id));
		vd.setVendor_address(vendor_address);
		vd.setVendor_contact_person(vendor_contact_person);
		vd.setVendor_fax(vendor_fax);
		vd.setVendor_phone(vendor_phone);
		vd.setVendor_name(vendor_name);
		vd.setVendor_contact_person(vendor_contact_person);
		//System.out.println(vd);
		Time time = new Time();
		Date t = time.gettime();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		request.setAttribute("time", dateFormat.format(t));
		System.out.println(vd);
		SqlSession session = MybatisUtil.getSqlSession();
		managerMapper mapper = session.getMapper(managerMapper.class);
		mapper.updateVendor(vd);
		session.commit();
		RequestDispatcher rd = request.getRequestDispatcher("/findservlet");
		rd.forward(request, response);
		
	}

}
