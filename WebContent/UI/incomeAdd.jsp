<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
    <HTML>
<HEAD><TITLE>Captain Fresh Seafood Supermarket : Welcome</TITLE>
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
      size=1>&nbsp;&nbsp;${time}&nbsp;&nbsp;</FONT></TD></TR></TBODY></TABLE>

<TABLE cellSpacing=0 cellPadding=0 width=748 border=0 height="606">
  <TBODY>
  <TR>
    <TD vAlign=middle width=170 height="38" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
      <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/Servletmain"><font color = "#993333">Income management</font></a></font></b>
    </TD>
    <TD vAlign=top width=567 height="273" rowspan="7">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p align="center">&nbsp;</p>
    <form method="POST" action="/SeafoodMarket/ServletAdd2">
      <!--webbot bot="SaveResults" u-file="E:\ij&#39033;&#30446;1\UI\_private\form_results.txt" s-format="TEXT/CSV" s-label-fields="TRUE" startspan -->
      <input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" endspan i-checksum="43374" -->
      <p align="center"><b><font color="#993333">
      Department Name:<select size="1" name="D1" style="background-color: #FDCC64; color: #800000; border-style: solid; border-color: #800000">
       <c:forEach items="${deptlist}" var = "dept">
        <option>${dept.dept_name}</option>
        </c:forEach>
      </select></font></b></p>
            ${msg }
      <p align="center"><font color="#993333"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      Daliy Income:<input type="text" name="T2" size="20"></b></font></p>
      <p align="center"><input type="submit" value="Add" name="B1" style="color: #800000; font-weight: bold; background-color: #FDCC64"><input type="reset" value="Reset" name="B2" style="color: #800000; font-weight: bold; background-color: #FDCC64"></p>
    </form>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="38" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; <a href="/SeafoodMarket/MainServlet"><font color = "#993333">Dept management</font></a></font> </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="39" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; Report&nbsp;
    management</font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="39" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/findservlet"><font color="#993333" >Vendor management</a></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="39" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;  <a href = "/SeafoodMarket/venderselectservlet"><font color="#993333" >Bill management</a></font></b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="39" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; <a href = "/SeafoodMarket/html/billpaymentjsp.jsp"><font color="#993333" >Bill Payment</a></font></b>
    </TD>
  </TR>
  <TR>
    <TD width=170 height="41" bgcolor="#FDCC64">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/jsp/backup.jsp"><font color="#993333" >Backup</font></a> </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=bottom width=746 height="75" colspan="2">
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
