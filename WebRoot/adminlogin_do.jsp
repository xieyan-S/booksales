<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
//连接数据库
Class.forName("com.mysql.jdbc.Driver");  //载入驱动程序
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booksales?useUnicode=true&characterEncoding=utf8","root","123456");  //连接数据库

//发送SQL语句
String sql = "select * from admin where admin=? and apple=?";
String admin=request.getParameter("admin");
String apple=request.getParameter("apple");
PreparedStatement pstmt = null ;  //创建PreparedStatement对象
pstmt = con.prepareStatement(sql) ;  //发送sql语句
pstmt.setString(1,admin) ;
pstmt.setString(2,apple) ;

//执行SQL语句
ResultSet rs=pstmt.executeQuery();

//处理运行结果
String tojsp="";

if(rs.next()){
	session.setAttribute("admin", admin);
	tojsp="admin/usermanage.jsp";
}
else
{
	tojsp="adminlogin.jsp";
}

con.close();
response.sendRedirect(tojsp);
%>