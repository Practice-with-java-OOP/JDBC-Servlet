<%--
  Created by IntelliJ IDEA.
  User: syphan
  Date: 8/11/2018
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search product by name</title>
</head>
<body>
<h1>Search product by name</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>input information product</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Search"></td>
                <td></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
