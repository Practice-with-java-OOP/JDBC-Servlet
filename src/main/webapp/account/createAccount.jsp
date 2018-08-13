<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: syphan
  Date: 8/13/2018
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Acount</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<form method="post">
    <div class="container">
        <div class="row">
            <div class="col-2"></div>
            <div class="col-8">
                <h1>Create new Acount</h1>
                <p style="color: red">
                    <c:if test='${requestScope["message"] != null}'>
                        <span>${requestScope["message"]}</span>
                    </c:if>
                </p>
                <p>
                    <a href="/displays?action=login">Login</a>
                </p>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">FirstName:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="firstName" id="firstName" placeholder="FirstName">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">LastName:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="lastName" id="lastName" placeholder="LastName">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">User:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="user" id="user" placeholder="User">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Password:</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" name="password" id="password"
                               placeholder="Password">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Email:</label>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">PhoneNumber:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="phone" id="phone" placeholder="PhoneNumber">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">BirthDay:</label>
                    <div class="col-sm-8">
                        <div class="row" style="padding: 0px 15px 0px 15px">
                            <div class="col-4">
                                <div class="form-group row">
                                    <input type="number" class="form-control" name="day" id="day" placeholder="day">
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group row">
                                    <input type="number" class="form-control" name="month" id="month"
                                           placeholder="month">
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group row">
                                    <input type="number" class="form-control" name="year" id="year"
                                           placeholder="year">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label"></label>
                    <div class="col-sm-8">
                        <button type="submit" class="btn btn-primary">Create</button>
                    </div>
                </div>
            </div>
            <div class="col-3"></div>
        </div>
    </div>
</form>
</body>
</html>
