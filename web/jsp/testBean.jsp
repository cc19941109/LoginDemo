<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: chencheng
  Date: 2017/8/27
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test Bean</title>
</head>
<body>

<jsp:useBean id="user1" class="chen.entity.User" scope="page"/>
<%
    user1.setAge(22);
    user1.setId(1);
    user1.setName("cc");
    user1.setInfo("i am a javar");

%>
<%--使用getXxx()方法获取对象的属性值 --%>
<h2>姓名：<%=user1.getName()%>
</h2>
<h2>年龄：<%=user1.getAge()%>
</h2>
<h2>Id：<%=user1.getId()%>
</h2>
<h2>消息：<%=user1.getInfo()%>
</h2>
-------------------

<jsp:setProperty property="name" name="user1" value="长脖子树"/>
<jsp:setProperty property="birthday" name="user1" value="<%=new Date()%>"/>
<jsp:setProperty property="info" name="user1" param="info"/>


<h2>姓名：<%=user1.getName()%>
</h2>
<h2>年龄：<%=user1.getAge()%>
</h2>
<h2>Id：<%=user1.getId()%>
</h2>
<h2>消息：<%=user1.getInfo()%>
</h2>
<h2>日期：<%=user1.getBirthday()%>
</h2>


-------------

<jsp:setProperty property="*" name="user1"/>

<h2>姓名：<%=user1.getName()%>
</h2>
<h2>年龄：<%=user1.getAge()%>
</h2>
<h2>Id：<%=user1.getId()%>
</h2>
<h2>消息：<%=user1.getInfo()%>
</h2>
<h2>日期：<%=user1.getBirthday()%>
</h2>


-------------
<jsp:setProperty property="info" name="user1" value="test info...."/>

<h2>消息：<jsp:getProperty property="info" name="user1"/></h2>


</body>
</html>
