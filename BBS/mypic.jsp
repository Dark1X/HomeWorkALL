<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page errorPage="ShowError.jsp" %>
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理登录</title>
</head>
<body>
<br>
<table class="table table-hover">
<!--<tr>
<td  class="success"><h4><b>标题</b></h4></td>
<br>
<td  class="success"><b><h4>发帖人</h4></b></td>
</tr>-->
<%

request.setCharacterEncoding("UTF-8");  
response.setCharacterEncoding("UTF-8");  
response.setContentType("text/html; charset=utf-8");  
//防止出现乱码



Class.forName("com.mysql.jdbc.Driver");
String connectSQL="jdbc:mysql://localhost:3306/soft";
Connection conn=DriverManager.getConnection(connectSQL,"root","");
  

String Username = session.getAttribute("SqlUserName").toString();//更加严格的判断用户是否登录
String UserID = session.getAttribute("SqlUserID").toString();//更加严格的判断用户是否登录

 
 if (Username==null|| UserID==null || Username.equals("")|| UserID.equals("")){%>

 <jsp:forward page="./login.jsp"></jsp:forward>
 
 
<% 
}else{
	
	String SqlUserID = session.getAttribute("SqlUserID").toString();
	
	  String sql="select * from topic where userid=?";
	
	   
	 PreparedStatement st = conn.prepareStatement(sql);

	 st.setString(1, SqlUserID);
	 
	 ResultSet rs=st.executeQuery();
	
	   String TopicTitle ="";
	   String TopicId ="";
	  
	   
	 while(rs.next()){
		 TopicTitle=rs.getString("title");
		 
		 TopicId=rs.getString("id");
		


	 //out.println("<td><a href='./connect.jsp?id="+rs.getInt("id")+"'>学号 </a></td>");
	 %>
	 

	<h3>
	<%
	out.println("<tr>");
	out.println("<td  class='success'><code><a href='./showcontent.jsp?id="+TopicId+"'>"+
	TopicTitle+"</a></code></td>");

	out.println("<td><a class='label label-danger' href='./CheckDelete.jsp?id="+TopicId+"'>"+"删除</a></td>");
	
	out.println("</tr>");


	%>
	</h3>
	<%

	}

	
	 st.close();
	 conn.close();
 }
 

  %>

 </table>
 <br>
  <br>
   <br>
    <br>
     <br>
</body>
</html>