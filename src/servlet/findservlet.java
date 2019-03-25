package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
 * Servlet implementation class findservlet
 */
@WebServlet("/findservlet")
public class findservlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SqlSession session = MybatisUtil.getSqlSession();
		managerMapper mapper = session.getMapper(managerMapper.class);
		List<Vendor> list = mapper.findVendor();
		for(Vendor vd : list){
			System.out.println(vd);
		}
		Time time = new Time();
		Date t = time.gettime();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		request.setAttribute("time", dateFormat.format(t));

		request.setAttribute("vdList",list);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/VendorManagement.jsp");
		rd.forward(request, response);
	}
	}


