package com.lcl.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import com.lcl.MyUtil.DBUtil;

import com.one.manager.dao.managerMapper;

/**
 * Servlet implementation class ServletUpdate2
 */
@WebServlet("/ServletUpdate2")
public class ServletUpdate2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUpdate2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//updateIncome(@Param("dept_id") Integer dept_id,@Param("income") Integer income,@Param("income_id") Integer income_id);
		Integer incomeid = Integer.parseInt(request.getParameter("income_id"));
		String deptname = request.getParameter("D1");
		Integer newincome = Integer.parseInt(request.getParameter("T2"));
		SqlSession sqlSession = DBUtil.getSqlSession(true);
		managerMapper mim = sqlSession.getMapper(managerMapper.class);
		mim.updateIncome(mim.findDept(deptname).getDept_id(), newincome, incomeid);
		RequestDispatcher rd = request.getRequestDispatcher("/Servletmain");
		rd.forward(request, response);
	}

}
