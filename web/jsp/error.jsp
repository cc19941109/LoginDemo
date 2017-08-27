<%@ page import="java.lang.annotation.Repeatable" %><%--
  Created by IntelliJ IDEA.
  User: chencheng
  Date: 2017/8/26
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" pageEncoding="utf-8" %>
<html>
<head>
    <title>错误信息友好提示页面</title>
</head>
<body>
    对不起，出错了，请联系管理员解决！
    <%=exception.getMessage()%>
    <%
        for(StackTraceElement stackTraceElement :exception.getStackTrace()){
            response.getWriter().append(stackTraceElement.toString()+"</br>");
        }
    %>
<%=exception.getStackTrace()%>
</body>
</html>