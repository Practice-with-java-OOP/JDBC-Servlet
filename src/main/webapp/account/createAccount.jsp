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
                        <div class="row">
                            <div class="col-4">
                                <div class="input-group mb-3">
                                    <select class="custom-select" name="day">
                                        <option selected>Day</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="input-group mb-3">
                                    <select class="custom-select" name="month">
                                        <option selected>Month</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="input-group mb-3">
                                    <select class="custom-select" name="year">
                                        <option selected>Year</option>
                                        <option value="1">2005</option>
                                        <option value="2">2004</option>
                                        <option value="3">2003</option>
                                        <option value="4">2002</option>
                                        <option value="5">2001</option>
                                        <option value="6">2000</option>
                                        <option value="7">1999</option>
                                        <option value="8">1998</option>
                                        <option value="9">1997</option>
                                        <option value="10">1996</option>
                                        <option value="11">1995</option>
                                        <option value="12">1994</option>
                                        <option value="12">1993</option>
                                        <option value="12">1992</option>
                                        <option value="12">1991</option>
                                        <option value="12">1990</option>
                                    </select>
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
