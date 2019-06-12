<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: johnnyruiz
  Date: 2019-06-12
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Ads" />
    </jsp:include>
</head>
<body>

<jsp:include page="/partials/navbar.jsp" />


    <c:forEach var="Ad" items="${ads}">
        <div>
        <h3>Title: ${Ad.title}</h3>
        <p>AdId:${Ad.id}<span>User Id:${Ad.userId}</span></p>
        <p>Description: ${Ad.description}</p>
        </div>
    </c:forEach>


</body>
</html>
