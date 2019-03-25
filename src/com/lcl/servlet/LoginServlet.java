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
		System.out.println("Ìø×ªµ½µÇÂ¼ºóÌ¨³É¹¦£¬¿ªÊ¼½øĞĞÅĞ¶Ï¡­¡­");
		SqlSessionFactory ssf = getSqlSessionFactory();
		SqlSession ss = ssf.openSession();
		managerMapper um = ss.getMapper(managerMapper.class);
		System.out.println("Êı¾İ¿âÅäÖÃ³É¹¦");
		String username = null;
		username = request.getParameter("username");
		String password = null;
		password = request.getParameter("password");
		System.out.println(username+" "+password);
		if(username == null || password == null || username == "" || password == ""){
			System.out.println("µÇÂ½Ê§°Ü£¬ÕËºÅ»òÃÜÂëÎ´ÊäÈë");
			request.setAttribute("kong", "µÇÂ½Ê§°Ü£¬ÕËºÅ»òÃÜÂëÎ´ÊäÈë!");
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}else if(username.length() > 20 || password.length() > 20){
			System.out.println("µÇÂ¼Ê§°Ü£¬ÕËºÅ»òÃÜÂë¹ı³¤");
			request.setAttribute("kong", "µÇÂ½Ê§°Ü£¬ÕËºÅ»òÃÜÂëÌ«³¤!");
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
			System.out.println("µÇÂ½³É¹¦");
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/Description.jsp");
			rd.forward(request, response);
			}else{
				System.out.println("µÇÂ¼Ê§°Ü£¬ÕËºÅ»òÃÜÂë¹ı³¤");
				request.setAttribute("kong", "µÇÂ½Ê§°Ü£¬ÕËºÅ»òÃÜÂë´íÎó!");
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
				rd.forward(request, response);
			}
		}
	}

}
