<%--
  Created by IntelliJ IDEA.
  User: johnnyruiz
  Date: 2019-06-17
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Registionation" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<h1 style="text-align: center">Registration</h1>

<form action="/register" method="POST">
    <label for="userName" id="userName">Username</label>
    <input name="userName" type="text" placeholder="Create a username" required>

    <label for="userEmail" id="userEmail">Email</label>
    <input name="userEmail" type="email" placeholder="Insert Email" required>

    <label for="passWord">Password</label>
    <input name="passWord" id="passWord" type="password" placeholder="************" required>

    <button>Register</button>
</form>


</body>
</html>
