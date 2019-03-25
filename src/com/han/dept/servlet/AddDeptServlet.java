package com.han.dept.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import com.han.dept.time.Time;
import com.one.manager.bean.Dept;
import com.one.manager.dao.managerMapper;

/**
 * Servlet implementation class AddDeptServlet
 */
@WebServlet("/AddDeptServlet")
public class AddDeptServlet extends HttpServlet {
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
		System.out.println("跳转至添加部门后台成功，正在处理数据……");
		SqlSessionFactory ssf = getSqlSessionFactory();
		SqlSession ss = ssf.openSession();
		managerMapper dm = ss.getMapper(managerMapper.class);
		String dept_name = null;
		dept_name = request.getParameter("dept_name");
		String dept_descreption = null;
		dept_descreption = request.getParameter("dept_descreption");
		Dept dept= new Dept();
		Time time = new Time();
		Date t = time.gettime();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		request.setAttribute("time", dateFormat.format(t));
		dept.setDept_name(dept_name);
		dept.setDept_descreption(dept_descreption);
		if(dept_name == null || dept_descreption == null ||dept_name == "" || dept_descreption == ""){
			System.out.println("插入失败，名字或描述未输入");
			
			request.setAttribute("msg", "插入失败，名字或描述未输入！");
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/departmentAdd.jsp");
			rd.forward(request, response);
		}else if(dept_name.length() > 20 || dept_descreption.length() > 20){
			System.out.println("插入失败,输入过长");
			
			request.setAttribute("msg", "插入失败，名字或描述过长！");
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/departmentAdd.jsp");
			rd.forward(request, response);
			
		}else{
			if(dm.addDept(dept) != 0){
			System.out.println("插入成功");
			ss.commit();
			
			request.setAttribute("msg", "插入成功！");
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/departmentAdd.jsp");
			rd.forward(request, response);
			}else{
				RequestDispatcher rd = request.getRequestDispatcher("/jsp/fail.jsp");
				rd.forward(request, response);
			}
		}
	ss.close();	
	}

}
