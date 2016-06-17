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
<content tag="pagename">
    list
</content>
<content tag="title">
    <h1>User List</h1>
</content>
<content tag="body">
    <div>
        <table  class="table table-bordered">
            <tr>

                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Age</th>
            </tr>
            <g:each in="${users}" var="user">
                <tr  <g:if test="${(user.age).toInteger()>100}">
                    class = "danger";
                </g:if>>

                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.email}</td>
                    <td>${user.age}</td>
                </tr>
            </g:each>
        </table>
    </div>
</content>
</body>
</html>