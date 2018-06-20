<%--
  Created by IntelliJ IDEA.
  User: adamm
  Date: 20.06.2018
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zaloguj</title>

</head>
<body>
<form action="/login" method="post">
    <input name="firstName" type="text" placeholder="Imię">
    <input name="lastName" type="text" placeholder="Nazwisko">
    <input type="submit" value="Zaloguj">
</form>
</body>
</html>
