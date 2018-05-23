<%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/23
  Time: 1:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome</title>
</head>
<body>
<h3>欢迎登录</h3>
<%=session.getAttribute("name")%>,欢迎登录！
</body>
</html>
