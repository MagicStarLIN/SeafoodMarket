<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<HTML><HEAD><style type="text/css"><!--A { text-decoration: none}--></style>
<TITLE>Captain Fresh Seafood Supermarket : Welcome</TITLE>
<META http-equiv=Content-Type content="text/html; charset=windows-1252">
<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
<BODY vLink=#ffcc33 aLink=#ffcc33 link=#993333 bgColor=#FFFFCC leftMargin=0 
topMargin=0 rightMargin=0 MARGINHEIGHT="0" MARGINWIDTH="0">
<center>
<TABLE cellSpacing=0 cellPadding=0 width=750 
background="/SeafoodMarket/imgs/top_band.gif" border=0>
  <TBODY>
  <TR>
    <TD align=right height=25><FONT face=Verdana,Arial,Helvetica 
      size=1>&nbsp;&nbsp;${time} &nbsp;&nbsp;</FONT></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=748 border=0 height="537">
  <TBODY>
  <TR>
    <TD vAlign=middle width=181 height="47" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
      <p align="left"><b><font color="#993333">&nbsp;&nbsp;<a href = "/SeafoodMarket/Servletmain"><font color = "#993333">Income management</font></a></font></b>
    </TD>
    <TD vAlign=top width=558 height="333" rowspan="7">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div align="center">
      <center>
      <table border="1" width="80%" bordercolor="#800000">
        <tr>
          <td width="19%" align="center" bgcolor="#FDCC64"><b><font color="#993333">Department
            Name</font></b></td>
          <td width="20%" align="center" bgcolor="#FDCC64"><b><font color="#993333">Bussiness
            Date</font></b></td>
          <td width="20%" align="center" bgcolor="#FDCC64"><b><font color="#993333">Last
            mod Date</font></b></td>
          <td width="20%" align="center" bgcolor="#FDCC64"><b><font color="#993333">Daliy
            Income</font></b></td>
          <td width="34%" align="center" bgcolor="#FDCC64"><b><font color="#993333">Update</font></b></td>
        </tr>
     <c:forEach items="${mainList}" var="l" > 
       <tr>
       <form action = "/SeafoodMarket/ServletUpdate" method = "post">
       <input type = "hidden" name = "income_id" value ="${l.income_id}"> 
          <td width="19%" align="center"><font color="#993333">${l.dept_name}</font></td>
          <td width="20%" align="center"><font color="#993333">${l.business_Date}</font></td>
          <td width="20%" align="center"><font color="#993333">${l.lst_mod_timestemp}</font></td>
          <td width="20%" align="center"><font color="#993333">${l.daily_income}$</font></td>
          <td width="34%" align="center"><input type = "image"  src="/SeafoodMarket/imgs/depart1.gif"></td>
       </form>
        </tr>
         </c:forEach>
      </table>
      </center>
    </div>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=181 height="47" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
      <p align="left"><b><font color="#993333">&nbsp;&nbsp; <a href="/SeafoodMarket/MainServlet"><font color = "#993333">Dept management</font></a></font> </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=181 height="47" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333">&nbsp;&nbsp; Report management</font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=181 height="48" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333">&nbsp;&nbsp; <a href = "/SeafoodMarket/findservlet"><font color="#993333" >Vendor management</a></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=181 height="48" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333">&nbsp;&nbsp;<a href = "/SeafoodMarket/venderselectservlet"><font color="#993333" >Bill management</a></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=181 height="48" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333">&nbsp;&nbsp;<a href = "/SeafoodMarket/html/billpaymentjsp.jsp"><font color="#993333" >Bill Payment</a></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=181 height="48" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000">
    <p align="left"><b><font color="#993333">&nbsp;&nbsp;  <a href = "/SeafoodMarket/jsp/backup.jsp"><font color="#993333" >Backup</font></a> </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=bottom width=746 height="1" colspan="2">
      <form method="POST" action="/SeafoodMarket/ServletAdd" >
        <!--webbot bot="SaveResults" u-file="E:\ij&#39033;&#30446;1\UI\_private\form_results.txt" s-format="TEXT/CSV" s-label-fields="TRUE" startspan --><input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" endspan i-checksum="43374" -->
        <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="Add    Income " name="B3" style="color: #800000; font-weight: bold; background-color: #FDCC64"></p>
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
</center>
      </BODY></HTML>
