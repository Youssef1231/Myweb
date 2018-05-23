<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/21
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>draw money request execute</title>
</head>
<body>
<%
    String bal = request.getParameter("balance");
    double money = Double.parseDouble(bal);
    if (money < 500) {
        out.println("we will offer you:" + money + "yuan<br>");
        out.println("you account decrease:" + money + "yuan");
    } else {
        List<String> info = new ArrayList<>();
        info.add("1111111");
        info.add("2222222");
        info.add("3333333");
        request.setAttribute("info", info);
%>
<jsp:forward page="second.jsp"/>
<% }%>
<img src="img.jsp">
</body>
</html>
