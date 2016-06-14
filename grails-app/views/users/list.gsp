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
    <style>
        table {
            border-collapse: collapse;
        }
        th {
            text-align: left;
        }

    </style>
</head>

<body>
<h1>Users List</h1>
<hr>
<table width="100%" height="25%" border="1" class="table-hover">
    <tr>
        <th>#</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Age</th>
    </tr>
    <g:each in="${users}" var="user">
        <tr>
            <td>${user.count}</td>
            <td>${user.myFirstName}</td>
            <td>${user.myLastName}</td>
            <td>${user.myEmail}</td>
            <td>${user.myAge}</td>
        </tr>
    </g:each>

</table>
</body>
</html>