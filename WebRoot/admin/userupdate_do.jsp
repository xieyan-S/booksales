<%@ page language="java" import="java.util.*,java.sql.*,entity.News,service.NewsService" pageEncoding="utf-8"%>

<%
//表单参数获取
request.setCharacterEncoding("utf-8");

News pro=new News();
pro.setId(Integer.parseInt(request.getParameter("id"))); 
pro.setName(request.getParameter("name")); 
pro.setPassword(request.getParameter("password")); 

NewsService ps=new NewsService();
ps.update(pro);


response.sendRedirect("usermanage.jsp");
%> 