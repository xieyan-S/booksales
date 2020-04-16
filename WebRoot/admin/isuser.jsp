<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
                
	Class.forName("com.mysql.jdbc.Driver");  //载入驱动程序
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booksales?useUnicode=true&characterEncoding=utf8","root","123456");  //连接数据库
	
	String sql = "select * from user where name=?";
	
	PreparedStatement pstmt =con.prepareStatement(sql);  //创建PreparedStatement对象
	pstmt.setString(1, name);
	ResultSet rs=pstmt.executeQuery();




//处理运行结果

if(rs!=null){//有重复
	con.close();
	response.sendRedirect("useradd.jsp");
}
else
{
	con.close();
	request.getRequestDispatcher("useradd_do.jsp").forward(request, response);
}

%>