package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.one.manager.bean.Bill;
import com.one.manager.bean.Vendor;

import dao.vbDao;

/**
 * Servlet implementation class billpaymentservlet
 */
@WebServlet("/billpaymentservlet")
public class billpaymentservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("vendor_name");
		vbDao dao=new vbDao();
		
		Vendor vendor=null;
		vendor=dao.findBillList(name);
		System.out.println(vendor);
		
		if(vendor!=null){
			List<Bill> billList=vendor.getBill();
			request.setAttribute("billList", billList);
			
			request.setAttribute("vendor_name", name);
			request.getRequestDispatcher("/jsp/billpayment.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/html/billpaymentjsp.jsp").forward(request, response);
		}

	}

}
