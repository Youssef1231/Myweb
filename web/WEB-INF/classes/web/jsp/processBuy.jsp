<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/21
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Map<String, Integer> itemMap = (Map<String, Integer>) session.getAttribute("itemMap");
    if (itemMap == null) {
        itemMap = new HashMap<String, Integer>();
        itemMap.put("book", 0);
        itemMap.put("computer", 0);
        itemMap.put("vehicle", 0);
    }
    String[] buys = request.getParameterValues("item");
    for (String item : buys) {
        if (item.equals("book")) {
            int num1 = itemMap.get("book").intValue();
            itemMap.put("book", num1 + 1);
        }
       else if (item.equals("computer")) {
            int num2 = itemMap.get("computer").intValue();
            itemMap.put("computer", num2 + 1);
        }
        else if (item.equals("vehicle")) {
            int num3 = itemMap.get("vehicle").intValue();
            itemMap.put("vehicle", num3 + 1);
        }
    }

    session.setAttribute("itemMap", itemMap);
%>
<html>
<head>
    <title>process buy</title>
</head>
<body>
what you have buy:<br>
book:<%=itemMap.get("book")%>pieces<br>
computer:<%=itemMap.get("computer")%>pieces<br>
vehicle:<%=itemMap.get("vehicle")%>pieces<br>
<p>
    <a href="shop.jsp">buy again</a>
</p>
</body>
</html>
