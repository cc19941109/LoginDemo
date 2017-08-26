<%--
  Created by IntelliJ IDEA.
  User: chencheng
  Date: 2017/8/25
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="/error" %>
<html>
<head>
    <title>servlet demo </title>
</head>
<body>
<%@include file="/jsp/jspf/head.jspf" %>

<h1>hello servlet</h1>

<h1>时间：<%= new java.util.Date() %></h1>

<%
    session.setAttribute("name", "session对象");//使用session对象,设置session对象的属性
    out.print(session.getAttribute("name")+"<br/>");//获取session对象的属性
    pageContext.setAttribute("name", "pageContext对象");//使用pageContext对象,设置pageContext对象的属性
    out.print(pageContext.getAttribute("name")+"<br/>");//获取pageContext对象的属性
    application.setAttribute("name", "application对象");//使用application对象,设置application对象的属性
    out.print(application.getAttribute("name")+"<br/>");//获取application对象的属性
    out.print("Hello Jsp"+"<br/>");//使用out对象
    out.print("服务器调用index.jsp页面时翻译成的类的名字是："+page.getClass()+"<br/>");//使用page对象
    out.print("处理请求的Servlet的名字是："+config.getServletName()+"<br/>");//使用config对象
    out.print(response.getContentType()+"<br/>");//使用response对象
    out.print("getContextPath:"+request.getContextPath()+"<br/>");//使用request对象
%>
<%--<%
    //这行代码肯定会出错，因为除数是0，一运行就会抛出异常
    int x = 1/0;
%>--%>

<%@include file="/jsp/jspf/end.jspf" %>
</body>
</html>
