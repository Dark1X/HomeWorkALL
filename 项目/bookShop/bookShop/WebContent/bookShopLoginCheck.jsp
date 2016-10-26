<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>在线购书-数据处理</title>
</head>
<body bgcolor="red">


<jsp:useBean id="user" scope="session" class="sccc.soft1532.UserInfoBean" />

<jsp:setProperty property="*" name="user"/>

<%
if(user.getEmail()==null||user.getPasswd()==null){

%>
<script type="text/javascript">
alert("邮箱或密码不能为空。。。");
</script>
<jsp:forward page="index.htm" />

<%
}else{
%>

<jsp:forward page="bookShop.jsp">
<jsp:param value="<%=user.getEmail() %>" name="userEmail"/>
</jsp:forward>
<%}%>

</body>
</html>