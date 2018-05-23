<%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/21
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>get Chinese parameter</title>
</head>
<body>
<%
    String rawQueryStr = request.getQueryString();
    out.println("the raw string is :" + rawQueryStr + "<hr/>");
    String queryStr = java.net.URLDecoder.decode(rawQueryStr, "UTF-8");
    out.println("the decode string is :" + queryStr + "<hr/>");
    String[] paramPairs = queryStr.split("&");
    for (String paramPair : paramPairs) {
        out.println("every parameter name is :" + paramPair + "<br/>");
        String[] nameValue = paramPair.split("=");
        out.println(nameValue[0] + "'s value is :" + nameValue[1] + "<hr/>");
    }
%>
</body>
</html>
