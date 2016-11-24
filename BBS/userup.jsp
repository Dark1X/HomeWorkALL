<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page errorPage="ShowError.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="./bootstrap/dist/bootstrap.css" rel="stylesheet" type="text/css" />

<title>链接</title>
</head>
<body>

<jsp:useBean id="con" class="database.SQL" scope="session" />
<%

request.setCharacterEncoding("UTF-8");  
response.setCharacterEncoding("UTF-8");  
response.setContentType("text/html; charset=utf-8");  
//防止出现乱码

Connection conn=con.getConnection();//连接数据库
  
 String sql="select * from user where id=?";
 PreparedStatement st = conn.prepareStatement(sql);

 String UserID = session.getAttribute("SqlUserID").toString();
 
 st.setString(1, UserID);
 
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
     
      <input class="form-control" name="username" type="text" value="<%=username %>" readonly="readonly">
       <!-- disabled  
      <input class="form-control" name="username" type="text" value="">-->
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
      <input class="form-control" type="text" name="email" placeholder="<%=email %>" value="<%=email %>" readonly="readonly" />     
    </div>
  </div>

<br><br>

<button type="submit" class="btn btn-success">修改</button>
&nbsp;&nbsp;&nbsp;
<button type="reset" class="btn btn-success">重置</button>

</center>
  </form>

</body>
</html>