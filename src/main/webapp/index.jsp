<%--
  Created by IntelliJ IDEA.
  User: johnnyruiz
  Date: 2019-06-11
  Time: 09:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%! int counter = 0; %>
<%counter ++;%>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Main Page</title>
</head>
<body class="bg-dark text-light">
    <%@include file="partials/navbar.jsp"%>
    <h1 class="text-light">Hello, World!</h1>
    <p class="text-primary">This is my Adlister</p>


    <p>Path: <%= request.getRequestURL() %></p>
    <p>Query String: <%= request.getQueryString() %></p>
<%--    <p>"name" parameter: <%= request.getParameter("name") %></p>--%>
    <p>"page_no" parameter: ${param.name}</p>
<%--    <p>User-Agent header: <%= request.getHeader("user-agent") %></p>--%>
    <p>User-Agent header: ${header["user-agent"]}</p>
    

    <h3>Counter =<%=counter%></h3>


    <%-- this is a JSP comment, you will *not* see this in the html --%>
    <!-- this is an HTML comment, you *will* see this in the html -->

    <c:if test="${param.name == 'Johnny'}">
          <h1>Hello Johnny</h1>
    </c:if>

    <% request.setAttribute("numbers", new int[]{1, 2, 3, 4, 5, 6, 7}); %>

    <ul>
        <c:forEach items="${numbers}" var="n">
            <li><a href="/">${n}</a></li>
        </c:forEach>
    </ul>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
