<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/21
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request the sencond process</title>
</head>
<body>
<%
    String bal = request.getParameter("balance");
    double money = Double.parseDouble(bal);
    List<String> info = (List<String>) request.getAttribute("info");
    for (String tmp : info) {
        out.println(tmp + "<br>");
    }
    out.println("draw money:" + money + "yuan");
    out.println("your account decrease:" + money + "yuan");
%>
</body>
</html>
