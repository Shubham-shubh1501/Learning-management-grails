<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 13/6/16
  Time: 1:17 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <style>
        table {
            border-collapse: collapse;
        }
        th {
            text-align: left;
        }
        tr{

        }

    </style>
</head>

<body>
<!-- navbar section begin-->
<div class="container-fluid">
    <nav class="navbar navbar-default">

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Learning Management</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="http://localhost:8080/learning-management/users/%20create/">Create</a></li>
                <li><a href="http://localhost:8080/learning-management/users/%20view/">View</a></li>
                <li><a href="http://localhost:8080/learning-management/users/%20list/">List</a></li>
            </ul>


        </div><!-- /.navbar-collapse -->

    </nav>
</div>
<div class="container">
    <h1>Users List</h1>
    <hr>
    <table  class="table table-bordered">
        <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Age</th>
        </tr>
        <g:each in="${users}" var="user">
            <tr  <g:if test="${(user.myAge).toInteger()>100}">
                class = "danger";
            </g:if>>
                <td>${user.count}</td>
                <td>${user.myFirstName}</td>
                <td>${user.myLastName}</td>
                <td>${user.myEmail}</td>
                <td>${user.myAge}</td>
            </tr>
        </g:each>
    </table>
</div>
</body>
</html>