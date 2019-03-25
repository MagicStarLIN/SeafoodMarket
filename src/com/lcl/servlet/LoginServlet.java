package com.lcl.servlet;

import java.io.IOException;
import java.io.InputStream;

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

import com.one.manager.bean.User;
import com.one.manager.dao.managerMapper;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
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
		System.out.println("��ת����¼��̨�ɹ�����ʼ�����жϡ���");
		SqlSessionFactory ssf = getSqlSessionFactory();
		SqlSession ss = ssf.openSession();
		managerMapper um = ss.getMapper(managerMapper.class);
		System.out.println("���ݿ����óɹ�");
		String username = null;
		username = request.getParameter("username");
		String password = null;
		password = request.getParameter("password");
		System.out.println(username+" "+password);
		if(username == null || password == null || username == "" || password == ""){
			System.out.println("��½ʧ�ܣ��˺Ż�����δ����");
			request.setAttribute("kong", "��½ʧ�ܣ��˺Ż�����δ����!");
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}else if(username.length() > 20 || password.length() > 20){
			System.out.println("��¼ʧ�ܣ��˺Ż��������");
			request.setAttribute("kong", "��½ʧ�ܣ��˺Ż�����̫��!");
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}else{
			User user1 = new User();
			user1.setPassword(password);
			user1.setUsername(username);
			User user = null;
			user = um.selectUserByUserName(user1);
			System.out.println(user);
			if(user != null){
			System.out.println("��½�ɹ�");
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/Description.jsp");
			rd.forward(request, response);
			}else{
				System.out.println("��¼ʧ�ܣ��˺Ż��������");
				request.setAttribute("kong", "��½ʧ�ܣ��˺Ż��������!");
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
				rd.forward(request, response);
			}
		}
	}

}
