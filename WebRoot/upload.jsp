<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.all.min.js"> </script>
	<script type="text/javascript" charset="utf-8" src="./ueditor/lang/zh-cn/zh-cn.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="upload_do.jsp" method="post" enctype="multipart/form-data">
    <p>文件名称:<input type="file" name="file1" size="20" maxlength="80"></p>
    <p><input type="submit" value="上传"><input type="reset" value="重置"></p>
    </form>
    
    <form action="editor_do.jsp" method="post" id="myform" name="myform">
    	<%String content="请输入内容"; %>
			<script id="content" name="content" type="text/plain">
				<%=content%>
			</script>
			<script type="text/javascript">
		    var editor = UE.getEditor('content');
		</script>
		<input type="submit" value="上传">
    </form>
  </body>
</html>
