<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page errorPage="ShowError.jsp" %>
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

 String sql="update user set username=?,email=?,passwd=? where id=?";
 PreparedStatement st = conn.prepareStatement(sql);
 
 int id = Integer.parseInt(session.getAttribute("SqlUserID").toString());
 
 String username = request.getParameter("username");
 String email = request.getParameter("email");
 String passwd = request.getParameter("passwd");
 //int id = Integer.parseInt(request.getParameter("id"));
 
//String id = request.getParameter("id");
 
 

 st.setString(1, username);
 st.setString(2, email);
 st.setString(3, passwd);
 st.setInt(4, id);

 st.executeUpdate();
 st.close();
 conn.close();
  %>
 <h1>修改成功！</h1> 
<% response.sendRedirect("userupdate.jsp"); %>
</body>
</html>