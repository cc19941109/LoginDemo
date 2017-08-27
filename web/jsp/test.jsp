<%--
  Created by IntelliJ IDEA.
  User: chencheng
  Date: 2017/8/27
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="/jsp/jspf/head.jspf" %>
<%

%>
<jsp:include page="/jsp/jspf/head.jspf"/>
<%!
    int i = 0;
%>
<h1>test.jsp中i的值为：<%=i%>
</h1>

<%--<h1>--%>
<%--<%@include file="/jsp/demo.jsp" %>
i 会有错误--%>
<%--</h1>--%>

<h1>
    <jsp:include page="/jsp/demo.jsp"/>
</h1>
<%--使用include标签引入引入jspf页面--%>
<h1>网页主体内容</h1>
<%@include file="/jsp/jspf/end.jspf" %>
</body>
</html>
