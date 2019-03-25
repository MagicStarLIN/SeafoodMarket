<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<HTML><HEAD><style type="text/css"><!--A { text-decoration: none}--></style>
<TITLE>Captain Fresh Seafood Supermarket : Welcome</TITLE>
<META http-equiv=Content-Type content="text/html; charset=windows-1252">
<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
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
      size=1>&nbsp;&nbsp;<%=string %>&nbsp;&nbsp;</FONT></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=748 border=0 height="533">
  <TBODY>
  <TR>
    <TD vAlign=middle width=179 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="left">
      <p><b><font color="#993333" size="3">&nbsp;&nbsp; <a href = "/SeafoodMarket_Manager/Servletmain"><font color = "#993333">Income management</font></a></font>
      </b>
    </TD>
    <TD vAlign=top width=558 height="305" rowspan="7">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div align="center">
      <center>
      <table border="1" width="88%" bordercolor="#800000">
        <tr>
          <td width="14%" align="center" bgcolor="#FDCC64"><b><font color="#993333">Vendor
            Name</font></b></td>
          <td width="14%" align="center" bgcolor="#FDCC64"><b><font color="#993333">Vendor
            Address</font></b></td>
          <td width="15%" align="center" bgcolor="#FDCC64"><b><font color="#993333">Vendor
            Phone</font></b></td>
          <td width="15%" align="center" bgcolor="#FDCC64"><b><font color="#993333">Vendor
            FAX</font></b></td>
          <td width="15%" align="center" bgcolor="#FDCC64"><b><font color="#993333">Contact
            Person</font></b></td>
          <td width="34%" align="center" bgcolor="#FDCC64"><b><font color="#993333">Update</font></b></td>
        </tr>
     
	<c:forEach  items="${vdList}"  var="vd"  varStatus="status">
	<tr>
      <td width="14%" align="center"><font color="#993333">${vd.vendor_name}</font></td>
      <td width="14%" align="center"><font color="#993333">${vd.vendor_address}</font></td>
      <td width="14%" align="center"><font color="#993333">${vd.vendor_phone}</font></td>
      <td width="14%" align="center"><font color="#993333">${vd.vendor_fax}</font></td>
      <td width="14%" align="center"><font color="#993333">${vd.vendor_contact_person}</font></td>
      <td width="14%" align="center"><form action  ="/SeafoodMarket/findoneservlet?vendor_id=${vd.vendor_id}" method="POST"><input type="submit" value ="GO" style="color: #800000; font-weight: bold; background-color: #FDCC64"></form></td>
    
	</tr>
	</c:forEach>
        
      </table>
      </center>
    </div>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="left">
    <p><b><font color="#993333" size="3">&nbsp;&nbsp; <a href="/SeafoodMarket/MainServlet"><font color = "#993333">Dept management</font></a></font></font> </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="43" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="left">
    <p><b><font color="#993333" size="3">&nbsp;&nbsp; Report management</font>
    </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="44" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="left">
    <p><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/findservlet"><font color="#993333" >Vendor management</a> </font>
    </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="44" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="left">
    <p><b><font color="#993333" size="3">&nbsp;&nbsp;<font color="#993333" ><a href = "/SeafoodMarket/venderselectservlet"><font color="#993333" >Bill management</a></font>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="44" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="left">
    <p><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/html/billpaymentjsp.jsp"><font color="#993333" >Bill Payment</a></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=179 height="44" bgcolor="#FDCC64" align="left">
    <b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/jsp/backup.jsp"><font color="#993333" > Backup</font></a> </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=bottom width=746 height="1" colspan="2">
      <form action  ="/SeafoodMarket/jsp/add.jsp" method="POST">
        <!--webbot bot="SaveResults" u-file="E:\ij&#39033;&#30446;1\UI\_private\form_results.txt" s-format="TEXT/CSV" s-label-fields="TRUE" startspan --><input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" endspan i-checksum="43374" -->
        <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="Add    Vendor " name="B3" style="color: #800000; font-weight: bold; background-color: #FDCC64"></p>
      </form>
      <p>&nbsp;
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
