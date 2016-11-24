<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<%@ page errorPage="ShowError.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新</title>
</head>
<body>

<jsp:useBean id="con" class="database.SQL" scope="session" />
<%

request.setCharacterEncoding("UTF-8");  
response.setCharacterEncoding("UTF-8");  
response.setContentType("text/html; charset=utf-8");  
//防止出现乱码

Connection conn=con.getConnection();//连接数据库
  

 String sql="DELETE FROM topic WHERE id=?;";
 PreparedStatement st = conn.prepareStatement(sql);
 
 
 String TicId = request.getParameter("id");

 //int id = Integer.parseInt(request.getParameter("id"));
 
//String id = request.getParameter("id");
 
 

 st.setString(1, TicId);

 st.executeUpdate();
 
 st.close();
 conn.close();
  %>
 <h1>修改成功！</h1> 
<% response.sendRedirect("mytopic.jsp"); %>
</body>
</html>