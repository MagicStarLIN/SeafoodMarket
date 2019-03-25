<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<HTML><HEAD><TITLE>Captain Fresh Seafood Supermarket : Welcome</TITLE>
<META http-equiv=Content-Type content="text/html; charset=windows-1252">
<META content="Microsoft FrontPage 5.0" name=GENERATOR>
<style type="text/css"><!--A { text-decoration: none}--></style></HEAD>
<BODY vLink=#ffcc33 aLink=#ffcc33 link=#993333 bgColor=#FFFFCC leftMargin=0 
topMargin=0 rightMargin=0 MARGINHEIGHT="0" MARGINWIDTH="0">
<center>
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
      size=1>&nbsp;&nbsp;<% %>&nbsp;&nbsp;</FONT></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=748 border=0 height="612">
  <TBODY>
  <TR>
    <TD vAlign=middle width=177 height="45" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
      <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; ;<a href = "/SeafoodMarket_Manager/Servletmain"><font color = "#993333">Income management</font></a></font></b>
    </TD>
    <TD vAlign=top width=560 height="320" rowspan="7">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p align="center">&nbsp;</p>
    <form method="POST"   action ="/SeafoodMarket/inputservlet">
    
      <!--webbot bot="SaveResults" u-file="E:\ij&#39033;&#30446;1\UI\_private\form_results.txt" s-format="TEXT/CSV" s-label-fields="TRUE" startspan --><input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" endspan i-checksum="43374" -->
      <p align="center"><b><font color="#993333">&nbsp;&nbsp; Vendor Name:</font></b><input type="text" name="vendor_name" size="20"></p>
      <p align="center"><b><font color="#993333">Vendor Address</font></b><font color="#993333"><b>:<input type="text" name="vendor_address" size="20"></b></font></p>
      <p align="center"><b><font color="#993333">&nbsp;&nbsp;&nbsp; Vendor Phone</font></b><font color="#993333"><b>:<input type="text" name="vendor_phone" size="20"></b></font></p>
      <p align="center"><b><font color="#993333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      Vendor FAX</font></b><font color="#993333"><b>:<input type="text" name="vendor_fax" size="20"></b></font></p>
      <p align="center"><font color="#993333"><b>&nbsp;&nbsp; Contact Person:<input type="text" name="vendor_contact_person" size="20"></b></font></p>
      <p align="center"><input  type="submit" value="Add" name="B1" style="color: #800000; font-weight: bold; background-color: #FDCC64" ><input type="reset" value="Cancel" name="B2" style="color: #800000; font-weight: bold; background-color: #FDCC64"></p>
    </form>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=177 height="45" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href="/SeafoodMarket/MainServlet"><font color = "#993333">Dept management</font></a></font></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=177 height="46" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; Report management</font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=177 height="46" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/findservlet"><font color="#993333" >Vendor management</a></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=177 height="46" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<font color="#993333" ><a href = "/SeafoodMarket/venderselectservlet"><font color="#993333" >Bill management</a></font>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=177 height="46" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; <a href = "/SeafoodMarket/html/billpaymentjsp.jsp"><font color="#993333" >Bill Payment</a></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=177 height="46" bgcolor="#FDCC64" align="right">
    <p align="left">
    <b><font color="#993333" size="3">&nbsp;&nbsp; <a href = "/SeafoodMarket/jsp/backup.jsp"><font color="#993333" >Backup</font></a></b>
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
<TR>
			<TD vAlign=top align=middle colSpan=3><IMG height=1 alt="" 
	      src="/SeafoodMarket/imgs/dot_clear.gif" width=1 
		  border=0><BR><FONT face=Verdana,Arial,Helvetica size=1>copyright ?004
	      Captain Fresh Seafood Supermarket<BR>designed and programmed by <a href="http://it.neworiental.org/" target="_blank">neworiental</a></FONT>
		  </FORM>
			 </TD>
		</TR>
  </center>
      </BODY></HTML>
