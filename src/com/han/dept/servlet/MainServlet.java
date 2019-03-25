package com.han.dept.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.han.dept.time.Time;
import com.one.manager.bean.Dept;
import com.one.manager.dao.managerMapper;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	public static SqlSessionFactory getSqlSessionFactory() throws IOException {
		String resource = "mybatis-config.xml";
		InputStream is = Resources.getResourceAsStream(resource);
		return new SqlSessionFactoryBuilder().build(is);
	}

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("跳转到显示全部部门页面，开始处理数据……");
		SqlSessionFactory ssf = getSqlSessionFactory();
		SqlSession ss = ssf.openSession();
		managerMapper dm = ss.getMapper(managerMapper.class);
		List<Dept> deptList = dm.selectAll();
		HttpSession session = request.getSession();
		Time time = new Time();
		Date t = time.gettime();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		request.setAttribute("time", dateFormat.format(t));
		session.setAttribute("alldept", deptList);
		System.out.println("处理成功，开始跳转");
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/departmentMain.jsp");
		rd.forward(request, response);
		
	}

}
