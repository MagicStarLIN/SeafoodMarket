package com.han.backup.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.one.manager.bean.Bill;
import com.one.manager.bean.Billitem;
import com.one.manager.dao.managerMapper;

import util.MybatisUtil;

/**
 * Servlet implementation class BackUpServlet
 */
@WebServlet("/BackUpServlet")
public class BackUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//此处设置为true即可追加
       

        long l = System.currentTimeMillis();



      Date date = new Date(l);

    

     SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
     FileWriter out = new FileWriter("D:\\备份.txt",true);
     File file=new File("D:\\备份.txt");//定义文件路径
     //ObjectOutputStream obstream=new ObjectOutputStream(new FileOutputStream(file));
     try {
     if(!file.exists())
     file.mkdir();
     String string=" attrib +H "+file.getAbsolutePath(); //设置文件属性为隐藏
     Runtime.getRuntime().exec(string); //
     } catch (IOException e) {
     e.printStackTrace();
     }
     //FileWriter out1 = new FileWriter("D:\\备份.txt", true); 
     out.write(dateFormat.format(date));
     out.flush();
     out.write("\r\n");
     out.flush();
    //在这写数据
     	SqlSession ss=MybatisUtil.getSqlSession();
		managerMapper mapper=ss.getMapper(managerMapper.class);
		List<Bill> list=mapper.selectbillitem();
		for(Bill bill:list) {
			System.out.println(bill);
		out.write("\r\n");
		out.flush();
		out.write(bill.toString());
		}
        out.close();
    
		
	}

}
