<%--
  Created by IntelliJ IDEA.
  User: syphan
  Date: 8/11/2018
  Time: 8:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show information detail product</title>
</head>
<body>
<h1>Show detail information product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<fieldset>
    <legend>Detail information</legend>
    <table border="1" style="text-align: center">
        <tr>
            <td>Name:</td>
            <td>${requestScope["product"].getName()}</td>
        </tr>
        <tr>
            <td>Price:</td>
            <td>${requestScope["product"].getPrice()}</td>
        </tr>
        <tr>
            <td>Category_id:</td>
            <td>${requestScope["product"].getCategory_id()}</td>
        </tr>
    </table>
    <p>
        <a href="/products?action=update&id=${requestScope["product"].getId()}">Edit product information</a>
    </p>
    <p>
        <a href="/products?action=delete&id=${requestScope["product"].getId()}">Delete</a>
    </p>
</fieldset>
</body>
</html>
