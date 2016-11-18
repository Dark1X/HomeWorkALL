<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page errorPage="ShowError.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理登录</title>
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
  
  
  String sql="select * from user where email=?";
  
 PreparedStatement st = conn.prepareStatement(sql);

 String UserEmail = request.getParameter("UserEmail");
 String UserPwd = request.getParameter("UserPwd");
 
 st.setString(1, UserEmail);
 
 ResultSet rs=st.executeQuery();
  String SqlUserID ="";
   String SqlUserPwd ="";
   String SqlUserName ="";

   
 while(rs.next()){
	SqlUserID=rs.getString("id");
	SqlUserPwd=rs.getString("passwd");
	SqlUserName=rs.getString("username");

 }
 
 
 if (UserEmail==null|| UserPwd==null || UserEmail.equals("")|| UserPwd.equals("")){%>

 <jsp:forward page="./login.jsp"></jsp:forward>
 
 
<% 
}else{
	
 if(SqlUserPwd.equals(UserPwd)){
	  
	 out.println("登录成功");
	 session.setAttribute("SqlUserID", SqlUserID);//为了用户中心显示用户自己发的帖子
	 
	 session.setAttribute("UEmail", UserEmail);
	 
	 session.setAttribute("SqlUserName", SqlUserName);//为了显示发帖人
	 
	
	 response.sendRedirect("user.jsp");
	 
}else{
	
	response.sendRedirect("login.jsp");
 //<jsp:forward page="./login.jsp"></jsp:forward>
	 
 
 }
	 
 }
 
 st.close();
 conn.close();
  %>

</body>
</html>