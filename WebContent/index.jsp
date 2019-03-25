<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML><HEAD><TITLE>Captain Fresh Seafood Supermarket : Welcome</TITLE>
<META http-equiv=Content-Type content="text/html; charset=windows-1252">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<SCRIPT language=javascript author=luxiaoqing>
<!--
function initArray(){for(i=0;i<initArray.arguments.length;i++)
this[i]=initArray.arguments[i];}var isnMonths=new initArray("January","February","March","April","May","June","July","August","September","October","November","December");
var isnDays=new initArray("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday");
today=new Date();
hrs=today.getHours();
min=today.getMinutes();
sec=today.getSeconds();
clckh=""+((hrs>12)?hrs-12:hrs);
clckm=((min<10)?"0":"")+min;clcks=((sec<10)?"0":"")+sec;clck=(hrs>=12)?"ÏÂÎç":"ÉÏÎç";
var stnr="";var ns="0123456789";var a="";
//-->
</SCRIPT>
</HEAD>
<BODY vLink=#ffcc33 aLink=#ffcc33 link=#993333 bgColor=#ffffff leftMargin=0 
topMargin=0 rightMargin=0 MARGINHEIGHT="0" MARGINWIDTH="0">
<center>
<TABLE cellSpacing=0 cellPadding=0 width=650 border=0>
  <TBODY>
  <TR>
    <TD width=172><IMG alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_top_left.jpg" 
      border=0 width="172" height="62"></TD>
    <TD width=253><IMG height=62 alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_top_mid.jpg" width=253 
    border=0></TD>
    <TD width=225><IMG height=62 alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_top_right.jpg" width=225 
      border=0></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=650 
background="/SeafoodMarket/imgs/top_band.gif" border=0>
  <TBODY>
  <TR>
    <TD align=right height=25><FONT face=Verdana,Arial,Helvetica 
      size=1>
<SCRIPT language=javascript>
function getFullYear(d){
yr=d.getYear();if(yr<1000)
yr+=1900;return yr;}
document.write(isnDays[today.getDay()]+","+isnMonths[today.getMonth()]+""+today.getDate()+","+getFullYear(today)+"");
</SCRIPT>
&nbsp;&nbsp;&nbsp;</FONT></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=650 border=0 height="134">
  <TBODY>
  <TR>
    <TD width=99 rowSpan=4 height="134"><IMG alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_mid_left.jpg" 
    border=0 width="99" height="183"></TD>
    <TD width=182 rowSpan=4 height="134"><IMG alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_mid_mid_left.jpg" 
      border=0 width="182" height="183"></TD>
    <TD width=160 rowSpan=4 height="134"><IMG alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_mid_mid_right.jpg" 
      border=0 width="160" height="183"></TD>
    <TD vAlign=top width=185 height="28"><IMG alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_mid_dropdown.jpg" 
      border=0 width="185" height="45"></TD>
    <TD width=24 rowSpan=4 height="134"><IMG height=183 alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_mid_right.jpg" width=24 
      border=0></TD></TR>
  <TR><FORM name=form1 action="/SeafoodMarket/LoginServlet" method=post>
    <TD vAlign=top width=185 height="27"><input type=text value="your username" size=15 style="color: #CA8F1F" name="username"> </TD>
  </TR>
  <TR>
    <TD vAlign=top width=185 height="27"><input type=password value="your password" size=17 style="color: #CA8F1F" name="password"></TD>
  </TR>
  <TR>
    <TD vAlign=top width=185 height="52" align="center">
      <BR><IMG height=1 alt="" 
      src="/SeafoodMarket/imgs/dot_clear.gif" width=1 
      border=0><BR>
        <%
  	String erorr = (String)request.getAttribute("kong");
  	if(erorr!=null)
  	{
  %>
  		<%=erorr%>
  		<%
  			}
  %><br><INPUT type=image alt=Go 
      src="/SeafoodMarket/imgs/go_button.gif" 
  border=0 width="43" height="23">
  			</TD>
  		</TR>
  	</TBODY>
  </TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=650 border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width=281><IMG height=132 alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_bot_left.jpg" width=281 
      border=0></TD>
    <TD vAlign=top width=160><IMG height=132 alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_bot_mid.jpg" width=160 
    border=0></TD>
    <TD vAlign=top width=209><IMG height=132 alt="Captain Fresh Seafood Supermarket" 
      src="/SeafoodMarket/imgs/home_bot_right.jpg" width=209 
      border=0></TD></TR>
  <TR>
    <TD vAlign=top align=middle colSpan=3><IMG height=1 alt="" 
      src="/SeafoodMarket/imgs/dot_clear.gif" width=1 
      border=0><BR><FONT face=Verdana,Arial,Helvetica size=1>copyright ?2004
      Captain Fresh Seafood Supermarket<BR>designed and programmed by <a href="http://it.neworiental.org/" target="_blank">neworiental</a></FONT>
      </FORM>
      </TD>
  </TR>
  </TBODY>
</TABLE>
</center>
      </BODY></HTML>

