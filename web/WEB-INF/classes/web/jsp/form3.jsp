<%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/21
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request3-form3</title>
</head>
<body>
<form id="form3" method="get" action="request3.jsp">
    user name:<br>
    <input type="text" name="name"><br/><hr/>
    gerder:<br/>
    man:<input type="radio" name="gender" value="man">
    women:<input type="radio" name="gender" value="women"><hr/>
    <input type="submit" value="提交">
    <input type="reset" value="重置">
</form>
</body>
</html>
