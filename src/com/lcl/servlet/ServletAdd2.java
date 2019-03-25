package com.lcl.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.lcl.MyUtil.DBUtil;
import com.one.manager.bean.Dept;
import com.one.manager.bean.Income;
import com.one.manager.dao.managerMapper;

/**
 * Servlet implementation class ServletAdd2
 */
@WebServlet("/ServletAdd2")
public class ServletAdd2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAdd2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String deptname = request.getParameter("D1");
		Integer income = null;
	
		if(request.getParameter("T2")==null||request.getParameter("T2")==""||request.getParameter("T2").length()>20){

		request.setAttribute("msg", "≤Â»Î ß∞‹");
		RequestDispatcher rd = request.getRequestDispatcher("/ServletAdd");
		rd.forward(request, response);
		}else{
		income = Integer.parseInt(request.getParameter("T2"));
		SqlSession sqlSession = DBUtil.getSqlSession(true);
		managerMapper mim = sqlSession.getMapper(managerMapper.class);
		Income i = new Income();
		Dept theDept = mim.findDept(deptname);
		i.setDept_id(theDept.getDept_id());
		i.setDaily_income(income);
	
		mim.insertIncome(i);
		RequestDispatcher rd = request.getRequestDispatcher("/Servletmain");
		rd.forward(request, response);
		
	
		}

	}
	
}
