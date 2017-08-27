<%@ page import="java.awt.*" %><%--
  Created by IntelliJ IDEA.
  User: chencheng
  Date: 2017/8/27
  Time: 00:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome</title>
</head>
<body>

<h1>hello,this is welcome page!</h1>
<%
    String s  = (String) request.getAttribute("name");
    out.println("name:"+s+" request.getAttribute(\"name\")</br>");
    out.println("request : "+request.getAttribute("requset")+"</br>");
    out.println("request param : "+request.getParameter("name")+"</br>");

%>

</body>
</html>
