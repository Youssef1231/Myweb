<%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/22
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>this is login demo start</title>
</head>
<body>
<%--print the error information--%>
<span style="color:red;font-weight: bold">
    <%
        if (request.getAttribute("err") != null) {
            out.println(request.getAttribute("err") + "<br>");
        }
    %>
</span>

<%--login form, the information will be submitted to a servlet--%>
Please input your name and password:
<form id="login" method="post" action="/login">
    user name: <input type="text" name="username"/><br/>
    password:<input type="password" name="pass"/><br/>
    <input type="submit" value="submit"/><br/>

</form>
</body>
</html>
