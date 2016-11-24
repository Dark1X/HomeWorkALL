<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page errorPage="ShowError.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理登录</title>

</head>
<body>
<table class="table table-hover">
<tr>
<td  class="success"><h4><b>用户ID</b></h4></td>
<td  class="success"><h4><b>用户昵称</b></h4></td>
<td  class="success"><b><h4>清空帖子</h4></b></td>
<td  class="success"><b><h4>删除用户(永久)</h4></b></td>
</tr>

<jsp:useBean id="con" class="database.SQL" scope="session" />
<%

request.setCharacterEncoding("UTF-8");  
response.setCharacterEncoding("UTF-8");  
response.setContentType("text/html; charset=utf-8");  
//防止出现乱码

Connection conn=con.getConnection();//连接数据库
  

String Username = session.getAttribute("AdminName").toString();//更加严格的判断用户是否登录
String UserID = session.getAttribute("AdminID").toString();//更加严格的判断用户是否登录

 
 if (Username==null|| UserID==null || Username.equals("")|| UserID.equals("")){%>

 <jsp:forward page="./index.jsp"></jsp:forward>
 
 
<% 
}else{
	 
	  String sql="select * from user";
	  
	 PreparedStatement st = conn.prepareStatement(sql);


	 
	 ResultSet rs=st.executeQuery();
	  String UserId ="";
	   String UserName ="";

	   
	 while(rs.next()){
		 UserId=rs.getString("id");
		 UserName=rs.getString("username");
	

	 //out.println("<td><a href='./connect.jsp?id="+rs.getInt("id")+"'>学号 </a></td>");
	 %>
	 

	<h3>
	<%
	out.println("<tr>");
	out.println("<td class='success'><code>"+UserId+"</code></td>");
	out.println("<td><code><a href='./showallpic.jsp?id="+UserId+"'>"+UserName+"</a></code></td>");
	out.println("<td  class='success'><code><a href='./deletealltopic.jsp?id="+UserId+"'>"+"清空帖子"+"</a></code></td>");
	out.println("<td  class='success'><code><a href='./deleteuser.jsp?id="+UserId+"'>"+"删除"+"</a></code></td>");

	out.println("</tr>");
	%>
	</h3>
	<%

	}


	 rs.close();
	 st.close();
	 conn.close();
 }
 

  %>

 </table>
</body>
</html>