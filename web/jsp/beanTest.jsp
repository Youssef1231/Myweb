<%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/17
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java bean test</title>
</head>
<body>
<jsp:useBean id="p1" class="src.Person" scope="page"/>
<jsp:setProperty name="p1" property="name" value="crazyit.org"/>
<jsp:setProperty name="p1" property="age" value="24"/>
<jsp:getProperty name="p1" property="name"/>
<jsp:getProperty name="p1" property="age"/>
</body>
</html>