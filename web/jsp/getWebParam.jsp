<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/20
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>application</title>
</head>
<body>
<%
    String driver = application.getInitParameter("driver");
    String url = application.getInitParameter("url");
    String user = application.getInitParameter("user");
    String pass = application.getInitParameter("pass");
    Class.forName(driver);
    Connection conn = DriverManager.getConnection(url, user, pass);
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from  student_table");
%>
<table bgcolor="#9999dd" border="1" width="480">
    <%
        while (rs.next()) {
    %>
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
