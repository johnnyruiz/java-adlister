<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: johnnyruiz
  Date: 2019-06-11
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="particals/navbar.jsp"%>

<form action="/login.jsp" method="POST">
    <label for="userName">USERNAME</label>
    <input id="userName" type="text" name="userName" placeholder="Enter Username Here">
    <label for="passWord">PASSWORD</label>
    <input type="password" name="passWord" id="passWord">
    <button>Submit</button>
</form>
<c:if test="${param.userName !=null}">
    <c:if test="${param.userName == 'admin'}">
        <c:if test="${param.passWord == 'password'}">
            <%response.sendRedirect("/profile.jsp");%>
        </c:if>
    </c:if>
    <c:if test="${param.userName != 'admin'}">
        <c:if test="${param.passWord != 'password'}">
            <%response.sendRedirect("/login.jsp");%>
        </c:if>
    </c:if>
</c:if>



</body>
</html>
