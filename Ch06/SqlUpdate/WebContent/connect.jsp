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
//request.setCharacterEncoding("utf-8");
//response.setContentType("text/jsp;charset=utf-8");
Class.forName("com.mysql.jdbc.Driver");
String connectSQL="jdbc:mysql://localhost:3306/jsp";
Connection conn=DriverManager.getConnection(connectSQL,"root","");
  
 String sql="select * from student where id=?";
 PreparedStatement st = conn.prepareStatement(sql);

 String id = request.getParameter("id");
 st.setString(1, id);
 
 ResultSet rs=st.executeQuery();

 String name = "";
 String major = "";
 
 while(rs.next()){
	 id = rs.getString("id");
	 name = rs.getString("name");
	 major = rs.getString("major");
	
 }
 

 st.close();
 conn.close();
  %>
  <center>
<form action="./update.jsp" class="form-inline" role="form" method="post">


<div class="form-group">
    <div class="input-group">
      <div class="input-group-addon">学号:</div>
      <!-- disabled -->
      <input class="form-control" name="id" type="text" value="<%=id %>" readonly="readonly">
   <br>
    </div>
  </div>
  <br>
<div class="form-group">
    <div class="input-group">
       <div class="input-group-addon">姓名:</div>
      <input class="form-control" type="text" name="name" placeholder="<%=name %>" value="<%=name %>" />     
    </div>
  </div>
  <br>
  <div class="form-group">
    <div class="input-group">
       <div class="input-group-addon">专业:</div>
      <input class="form-control" type="text" name="major" placeholder="<%=major %>" value="<%=major %>" />     
    </div>
  </div>

<br>

<button type="submit" class="btn btn-danger">提交</button>
</center>
  </form>
</body>
</html>