package com.lcl.servlet;

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

import com.lcl.MyUtil.DBUtil;
import com.lcl.MyUtil.Gettime;
import com.one.manager.bean.IncomeAndDept;
import com.one.manager.dao.managerMapper;

/**
 * Servlet implementation class Servletmain
 */
@WebServlet("/Servletmain")
public class Servletmain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servletmain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gettime time = new Gettime();
		Date t = time.gettime();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		request.setAttribute("time", dateFormat.format(t));
		SqlSession sqlSession = DBUtil.getSqlSession(true);
		managerMapper mim = sqlSession.getMapper(managerMapper.class);
		List<IncomeAndDept> l = mim.getAll();
		request.setAttribute("mainList", l);
		RequestDispatcher rd = request.getRequestDispatcher("/UI/incomeMain.jsp");
		rd.forward(request, response);
		
	}

}
