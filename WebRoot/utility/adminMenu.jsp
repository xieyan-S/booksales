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
      <h3 class="abc STYLE1" >����Ա,��ӭ����!</h3>
	  <p>������<%= date.get(Calendar.MONTH)+1 %>��<%= date.get(Calendar.DAY_OF_MONTH) %>��</p> 
	  
</div>
	   
	<div id="sectionLinks"> 
	  <div align="center">
	  	  <span class="abc STYLE3"><a href="admin.jsp">��������</a> 
          <a href="customerManage.jsp">�û�����</a>
          <a href="bookManage1.jsp">�鼮����</a>
          <a href="AdminExit">�뿪���</a> </span></div>
</div>
    <div id="advert"> 
      <p align="center"><img src="source/logo.gif" alt="" width="128" height="49" align="middle" /> This site is from Shaking Star Studio.</p>
    </div> 
	</td>

	  
	  
	  