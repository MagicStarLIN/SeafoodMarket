<%@ page language="java" import="java.util.List, com.one.manager.bean.Bill" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML><HEAD><style type="text/css"><!--A { text-decoration: none}--></style>
<TITLE>Captain Fresh Seafood Supermarket : Welcome</TITLE>
<META http-equiv=Content-Type content="text/html; charset=windows-1252">
<META content="Microsoft FrontPage 5.0" name=GENERATOR>
<style type="text/css"><!--A { text-decoration: none}--></style></HEAD>
<BODY vLink=#ffcc33 aLink=#ffcc33 link=#993333 bgColor=#FFFFCC leftMargin=0 
topMargin=0 rightMargin=0 MARGINHEIGHT="0" MARGINWIDTH="0">
<center>
<img alt="chatu1" src="/SeafoodMarket/imgs/home_top_left.jpg">
<img alt="chatu2" src="/SeafoodMarket/imgs/home_top_mid.jpg">
<img alt="chatu3" src="/SeafoodMarket/imgs/home_top_right.jpg">
<TABLE cellSpacing=0 cellPadding=0 width=750 
background="/SeafoodMarket/imgs/top_band.gif" border=0>
  <TBODY>
  <TR>
    <TD align=right height=25><FONT face=Verdana,Arial,Helvetica 
      size=1>&nbsp;&nbsp; 01/25/2019&nbsp;&nbsp;</FONT></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=748 border=0 height="528">
  <TBODY>
  <TR>
    <TD vAlign=middle width=179 height="42" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
      <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket_Manager/Servletmain"><font color = "#993333">Income management</font></a></font></b>
    </TD>
    <TD vAlign=top width=558 height="300" rowspan="7">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div align="center">
      <center>
     	
     	<form action="/SeafoodMarket/billpaymentservlet" method="post">
     	<b>Already&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Update</b><br><br><br><br>
     	<input type="hidden" name="vendor_name" value="${vendor_name}">
     	<input type="submit" value="back">
     	</form>
     	
      </center>
    </div>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; <a href="/SeafoodMarket/MainServlet"><font color = "#993333">Dept management</font></a></font></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; Report management</font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/findservlet"><font color="#993333" >Vendor management</a> </font>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/venderselectservlet"><font color="#993333" >Bill management</a></font>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/html/billpaymentjsp.jsp"><font color="#993333" >Bill Payment</a></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="43" bgcolor="#FDCC64">
    <p align="left">
    <b><font color="#993333" size="3">&nbsp;&nbsp; <a href = "/SeafoodMarket/jsp/backup.jsp"><font color="#993333" >Backup</font></a> </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=bottom width=746 height="1" colspan="2">
    </TD>
  </TR>
  <TR>
    <TD vAlign=bottom width=746 height="122" colspan="2">
      <p><IMG height=24 alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_bot_right.jpg" width=742 
      border=0></p>
    </TD>
  </TR>
  
  <TR>
			<TD vAlign=top align=middle colSpan=3><IMG height=1 alt="" 
	      src="/SeafoodMarket/imgs/dot_clear.gif" width=1 
		  border=0><BR><FONT face=Verdana,Arial,Helvetica size=1>copyright İ2004
	      Captain Fresh Seafood Supermarket<BR>designed and programmed by <a href="http://it.neworiental.org/" target="_blank">neworiental</a></FONT>
			 </TD>
		</TR>
  
      </FORM>
  </TBODY>
</TABLE>
</center>
      </BODY></HTML>