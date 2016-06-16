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
    <meta name="layout" content="navbarlayout">
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