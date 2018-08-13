<%--
  Created by IntelliJ IDEA.
  User: syphan
  Date: 8/10/2018
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Product list</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-10"></div>
        <div class="col-2" style="padding-top: 20px">
            <a href="/logout?islogout=ok"><button type="button" class="btn btn-warning">logout</button></a>
        </div>
    </div>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
            <h1 style="text-align: center">Show product list</h1>
            <div class="row" style="text-align: center ; padding-bottom: 20px">
                <div class="col-6"><a href="/products?action=create">Create new product</a></div>
                <div class="col-6"><a href="/products?action=search">Search by name</a></div>
            </div>

            <table class="table table-bordered" style="text-align: center">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Category_id</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items='${requestScope["products"]}' var="product">
                <tr>
                    <td>${product.getId()}</td>
                    <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
                    <td>${product.getPrice()}</td>
                    <td>${product.getCategory_id()}</td>
                    <td><a href="/products?action=update&id=${product.getId()}">edit</a></td>
                    <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
                </tr>
                </c:forEach>
            </table>
        </div>
        <div class="col-2"></div>
    </div>
</div>
</body>
</html>
