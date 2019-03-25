package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
 * Servlet implementation class venderselectservlet
 */
@WebServlet("/venderselectservlet")
public class venderselectservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SqlSession ss=MybatisUtil.getSqlSession();
		managerMapper vm=ss.getMapper(managerMapper.class);
		List<Vendor> list=new ArrayList<Vendor>();
			list=vm.selectVender();
			request.setAttribute("venderlist", list);
			request.getRequestDispatcher("/jsp/jsp1.jsp").forward(request,response);
	}

}
