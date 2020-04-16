<%@ page contentType="text/html; charset=gb2312" language="java" import="java.util.*,java.sql.*,bean.DBClass,bean.CartInf" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>用户资料</title>
<link href="source/bookshop.css" rel="stylesheet" type="text/css">
<jsp:include page="utility/scriptFunction.jsp" />
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/body.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE8 {color: #000099; font-size: 12;}
.STYLE14 {font-size: 12px}
.STYLE15 {color: #666666}
-->
</style>
</head>
<body onmousemove="closesubnav(event);"> 
<div id="masthead">
<jsp:include page="utility/siteName.jsp" />
<jsp:include page="utility/navigation.jsp" />
</div> 

<div id="pagecell1"> 


   <div id="breadCrumb"> 
          <table width="100%" border="0">
         <tr>
           <% String requestURL= request.getRequestURI();
		   	  String param=request.getQueryString(); 
			  String hidAddr="MenuHidden?jspURL=" + requestURL +"&param="+ param ;
			  String showAddr="MenuShow?jspURL=" + requestURL +"&param="+ param ; %>
		   <td width="211"><a href=<%= hidAddr %> align="left">隐藏</a> / <a href=<%= showAddr %>>显示</a> </td>
           <td width="516"><div align="right"><a href="userLogin.jsp"align="right">登陆</a> | <a href="userRegister.jsp">新用户注册</a> | <a href="adminLogin.jsp">管理员入口</a></div></td>
        </tr>
       </table>   
  </div> 
   <table width="100%" border="0">
  <tr valign="top">
  <% if(session.getAttribute("hidden")==null){ %>
   
   
   
   <jsp:include page="utility/menu.jsp" />
   
   
   
   <% } %>

    <td width="81%" > 
    
	
	<div class="book">      
	 
	 <table width="100%" border="0" >
    <tr>
      <td height="5" background="source/glbnav_background.gif" 

bgcolor="#FFFFFF" >&nbsp;</td>
    </tr>
    <tr>
      <td height="1" bgcolor="#FFFFFF"  >
       
          
		  
		  
		  <% if(session.getAttribute("cartList")==null) { %>
		  目前您的购物车是空的
		  <% } else { 
		     Vector list=(Vector)session.getAttribute("cartList");
			 int n=list.size(); %>
		  <div align="center">
             <table width="100%" border="0">
			<tr>
			<td width="17%" class="abc"><div align="center" class="abc">书名</div></td>
				<td width="18%" class="abc"><div align="center" class="abc">作者</div>				  <div align="center"></div></td>
				<td width="10%" class="abc"><div align="center" class="abc">单价</div></td>
				<td width="10%" class="abc"><div align="center" class="STYLE8 STYLE14 STYLE15">数量</div></td>
				<td width="25%" class="abc"><div align="center" class="STYLE8 STYLE14 STYLE15">修改预定的数量</div></td>
				<td width="20%" class="abc" ><div align="center" class="STYLE8 STYLE15 STYLE14">删除</div></td>
			</tr>
			<tr>
			  <td colspan="6"><hr></td>
			  </tr>
		  <%  float money=0;
		  	for(int i=0;i<n;i++) {
			   CartInf cart=(CartInf)list.elementAt(i);
			   String query="SELECT bookname,author,price FROM book WHERE id="
			                  + (String)cart.getBookId();
			   DBClass db=new DBClass();
			   db.connect();
			   ResultSet resultset=db.executeQuery(query);
			   resultset.next();
			   String price=resultset.getString("price");
			   money+=Float.parseFloat(price)*cart.getBookNum();
			 %>
              <tr>
                <td class="abc" ><div align="center"><%=resultset.getString("bookname") %></div></td>
				<td class="abc" ><div align="center"><%=resultset.getString("author") %></div>				  <div align="center"></div></td>
				<td class="abc" ><div align="center">&yen;<%= price %></div></td>
				<td class="abc" ><div align="center"><%=cart.getBookNum() %></div></td>
				<td class="abc" ><form name="form1" method="post" action="ChangeOrder_do.jsp">
				  <div align="center">我要
				      <input name=<%=(String)cart.getBookId()%> type="text" value=<%=cart.getBookNum()%> size="3">
				      本
                      <input type="submit" name="Submit" value="修改">
                    </div>
				</form>			  </td>
              <td class="abc"><form name="form2" method="post" action="ChangeOrder_do.jsp">
                <div align="center">
                  <input type="hidden" name=<%=(String)cart.getBookId()%> value="0">
                  <label>
                  <input type="image" name="imageField" src="source/DELETE_01.GIF">
                  </label>
                </div>
              </form></td>
			  </tr>
              <%   db.closeConnection();
			     
			  } 
			 %>
			  <tr>
                <td colspan="6"><hr></td>
                </tr>
			  <tr>
			    <td colspan="4">
				  <div align="left">共计人民币<%= money %>元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  <% //String submitURL="SubmitOrder?money="+Float.toString(money); %>
				   <% String submitURL="SubmitOrder.jsp?money="+Float.toString(money); %>
				  <a href=<%= submitURL %>><img src="source/car_icon_10.gif" width="75" height="60" border="0"></a></div></td>
				 
			    <td colspan="2" class="errInf">
				<form name="form3" method="post" action="EmptyCart_do.jsp">
                <div align="center">
                              <label>
                  <input type="image" name="imageField" src="source/car_icon_01.gif">
                  </label>
                </div>
              </form>
			
			      <div align="right">
			          <% if(request.getAttribute("errInf")!=null){ %>
                      <%= (String)request.getAttribute("errInf") %>
                      <% } %>
			      </div></td>
			    </tr>
            </table>
			    </div>
	        <% } %>
	 
	 
	 
	 
	 
	 
	  </td>
    </tr>
    <tr>
      <td height="2" background="source/glbnav_background.gif" 

bgcolor="#FFFFFF" >&nbsp;</td>
    </tr>
  </table>
	 
	</div> 

	
	
	</td>
  </tr>
</table>
<jsp:include page="utility/copyRight.jsp" />
</div> 
<br> 
<jsp:include page="utility/scriptMenuitem.jsp" /> 
</body>
</html>


