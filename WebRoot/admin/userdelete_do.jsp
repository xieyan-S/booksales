<%@ page language="java" import="java.util.*,java.sql.*,entity.News,service.NewsService" pageEncoding="utf-8"%>

<%
String id=request.getParameter("id");
NewsService ps=new NewsService();
ps.delete(Integer.parseInt(id));

response.sendRedirect("usermanage.jsp");
%> 