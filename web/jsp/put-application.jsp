<%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/17
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application test</title>
</head>
<body>
<!--jsp sentence-->
<%!
    int i;
%>
<%
    application.setAttribute("counter", String.valueOf(++i));
    %>
<%=i%>
</body>
</html>
