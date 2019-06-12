<%--
  Created by IntelliJ IDEA.
  User: johnnyruiz
  Date: 2019-06-11
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% int randomNumber = (int) (Math.random() * 10);%>
<%request.setAttribute("randomNumber", randomNumber);%>
<%--<%int num = ((int) request.getAttribute("randomNumber"));%>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>Pick a number 1-10</h3>
    <form action="" method="post">
        <label for="userGuess">Guess a number and submit</label>
        <input id="userGuess" type="number">
        <br>
        <button>Submit</button>
    </form>
    <h5><%=randomNumber%></h5>
    <c:if test="${param.userGuess == randomNumber}">
        <h5>WINNER GREAT GUESS</h5>
        <h5><%=randomNumber%></h5>
    </c:if>
</body>
</html>
