<%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/21
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>collect the parameter form</title>
</head>
<body>
<form id="form1" method="post" action="/aa">
user name:<br>
<input type="text" name="name"><br/><hr/>
gerder:<br/>
man:<input type="radio" name="gender" value="man">
women:<input type="radio" name="gender" value="women"><hr/>
the favourite color:<br/>
red:<input type="checkbox" name="color" value="red">
green:<input type="checkbox" name="color" value="green">
blue: <input type="checkbox" name="color" value="blue">
<hr/>
where are you form:<br>
<select name="country">
    <option value="China">China</option>
    <option value="America"> America></option>
    <option value="Russia">Russia</option>
</select><hr/>
<input type="submit" value="提交">
<input type="reset" value="重置">
</form>
</body>
</html>
