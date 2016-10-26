<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./css/css.css" />
<link rel="stylesheet" href="./css/bookShopCheck.css" />
<title>已购书信息</title>
</head>
<body>
	<div id="container">
         <div id="container2">
   <jsp:useBean id="cart" scope="session" class="sccc.soft1532.BookShopBean" />
   <jsp:setProperty property="*" name="cart"/>
   <%   
            cart.processRequest(request);
   %>
<br><font size="6" color="red">您已选购的书有：</font>
<ol>
<font size="4" color="#228B22">
<%
          String[] items=cart.getItems();
           for (int i=0;i<items.length;i++)
           
              {
%>
<hr>
<li><%=items[i] %></li>


        <%
                } 
        %>
        </font>
        <hr>
        <%@include file="./bookShop2.jsp" %>
        <hr>
</ol>
<br>
<hr>
</div>

</div>



</body>
</html>