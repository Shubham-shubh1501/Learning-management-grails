<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 17/6/16
  Time: 10:58 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbarlayout">
</head>

<body>

<content tag="title">
    <h1>Edit Details</h1>
</content>
<content tag="body">
    <div>
        <g:form controller="users" action="update" class="table-bordered">
            <input type="hidden"  name="id" value="${edit1.id}"  >
            <div class="form-group">
                <label for="firstName"> First Name:</label>
                <g:textField name="firstName"  class="form-control" value="${edit1.firstName}"/><br>
            </div>
            <div class="form-group">
                <label for="lastName"> Last Name:</label>
                <g:textField  name="lastName" value="${edit1.lastName}" class="form-control"/><br>
            </div>
            <div class="form-group">
                <label for="Email"> Email:</label>
                <g:textField  name="Email" value="${edit1.email}" class="form-control"/><br>
            </div>
            <div class="form-group">
                <label for="age">Age:</label>
                <g:textField   name="age" value="${edit1.age}" class="form-control"/><br>
            </div>
            <div>
                <g:submitButton name="Submit" class="btn btn-inverse btn-block"/>
            </div>
        </g:form>
    </div>

</content>


</body>
</html>