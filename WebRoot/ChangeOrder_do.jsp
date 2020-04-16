<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.util.*,java.io.*,bean.StrClass,bean.CartInf" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>修改数量和删除</title>
</head>

<body>
<%
	Vector list=(Vector)session.getAttribute("cartList");
   		String errInf=" ";
   		String address="";
   		int n=list.size();
		for(int i=0;i<n;i++) {
			
			/* 判断购物车中哪种图书的数量要修改 */
			CartInf cart=(CartInf)list.elementAt(i);
			String id=cart.getBookId();
			if(request.getParameter(id)!=null) {  
				
				StrClass str = new StrClass(request.getParameter(id));
				if(str.isNum()){
					int num=Integer.parseInt(request.getParameter(id)); 
					if(num==0){
				    	list.removeElementAt(i);   // 如果图书的数量为0,则从购物车中删去该种图书
					} else {
				    	cart.setBookNum(num);      // 更新购物车中该种图书的数量
				    	list.setElementAt(cart,i); // 该本书更新到购物车中
					}
				} else {
					errInf="请在修改预定的数量时输入自然数！";
				}
				break;
			}
		}
		session.removeAttribute("cartList");
    	if(list.size()!=0) {
	    	session.setAttribute("cartList",list);
		}	
        request.setAttribute("errInf",errInf);
	    response.setHeader("refresh","1;url=myCart1.jsp");

	
%>
</body>
</html>
