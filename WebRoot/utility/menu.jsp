<%@ page contentType="text/html; charset=gb2312" language="java" import="java.util.*,bean.CartInf" errorPage="" %>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/body.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE2 {font-size: 12px}
.STYLE3 {font-size: 18px}
.STYLE4 {font-size: 9px}
-->
</style>

<td width="19%" height="731" bgcolor="#D1D7D7" />  
<% if(session.getAttribute("userId")==null){ %>
<div class="relatedLinks"> 
      <p>&nbsp; </p>
	  <form name="form" method="post" action="UserLogin">
	  <p class="abc STYLE4">帐号:
      <input name="id" type="text" id="id" size="12">
	  </p>
	  <p class="abc STYLE4">密码:
      <input name="password" type="password" id="password" size="12">
      </p>
	  <p align="center">
	    <input type="submit" name="Submit" value="登陆">
</p>
	  </form>
</div>
	  <% } else { 
	 	 GregorianCalendar date=new GregorianCalendar();%>
	 
     <div class="relatedLinks"> 
      <h3 class="STYLE3" ><%= (String)session.getAttribute("userId") %>，欢迎您光临!</h3>
	  <p class="STYLE2">今天是<%= date.get(Calendar.MONTH)+1 %>月<%= date.get(Calendar.DAY_OF_MONTH) %>日</p> 
</div>
	   <% 
	   }%>
	<div id="sectionLinks"> 
	  <div align="center">
	  	  <span class="STYLE2"><a href="myCart.jsp">我的购物车</a> 
          <a href="userOrder.jsp">历史订单</a>
          <a href="changePassword.jsp">修改密码</a>
          <a href="userInf.jsp">个人资料</a>
          <a href="UserExit">离开书店</a></span></div>
</div>
    <div id="advert"> 
      <p align="center"><img src="source/logo.gif" alt="" width="128" height="49" align="middle" /> This site is from Shaking Star Studio.</p>
</div> 
	</td>

	  
	  
	  