<%--
  Created by IntelliJ IDEA.
  User: johnnyruiz
  Date: 2019-06-11
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Pick Color</title>
</head>
<body>
    <form action="/background.jsp" method="post">
        <label for="backgroundColor">Select a Color</label>
        <input id="backgroundColor" type="color" name="backgroundColor" value="#ff0000">
        <button>Submit</button>
    </form>
</body>

<%--<c:if test="${param.backgroundColor != null}">--%>
<%--     <%response.sendRedirect("/background.jsp");%>--%>
<%--</c:if>--%>

</html>
