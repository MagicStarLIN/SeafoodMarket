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
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
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
		System.out.println("��ת���޸ĺ�̨�ɹ������ڴ������ݡ���");
		SqlSessionFactory ssf = getSqlSessionFactory();
		SqlSession ss = ssf.openSession();
		managerMapper dm = ss.getMapper(managerMapper.class);
		int dept_id = Integer.parseInt(request.getParameter("dept_id"));
		String dept_name = null;
		dept_name = request.getParameter("dept_name");
		String dept_descreption = null;
		dept_descreption = request.getParameter("dept_descreption");
		Dept dept = new Dept();
		dept.setDept_id(dept_id);
		dept.setDept_name(dept_name);
		dept.setDept_descreption(dept_descreption);
		Time time = new Time();
		Date t = time.gettime();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		request.setAttribute("time", dateFormat.format(t));
		if(dept_name == null || dept_descreption == null ||dept_name == "" || dept_descreption == ""){
			System.out.println("�޸�ʧ�ܣ����ֻ�����δ����");

			request.setAttribute("msg", "�޸�ʧ�ܣ����ֻ�����δ���룡");
			RequestDispatcher rd = request.getRequestDispatcher("/MainServlet");
			rd.forward(request, response);
		}else if(dept_name.length() > 20 || dept_descreption.length() > 20){
			System.out.println("�޸�ʧ�ܣ����ֻ���������");

			request.setAttribute("msg", "�޸�ʧ�ܣ����ֻ�����������");
			RequestDispatcher rd = request.getRequestDispatcher("/MainServlet");
			rd.forward(request, response);
		}else{
		if(dm.updateDept(dept) != 0){
			System.out.println("�޸ĳɹ�");
			ss.commit();
			request.setAttribute("msg", "�޸ĳɹ���");
			RequestDispatcher rd = request.getRequestDispatcher("/MainServlet");
			rd.forward(request, response);
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/fail.jsp");
			rd.forward(request, response);
		}
		}
		ss.close();
	}

}
