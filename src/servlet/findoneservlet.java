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
 * Servlet implementation class findoneservlet
 */
@WebServlet("/findoneservlet")
public class findoneservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vendor_id = request.getParameter("vendor_id");
		System.out.println(vendor_id);
		SqlSession session = MybatisUtil.getSqlSession();
		managerMapper mapper = session.getMapper(managerMapper.class);
		Vendor vd = mapper.findoneVendor(vendor_id);
		
		Time time = new Time();
		Date t = time.gettime();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		request.setAttribute("time", dateFormat.format(t));
		request.setAttribute("theVd",vd);
						
		//3	��ת����ѯ��servlet��			
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/update.jsp");
		rd.forward(request, response);
	}

}
