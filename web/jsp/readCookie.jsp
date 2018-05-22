<%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/21
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>It's a reading cookie demo</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    for (Cookie cookie: cookies) {
            out.print(cookie.getValue());
    }
%>
</body>
</html>
