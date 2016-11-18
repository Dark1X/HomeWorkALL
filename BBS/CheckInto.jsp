<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page errorPage="ShowError.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>发帖插入数据</title>
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
  
  
  String sql="INSERT INTO topic (title, content, username,userid) VALUES (?, ?, ?,?);";
  
 PreparedStatement st = conn.prepareStatement(sql);

 String Title = request.getParameter("title");
 String Content = request.getParameter("content");
 
 String Username = session.getAttribute("SqlUserName").toString();
 String SqlUserID = session.getAttribute("SqlUserID").toString();
 
 
 String UserEmail = session.getAttribute("UEmail").toString();//更加严格的判断用户是否登录
 
 
 
 if (Title==null|| Content==null ||
 Title.equals("")|| Content.equals("") ||
 UserEmail==null || UserEmail.equals("") || Username==null ||Username.equals("")|| SqlUserID.equals("")
 )
 {
	 
	 response.sendRedirect("user.jsp"); 
	 
}else{
	
	st.setString(1, Title);
	 st.setString(2, Content);
	 st.setString(3, Username);
	 st.setString(4, SqlUserID);

	 
	   st.executeUpdate();
	   
	   response.sendRedirect("user.jsp"); 
	 
}

 
 st.close();
 conn.close();
 
  %>


</body>
</html>