<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 21/6/16
  Time: 12:47 PM
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
    </style>
</head>

<body>

<content tag="title">
    <h1>After Searching</h1>
</content>
<content tag="body">
    <g:if test="${searchPerson}">
        <div>
            <table  class="table table-bordered">
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Age</th>
                </tr>
                <g:each in="${searchPerson}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.email}</td>
                        <td>${user.age}</td>
                    </tr>
                </g:each>
            </table>
        </div>
    </g:if>
</content>
</body>
</html>