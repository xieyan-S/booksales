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
	  <p class="abc STYLE4">�ʺ�:
      <input name="id" type="text" id="id" size="12">
	  </p>
	  <p class="abc STYLE4">����:
      <input name="password" type="password" id="password" size="12">
      </p>
	  <p align="center">
	    <input type="submit" name="Submit" value="��½">
</p>
	  </form>
</div>
	  <% } else { 
	 	 GregorianCalendar date=new GregorianCalendar();%>
	 
     <div class="relatedLinks"> 
      <h3 class="STYLE3" ><%= (String)session.getAttribute("userId") %>����ӭ������!</h3>
	  <p class="STYLE2">������<%= date.get(Calendar.MONTH)+1 %>��<%= date.get(Calendar.DAY_OF_MONTH) %>��</p> 
</div>
	   <% 
	   }%>
	<div id="sectionLinks"> 
	  <div align="center">
	  	  <span class="STYLE2"><a href="myCart.jsp">�ҵĹ��ﳵ</a> 
          <a href="userOrder.jsp">��ʷ����</a>
          <a href="changePassword.jsp">�޸�����</a>
          <a href="userInf.jsp">��������</a>
          <a href="UserExit">�뿪���</a></span></div>
</div>
    <div id="advert"> 
      <p align="center"><img src="source/logo.gif" alt="" width="128" height="49" align="middle" /> This site is from Shaking Star Studio.</p>
</div> 
	</td>

	  
	  
	  