<%@ page language="java" import="java.util.*,bean.CartInf,bean.StrClass" pageEncoding="UTF-8"%>
<%
/*往购物车中添加书籍*/
String toJsp="addCartSuccess.jsp";//跳转页面名
String bookId=request.getParameter("bookId");//获取书号
StrClass bookNum=new StrClass(request.getParameter("bookNum"));//获取数量

/*检测用户输入所需数量是否为整数*/
if(!bookNum.isNum()){
	request.setAttribute("errInf","*请输入自然数");
	toJsp="addCart.jsp";//跳转页面改为填图书数量那个页面
}else{
	Vector list=new Vector();//新建购物车
	if(session.getAttribute("cartList")!=null){//如果之前购物车不为空
		list=(Vector)session.getAttribute("cartList");//取出老的购物车
		session.removeAttribute("cartList");//清空session中老购物车
		for(int i=0;i<list.size();i++){//判断老购物车中是否已有此书
			CartInf cart=(CartInf)list.elementAt(i);
			if(bookId.equals(cart.getBookId())){//若老购物车已存在此书
				list.removeElementAt(i);//把此书从老购物车中删除
				break;
			}
		}
	}
	
	/*添加图书至购物车*/
	CartInf cart=new CartInf(bookId,bookNum.toInt());//实例化一个新的购物车对象cart
	list.addElement(cart);//把cart加到老购物车中
	session.setAttribute("cartList", list);//把最新的购物车放入session
	}
	response.setHeader("refresh","1;url="+toJsp);//页面跳转
%>