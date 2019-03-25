<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<HTML><HEAD><style type="text/css"><!--A { text-decoration: none}--></style>
<TITLE>Captain Fresh Seafood Supermarket : Welcome</TITLE>
<script type="text/javascript">
	function insert(control){
	var chooses=document.getElementsByClassName("choose");
	for(var i=0;i<chooses.length;i++){
		control[i]=true;
	}
	}
    function  sum(control){
		var total=document.getElementById("total");
		var sum1=parseFloat(total.value);
		var chooses=document.getElementsByClassName("choose");
		for(var i=0;i<chooses.length;i++){
			if(control[i]==true){
			chooses[i].onclick=function(){
				control[i]=false
				var money=document.getElementById(this.name);
				var num=parseFloat(money.value);
				sum1+=num;
				total.value=sum1;
			}
		}
	}
	}
     function  reset(control){
			document.getElementById("reset").onclick=function(){
			var total=document.getElementById("total");
			var sum2=parseFloat(total.value);
			sum2=0;
			total.value=sum2;
			sum(control)
		}
	}
	 window.onload=function(){
		    var control=new Array();
		    insert(control)
		    alert(control.length)
			sum(control)
			reset(control)
		}
</script>
<META http-equiv=Content-Type content="text/html; charset=windows-1252">
<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
<BODY vLink=#ffcc33 aLink=#ffcc33 link=#993333 bgColor=#FFFFCC leftMargin=0 
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
      size=1>&nbsp;&nbsp;<%=string%>&nbsp;&nbsp;</FONT></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=748 border=0 height="515">
  <TBODY>
  <TR>
    <TD vAlign=middle width=170 height="52" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
      <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; <a href = "/SeafoodMarket_Manager/Servletmain"><font color = "#993333">Income management</font></a></font>
      </b>
    </TD>
    <TD vAlign=top width=567 height="291" rowspan="7">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <form method="POST" action="/SeafoodMarket/insertbillitemservlet">
    <input type="hidden" name="venderid" value="${venderid}">
      <!--webbot bot="SaveResults" u-file="E:\ij&#39033;&#30446;1\UI\_private\form_results.txt" s-format="TEXT/CSV" s-label-fields="TRUE" startspan --><input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" endspan i-checksum="43374" --><p align="center"><b><font color="#993333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bill
      date:02/25/2004&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vendor:"${venderid}"</font></b></p>
      <div align="center">
        <center>
        <table border="1" width="80%" bordercolor="#800000">
          <tr>
            <td width="50%" bgcolor="#FDCC64">
              <p align="center"><b><font color="#800000">Department Name</font></b></td>
            <td width="50%" bgcolor="#FDCC64">
              <p align="center"><b><font color="#800000">Amount</font></b></td>
            <td width="50%" bgcolor="#FDCC64">
              <p align="center"><font color="#800000"><b>Confirm</b></font></td>
          </tr>
 <%
	int number=0;
	int sum=0;
%>
<c:forEach items="${deptlist}" var="dept">
<%  
	String textname="money"+number;
	String radioname="box"+number;
	number++;
%>
<tr><td width="50%" align="center">${dept.dept_name}</td><td width="50%" align="center"><input id="<%=radioname%>" type="text" name="<%=textname%>"></td><td width="50%" align="center"><input class="choose" type="radio" name="<%=radioname%>" value="<%=number%>"></td></tr>
</c:forEach>
            <td width="50%" align="center" bgcolor="#FDCC64">sum</td>
            <td width="50%" align="center" bgcolor="#FDCC64"><input id="total" type="text" name="sum" value="0"></td>
            <td width="50%" align="center" bgcolor="#FDCC64">&nbsp;</td>
          </tr>
        </table>
        </center>
      </div>
      <p align="center"><font color="#993333"><b>&nbsp;&nbsp;
      </b></font><input type="submit" value="Submit" name="submit" style="color: #800000; font-weight: bold; background-color: #FDCC64">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" value="Reset" id="reset" style="color: #800000; font-weight: bold; background-color: #FDCC64"></p>
    </form>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="52" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; <a href="/SeafoodMarket/MainServlet"><font color = "#993333">Dept management</font></a></font></font>
    </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="52" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp; Report management</font>
    </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="52" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/findservlet"><font color="#993333" >Vendor management</a> </font>
    </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="52" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/venderselectservlet"><font color="#993333" >Bill management</a></font>
    </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="53" bgcolor="#FDCC64" bordercolor="#993333" bordercolorlight="#800000" align="right">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/html/billpaymentjsp.jsp"><font color="#993333" >Bill Payment</a></font></b>
    </b>
    </TD>
  </TR>
  <TR>
    <TD vAlign=middle width=170 height="53" bgcolor="#FDCC64" align="center">
    <p align="left"><b><font color="#993333" size="3">&nbsp;&nbsp;<a href = "/SeafoodMarket/jsp/backup.jsp"><font color="#993333" > Backup</font></a>
    </b>
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
      </FORM>
  </TBODY>
</TABLE>
<TD vAlign=top align=middle colSpan=3><IMG height=1 alt="" 
	      src="/SeafoodMarket/imgs/dot_clear.gif" width=1 
		  border=0><BR><FONT face=Verdana,Arial,Helvetica size=1>copyright ?004
	      Captain Fresh Seafood Supermarket<BR>designed and programmed by <a href="http://it.neworiental.org/" target="_blank">neworiental</a></FONT>
		  </FORM>
			 </TD></tr>
</center>
      </BODY></HTML>
