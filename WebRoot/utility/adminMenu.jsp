<%@ page contentType="text/html; charset=gb2312" language="java" import="java.util.*,bean.CartInf" errorPage="" %>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/body.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {font-size: 12pt}
.STYLE3 {font-size: 14px}
-->
</style>

<td width="19%" height="731" bgcolor="#D1D7D7" />  

	 	 <% GregorianCalendar date=new GregorianCalendar();%>
	 
     <div class="relatedLinks"> 
      <h3 class="abc STYLE1" >管理员,欢迎回来!</h3>
	  <p>今天是<%= date.get(Calendar.MONTH)+1 %>月<%= date.get(Calendar.DAY_OF_MONTH) %>日</p> 
	  
</div>
	   
	<div id="sectionLinks"> 
	  <div align="center">
	  	  <span class="abc STYLE3"><a href="admin.jsp">订单管理</a> 
          <a href="customerManage.jsp">用户管理</a>
          <a href="bookManage1.jsp">书籍管理</a>
          <a href="AdminExit">离开书店</a> </span></div>
</div>
    <div id="advert"> 
      <p align="center"><img src="source/logo.gif" alt="" width="128" height="49" align="middle" /> This site is from Shaking Star Studio.</p>
    </div> 
	</td>

	  
	  
	  