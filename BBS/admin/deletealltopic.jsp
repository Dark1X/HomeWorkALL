<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<%@ page errorPage="ShowError.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除用户所有帖子</title>
</head>
<body>

<jsp:useBean id="con" class="database.SQL" scope="session" />
<%

request.setCharacterEncoding("UTF-8");  
response.setCharacterEncoding("UTF-8");  
response.setContentType("text/html; charset=utf-8");  
//防止出现乱码

Connection conn=con.getConnection();//连接数据库

//删除某个用户的所有帖子


 String sql="DELETE FROM topic WHERE userid=?;";
 PreparedStatement st = conn.prepareStatement(sql);
 

 
 String TicUserId = request.getParameter("id");

 
 

 st.setString(1, TicUserId);

 st.executeUpdate();
 
 st.close();
 conn.close();
  %>
 <h1>修改成功！</h1> 
<% response.sendRedirect("user.jsp"); %>
</body>
</html>