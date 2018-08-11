<%--
  Created by IntelliJ IDEA.
  User: syphan
  Date: 8/10/2018
  Time: 4:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create new product</title>
</head>
<body>
<h1>Create new product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span>${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Create new product</legend>
        <table style="text-align: center">
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Category_id:</td>
                <td><input type="text" name="category" id="category"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit"  value="Create"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
