<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.util.*,java.io.*,bean.StrClass,bean.CartInf,bean.DBClass" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>提交订单</title>
</head>
<jsp:useBean id="db" class="bean.DBClass" scope="page" />
<body>
<%
	String toJsp="myCart1.jsp";
		
		
		String user=(String)session.getAttribute("userId");
		Vector list=(Vector)session.getAttribute("cartList");

		int key=0;
		String id="";
		String date="";
		
		/* 获取订单总金额 */
		String totalMoney=request.getParameter("money");
		
		/* 获取订单提交日期 */
		GregorianCalendar d=new GregorianCalendar();
		date=Integer.toString(d.get(Calendar.YEAR))+"-"
    		+Integer.toString(d.get(Calendar.MONTH)+1)+"-"
			+Integer.toString(d.get(Calendar.DAY_OF_MONTH));
		int n=list.size();
		
		/* 更新数据库 */
		String query="SELECT id FROM userorder";
		/* DBClass db=new DBClass(); */
		db.connect();
		ResultSet resultset=db.executeQuery(query);
		try{
			while(resultset.next()){
				key=Integer.parseInt(resultset.getString("id"));
				key++;
			}
			id=Integer.toString(key);
			String command="INSERT INTO userorder VALUES("+id+","+user+","+date+","+totalMoney+")"; 
			db.executeUpdate(command); 
        	for(int i=0;i<n;i++){
	      		CartInf cart=(CartInf)list.elementAt(i);
	       		query="SELECT price FROM book WHERE id="
			                  + (String)cart.getBookId();;
		   	resultset=db.executeQuery(query);
		  	resultset.next();
		   	float money=cart.getBookNum()*Float.parseFloat(resultset.getString("price"));
		  	command="INSERT INTO orderlist VALUES("+id+","+user+","+cart.getBookId()+","+Integer.toString(cart.getBookNum())+","+Float.toString(money)+")";
           		db.executeUpdate(command);
           		
			}
			db.closeConnection();
		}catch(SQLException sqle){
			    System.err.println(sqle);
		}
   		session.removeAttribute("cartList");
   		
		response.sendRedirect(toJsp);
	    response.setHeader("refresh","1;url="+toJsp);

	
%>
</body>
</html>
