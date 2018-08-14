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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<form method="post">
    <div class="container">
        <div class="row">
            <div class="col-2"></div>
            <div class="col-6" style="padding-top: 30px">
                <h1>Create new product</h1>
                <p>
                    <c:if test='${requestScope["message"] != null}'>
                        <span>${requestScope["message"]}</span>
                    </c:if>
                </p>
                <p>
                    <a href="/products">Back to product list</a>
                </p>
                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Name:</label>
                    <div class="col-sm-9">
                        <input type="text" name="name" class="form-control" placeholder="Name">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Price:</label>
                    <div class="col-sm-9">
                        <input type="text" name="price" class="form-control" placeholder="Price">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Category_id:</label>
                    <div class="col-sm-9">
                        <div class="input-group mb-3">
                            <select class="custom-select" name="category">
                                <option selected>category_id</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-3 col-form-label"></label>
                    <div class="col-sm-9">
                        <button type="submit" class="btn btn-primary">Create</button>
                    </div>
                </div>
            </div>
            <div class="col-4"></div>
        </div>
    </div>
</form>
</body>
</html>
