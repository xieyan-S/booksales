<%@ page contentType="text/html; charset=gb2312" language="java" 
import="com.jspsmart.upload.SmartUpload,java.sql.*,entity.News,service.NewsService" %>
 <%
 request.setCharacterEncoding("utf-8");
 
  String[] fileName={""};  
  SmartUpload mySmartUpload = new SmartUpload();//实例化
  try {
   mySmartUpload.initialize(config, request, response);//初始化
   mySmartUpload.upload();
   for (int i = 0; i < mySmartUpload.getFiles().getCount(); i++) {
    com.jspsmart.upload.File myfile = mySmartUpload.getFiles().getFile(i);
    fileName[i] = myfile.getFileName();    
    mySmartUpload.save("/upload");  //将文件上传到upload文件夹
   }
  } catch (Exception e) {  }
  
  String name =  mySmartUpload.getRequest().getParameter("name");
  String password =  mySmartUpload.getRequest().getParameter("password");
  String content = mySmartUpload.getRequest().getParameter("content");
  
  
News pro=new News();
pro.setName(name); 
pro.setPassword(password); 
pro.setPhoto(fileName[0]); 
pro.setRemark(content); 

NewsService ps=new NewsService();
ps.insert(pro);
response.sendRedirect("usermanage.jsp") ;
%>
