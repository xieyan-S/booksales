<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.util.*,java.io.*,bean.StrClass,bean.CartInf" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�޸�������ɾ��</title>
</head>

<body>
<%
	Vector list=(Vector)session.getAttribute("cartList");
   		String errInf=" ";
   		String address="";
   		int n=list.size();
		for(int i=0;i<n;i++) {
			
			/* �жϹ��ﳵ������ͼ�������Ҫ�޸� */
			CartInf cart=(CartInf)list.elementAt(i);
			String id=cart.getBookId();
			if(request.getParameter(id)!=null) {  
				
				StrClass str = new StrClass(request.getParameter(id));
				if(str.isNum()){
					int num=Integer.parseInt(request.getParameter(id)); 
					if(num==0){
				    	list.removeElementAt(i);   // ���ͼ�������Ϊ0,��ӹ��ﳵ��ɾȥ����ͼ��
					} else {
				    	cart.setBookNum(num);      // ���¹��ﳵ�и���ͼ�������
				    	list.setElementAt(cart,i); // �ñ�����µ����ﳵ��
					}
				} else {
					errInf="�����޸�Ԥ��������ʱ������Ȼ����";
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
