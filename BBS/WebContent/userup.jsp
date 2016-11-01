<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="./bootstrap/bootstrap.css" rel="stylesheet" type="text/css" />
<title>链接</title>
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
  
 String sql="select * from user where id=?";
 PreparedStatement st = conn.prepareStatement(sql);

 String SqlID = session.getAttribute("SqlID").toString();
 st.setString(1, SqlID);
 
 ResultSet rs=st.executeQuery();

 String username = "";
 String email = "";
 String passwd = "";
 
 while(rs.next()){
	 username = rs.getString("username");
	 email = rs.getString("email");
	 passwd = rs.getString("passwd");
	
 }
 

 st.close();
 conn.close();
  %>
  <center>
<form action="./update.jsp" class="form-inline" role="form" method="post">


<div class="form-group">
    <div class="input-group">
      <div class="input-group-addon">名字:</div>
      <!-- disabled 
      <input class="form-control" name="id" type="text" value="" readonly="readonly">
      -->
      <input class="form-control" name="username" type="text" value="<%=username %>" readonly="readonly">
   <br>
    </div>
  </div>
  <br><br>
<div class="form-group">
    <div class="input-group">
       <div class="input-group-addon">密码:</div>
      <input class="form-control" type="text" name="passwd" placeholder="<%=passwd %>" value="<%=passwd %>" />     
    </div>
  </div>
  <br><br>
  <div class="form-group">
    <div class="input-group">
       <div class="input-group-addon">邮箱:</div>
      <input class="form-control" type="text" name="email" placeholder="<%=email %>" value="<%=email %>" />     
    </div>
  </div>

<br><br>

<button type="submit" class="btn btn-danger">修改</button>
&nbsp;&nbsp;&nbsp;
<button type="reset" class="btn btn-danger">重置</button>
</center>
  </form>
</body>
</html>