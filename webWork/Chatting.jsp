<%@ page import="javax.naming.Name" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: weixinqiang
  Date: 2022/4/15
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chatting</title>
</head>
<body>
<!--构建框架 -->
<%
    Object Name = session.getAttribute("sessName");
%>
<p align="center">你的昵称为：<%=session.getAttribute("sessName")%></p>
<div style="left: 20%;position: absolute;top: 10%;">
    <%
        if(application.getAttribute("appDetail")!=null)
        {
            ArrayList list=(ArrayList)application.getAttribute("appDetail");
            for(int i=0;i< list.size();i++)
            {
                if(list.get(i)!=null)
                {
                    out.print(list.get(i));
                    out.println("<br>");
                }
            }
          //  out.println(application.getAttribute("appDetail"));
        }
    %>
</div>
<div style="left: 20%;position: absolute;top: 80%;">
    这里是div分区
    <script  type="text/javascript" id="chatDetail"></script>
    <form action="Chatting.jsp" method="post" >
        <label>
            <input name="chatDetail" type="text">
        </label>
        <input  type="submit" value="发送">
    </form>
    <form action="Chatting.jsp" method="post">
        <input name="chatDetail1"  type="hidden">
        <input  type="submit"  value="刷新聊天记录">
    </form>
    <%
        //判断是否创建一个新的对话
        ArrayList list=new ArrayList<>();
        if(application.getAttribute("appDetail")!=null)
        {
            list = (ArrayList) application.getAttribute("appDetail");
        }
        DateFormat df3 = DateFormat.getDateInstance(DateFormat.MEDIUM, Locale.CHINA);
        DateFormat df7 = DateFormat.getTimeInstance(DateFormat.MEDIUM, Locale.CHINA);
        String date= df3.format(new Date());
        String time=df7.format(new Date());
        String Detail=new String();
        Detail=(String)Name+"["+date+" "+time+"]"+request.getParameter("chatDetail");
        //判断对话内容是否为空
        if(request.getParameter("chatDetail")!=null)
        {
            list.add(Detail);
        }
        application.setAttribute("appDetail",list);
    %>
</div>
  </body>
</html>
<%!
    private void list(int i) {
    }
%>