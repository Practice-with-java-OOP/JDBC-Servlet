<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: syphan
  Date: 8/13/2018
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<p>
    <c:if test='${requestScope["error"] != null}'>
        <h3 style="padding-top: 20px">${requestScope["error"]}</h3>
    </c:if>
</p>
<h1>Account management login</h1>
<p>
    <a href="/displays">Back to Home page</a>
</p>
<form method="post">
    <fieldset>
        <legend>Login</legend>
        <table>
            <tr>
                <td>User:</td>
                <td><input type="text" name="user" id="user"></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password" id="password"></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" id="checkbox">RememberMe</td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Login"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
