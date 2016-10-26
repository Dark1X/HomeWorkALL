<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<table>
<%


Class.forName("com.mysql.jdbc.Driver");
String connectSQL="jdbc:mysql://localhost:3306/jsp";
Connection conn=DriverManager.getConnection(connectSQL,"root","");
int id = Integer.parseInt(request.getParameter("id"));
String sql = "select * from student where id = ?";
PreparedStatement st = conn.prepareStatement(sql);
st.setInt(1,id);
ResultSet rs = st.executeQuery();


while(rs.next()){
	out.print("ID号为：");
	out.print(rs.getInt("id"));
	out.print("<br/>");
	out.print("姓名为：");
	out.print(rs.getString("name"));
	out.print("<br/>");
	out.print("性别为：");
	out.print(rs.getString("sex"));
	out.print("<br/>");
	out.print("专业为：");
	out.print(rs.getString("major"));
}  
rs.close();
st.close();
conn.close();
%>
</table>
</body>
</html>