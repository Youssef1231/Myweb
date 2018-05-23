<%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/21
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContestTest</title>
</head>
<body>
<%
    pageContext.setAttribute("page", "hello");
    request.setAttribute("request", "hello");
    pageContext.setAttribute("request2", "hello", pageContext.REQUEST_SCOPE);
    session.setAttribute("session", "hello");
    pageContext.setAttribute("session2", "hello", pageContext.SESSION_SCOPE);
    application.setAttribute("application", "hello");
    pageContext.setAttribute("application2", "hello", pageContext.APPLICATION_SCOPE);
%>
page scope:<%=pageContext.getAttributesScope("page")%><br/>
request scope:<%=pageContext.getAttributesScope("request")%><br/>
request2 scope:<%=pageContext.getAttributesScope("request2")%><br/>
session scope:<%=pageContext.getAttributesScope("session")%><br/>
session2 scope:<%=pageContext.getAttributesScope("session2")%><br/>
application scope:<%=pageContext.getAttributesScope("application")%><br/>
application2 scope:<%=pageContext.getAttributesScope("application2")%><br/>
</body>
</html>
