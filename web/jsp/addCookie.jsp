<%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/21
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>It's a adding cookie demo</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    Cookie cookie = new Cookie("username", name);
    cookie.setMaxAge(24 * 3600);
    response.addCookie(cookie);
%>
</body>
</html>
