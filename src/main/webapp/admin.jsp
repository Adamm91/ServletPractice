<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.User" %><%--
  Created by IntelliJ IDEA.
  User: adamm
  Date: 20.06.2018
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    User user = (User) session.getAttribute("user");
%>
<head>
    <title>Admin page</title>
</head>
<body>
<h1>Twoje IP to: ${pageContext.}</h1>

<c:out value="${sessionScope.get('user')!=null ? sessionScope.get('user').firstName : 'nieznajomy'}"></c:out>
<a href="login.jsp">Strona logowania</a>
</body>
</html>
