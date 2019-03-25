<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML><HEAD><style type="text/css"><!--A { text-decoration: none}--></style>
<TITLE>Captain Fresh Seafood Supermarket : Welcome</TITLE>
<META http-equiv=Content-Type content="text/html; charset=windows-1252">
<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
<BODY vLink=#ffcc33 aLink=#ffcc33 link=#993333 bgColor=#FFFFCC leftMargin=0 
topMargin=0 rightMargin=0 MARGINHEIGHT="0" MARGINWIDTH="0">
</head>
<body vLink=#ffcc33 aLink=#ffcc33 link=#993333 bgColor=#FFFFCC leftMargin=0 
topMargin=0 rightMargin=0 MARGINHEIGHT="0" MARGINWIDTH="0">
<center>
<TR>
    <TD width=172><IMG alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_top_left.jpg" 
      border=0 width="172" height="62"></TD>
    <TD width=253><IMG height=62 alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_top_mid.jpg" width=253 
    border=0></TD>
    <TD width=225><IMG height=62 alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_top_right.jpg" width=225 
      border=0></TD></TR>
<TABLE cellSpacing=0 cellPadding=0 width=750 
background="/SeafoodMarket/imgs/top_band.gif" border=0>
  <TBODY>
  <TR>
  <% 
  	SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy年MM月dd日");
	String string=dateFormat.format(new Date());
   %>
    <TD align=right height=25><FONT face=Verdana,Arial,Helvetica 
      size=1>&nbsp;&nbsp; <%=string%>&nbsp;&nbsp;</FONT></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=748 border=0 height="333">
  <TBODY>
  <TR>
    <TD vAlign=middle width=170 height="42" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
      <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket_Manager/Servletmain"><font color = "#993333">Income management</font></a></font></b>
    </TD>
    <TD vAlign=top width=567 height="299" rowspan="7">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p align="center">&nbsp;</p>
    <form method="POST" action="/SeafoodMarket/insertBillservlet">
      <!--webbot bot="SaveResults" u-file="E:\ij&#39033;&#30446;1\UI\_private\form_results.txt" s-format="TEXT/CSV" s-label-fields="TRUE" startspan --><input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" endspan i-checksum="43374" -->
      <p align="center"><b><font color="#993333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      Bill Date:</font></b><input type="text" name="billdate" size="20"></p>
      <p align="center"><font color="#993333"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </b></font><b><font color="#993333">Bill Due Date</font></b><font color="#993333"><b>:<input type="text" name="billduedate" size="20"></b></font></p>
      <p align="center"><font color="#993333"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      Vendor:<select size="1" name="select">
       		<option>=请选择=</option>
	<c:forEach items="${venderlist}" var="vendor">
		<option>${vendor.vendor_id}</option>
	</c:forEach>
      </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" value="new Vendor" name="B3" style="background-color: #FDCC64; color: #800000; font-weight: bold"></b></font></p>
      <p align="center"><input type="submit" value="Add Department Item" name="B1" style="color: #800000; font-weight: bold; background-color: #FDCC64">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" value="Reset" name="B2" style="color: #800000; font-weight: bold; background-color: #FDCC64"></p>
    </form>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="42" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; <a href="/SeafoodMarket/MainServlet"><font color = "#993333">Dept management</font></a></font></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; Report management</font> </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/findservlet"><font color="#993333" >Vendor management</a> </font>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; <a href = "/SeafoodMarket/venderselectservlet"><font color="#993333" >Bill management</a></font>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/haixianchaoshi/html/billpaymentjsp.jsp"><font color="#993333" >Bill Payment</a></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="43" bgcolor="#FDCC64">
    <b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/jsp/backup.jsp"><font color="#993333" > Backup</font></a> </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=bottom width=746 height="34" colspan="2">
    </TD>
  </TR>
  <TR>
    <TD vAlign=bottom width=746 height="122" colspan="2">
      <p><IMG height=24 alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_bot_right.jpg" width=742 
      border=0></p>
    </TD>
  </TR>
      </FORM>
  </TBODY>
</TABLE>
<tr>
<TD vAlign=top align=middle colSpan=3><IMG height=1 alt="" 
	      src="/SeafoodMarket/imgs/dot_clear.gif" width=1 
		  border=0><BR><FONT face=Verdana,Arial,Helvetica size=1>copyright ?004
	      Captain Fresh Seafood Supermarket<BR>designed and programmed by <a href="http://it.neworiental.org/" target="_blank">neworiental</a></FONT>
		  </FORM>
			 </TD></tr>
</center>
      </BODY></HTML>