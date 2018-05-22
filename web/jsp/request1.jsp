<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/21
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>get parameter from web form</title>
</head>
<body>
    <%
    Enumeration<String> headerNames = request.getHeaderNames();
    while (headerNames.hasMoreElements()) {
        String headerName = headerNames.nextElement();
        out.println(headerName + "-->" + request.getHeader(headerName) + "<br/>");
    }
    out.println("<br/>");
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String []color = request.getParameterValues("color");
    String country = request.getParameter("country");
    %>
<!--print the form -->
your name:<%=name%>
    <hr/>
your gender:<%=gender%>
    <hr/>
your color:<%for(String c:color) {out.println(c+" ");}%>
    <hr/>
your country:<%=country%>
    <hr/>
</body>
</html>
</body>