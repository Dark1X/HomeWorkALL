<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page errorPage="ShowError.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理注册</title>
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
  

  String sql="INSERT INTO user (username, email, passwd) VALUES (?, ?, ?);";
  
 PreparedStatement st = conn.prepareStatement(sql);
 String UserName = request.getParameter("username");
 String UserEmail = request.getParameter("email");
 String UserPwd = request.getParameter("passwd");
 
 if (UserName==null ||UserName.equals("")||UserEmail==null|| UserPwd==null || UserEmail.equals("")|| UserPwd.equals("")){
	 response.sendRedirect("register.jsp");
	 
}else{
 st.setString(1, UserName);
 st.setString(2, UserEmail);
 st.setString(3, UserPwd);
 
 st.executeUpdate();
 


 st.close();
 conn.close();
 response.sendRedirect("login.jsp");
 }
  %>


</body>
</html>