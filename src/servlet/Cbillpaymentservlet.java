package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.one.manager.bean.Bill;

import dao.vbDao;

/**
 * Servlet implementation class Cbillpaymentservlet
 */
@WebServlet("/Cbillpaymentservlet")
public class Cbillpaymentservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("vendor_name");
		request.setAttribute("vendor_name", name);
		
		String id1=request.getParameter("C1");
		Integer id2=Integer.parseInt(id1);
		String choose=request.getParameter("C2");
		System.out.println(id2+"   "+choose);
		vbDao dao=new vbDao();
		Bill bill=dao.findBill(id2);
		
		if(choose==null){
			
			bill.setBill_paid_flag("0");
			
		}else{
			
			bill.setBill_paid_flag("1");
			
		}
		
		int result=dao.updateBill(bill);
		System.out.println(result);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/Cbillpayment.jsp");
		rd.forward(request, response);
	}

}
