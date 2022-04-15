<%--
  Created by IntelliJ IDEA.
  User: weixinqiang
  Date: 2022/4/15
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
</head>
<body>
  <p>请输入昵称：</p><br>
  <form action="./index.jsp" method="post">
    <input type="text" name="UserName">
    <input type="submit" value="注册">
  </form>
  <%
    String Name=new String();
    Name=request.getParameter("UserName");
    session.setAttribute("sessName",Name);
  %>
<br>
<form action="Chatting.jsp" method="post">
  <input type="submit" value="进入">
</form>
</body>
</html>
