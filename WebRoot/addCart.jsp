<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>购书</title>
<link href="source/bookshop.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>


<body>
<div id="pagecell1">
    <div align="center">



			<form name="form" method="post" action="addCart_do.jsp">
				<p>
					<%
						if (request.getAttribute("errInf") != null) {
					%>
					<span class="errInf"><%=(String) request.getAttribute("errInf")%></span>

					<%
						}
					%>
					&nbsp;
				</p>
				<p class="abc">
					我 要 <input name="bookNum" type="text" id="bookNum" value="1"
						size="3"> 本 <input name="bookId" type="hidden" id="bookId"
						value="<%=request.getParameter("bookId")%>">
				</p>
				<p>
					<input type="submit" name="Submit" value="提交">

				</p>
			</form>



		</div>
  </div>	
</body>
</html>
