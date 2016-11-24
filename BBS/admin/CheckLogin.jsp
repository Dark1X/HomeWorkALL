<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>

<%@ page errorPage="ShowError.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理登录</title>
</head>
<body>

<jsp:useBean id="con" class="database.SQL" scope="session" />
<%

request.setCharacterEncoding("UTF-8");  
response.setCharacterEncoding("UTF-8");  
response.setContentType("text/html; charset=utf-8");  
//防止出现乱码

Connection conn=con.getConnection();//连接数据库
  
  
  String sql="select * from admin where adminemail=?";
  
 PreparedStatement st = conn.prepareStatement(sql);

 String AdminEmail = request.getParameter("UserEmail");
 String Pwd = request.getParameter("UserPwd");
  
 if (AdminEmail==null|| AdminEmail.equals("")||  Pwd==null ||Pwd.equals("")){

          response.sendRedirect("index.jsp"); 

 }else{
	 
st.setString(1, AdminEmail);
 
 ResultSet rs=st.executeQuery();
  String AdminID ="";
   String AdminPwd ="";
   String AdminName ="";

   
 while(rs.next()){
	 AdminID=rs.getString("id");
	AdminPwd=rs.getString("adminpasswd");
	AdminName=rs.getString("adminname");

 }
 

	
 if(Pwd.equals(AdminPwd)){
	  
	 out.println("登录成功");
	 session.setAttribute("AdminID", AdminID);
	 
	 session.setAttribute("AdminEmail", AdminEmail);
	 
	 session.setAttribute("AdminName", AdminName);
	 
	
	 response.sendRedirect("user.jsp");
	 
}else{
	
	response.sendRedirect("index.jsp");
 //<jsp:forward page="./login.jsp"></jsp:forward>
	 
 
 }
 rs.close();	 
 }
 
 st.close();
 conn.close();
  %>

</body>
</html>