<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<%@ page errorPage="ShowError.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");  
response.setCharacterEncoding("UTF-8");  
response.setContentType("text/html; charset=utf-8");  
//防止出现乱码
Class.forName("com.mysql.jdbc.Driver");
String connectSQL="jdbc:mysql://localhost:3306/soft";
Connection conn=DriverManager.getConnection(connectSQL,"root","");

 String sql="DELETE FROM topic WHERE id=?;";
 PreparedStatement st = conn.prepareStatement(sql);
 

 
 String TicId = request.getParameter("id");


 
 

 st.setString(1, TicId);

 st.executeUpdate();
 
 st.close();
 conn.close();
  %>
 <h1>修改成功！</h1> 
<% response.sendRedirect("user.jsp"); %>
</body>
</html>