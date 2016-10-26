<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新</title>
</head>
<body>
<%
//request.setCharacterEncoding("utf-8");
//response.setContentType("text/jsp;charset=utf-8");
Class.forName("com.mysql.jdbc.Driver");
String connectSQL="jdbc:mysql://localhost:3306/jsp";
Connection conn=DriverManager.getConnection(connectSQL,"root","");

 String sql="update student set name=?,major=? where id=?";
 PreparedStatement st = conn.prepareStatement(sql);
 String name = request.getParameter("name");
 String major = request.getParameter("major");
 int id = Integer.parseInt(request.getParameter("id"));
//String id = request.getParameter("id");
 
 

 st.setString(1, name);
 st.setString(2, major);
 st.setInt(3, id);

 st.executeUpdate();
 st.close();
 conn.close();
  %>
 <h1>修改成功！</h1> 

</body>
</html>