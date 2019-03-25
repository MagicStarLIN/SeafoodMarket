package com.han.login.filter;


import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.one.manager.bean.User;






/**
 * Servlet Filter implementation class loginfilter
 */
@WebFilter("/*")
public class loginfilter implements Filter {

	@Override
    public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("init......");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
    	System.out.println("--------------------");
    	HttpServletRequest req = (HttpServletRequest) request;
    	HttpServletResponse resp = (HttpServletResponse) response;
    	req.setCharacterEncoding("utf-8");
    	resp.setContentType("text/html; charset=UTF-8");
    	resp.setCharacterEncoding("utf-8");
        
    	String path = req.getRequestURI();
    	System.out.println(path);
        if ((path.equals("/SeafoodMarket/"))||(path.indexOf("/LoginServlet") > -1)||(path.indexOf(".jpg") > -1)||(path.indexOf(".gif") > -1)) {
            
        	filterChain.doFilter(req, resp);
        } else {
        	HttpSession session = req.getSession();

            User pwd = (User) session.getAttribute("user");
            System.out.println(pwd);
            if (pwd == null) {
            	request.setAttribute("kong", "ÇëµÇÂ¼");
                resp.sendRedirect("/SeafoodMarket");
            } else {
            	System.out.println("È¨ÏÞÎª:"+pwd.getFlag());
            	if(pwd.getFlag()!=1&&((path.indexOf("/SeafoodMarket/MainServlet") > -1)||(path.indexOf("/SeafoodMarket/Servletmain") > -1))){
            		
            		resp.sendRedirect("/SeafoodMarket/jsp/Description.jsp");
            	}else{
            		filterChain.doFilter(req, resp);
            	}
            }
        }
        
        
    }

    @Override
    public void destroy() {

    }

}
