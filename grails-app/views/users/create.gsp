<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 13/6/16
  Time: 11:57 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbarlayout">
    <style>
    .form-group {
        margin-bottom: 0px;
    }

    .btn-inverse{
        color: #ffffff;
        background-color: #222222;
    }
    </style>

</head>
<body>

<content tag="title">
    <h1>Registration Form</h1>
</content>
<content tag="body">
    <div>
                <g:form controller="users" action="save" class="table-bordered">
            <div class="form-group ${hasErrors(bean: MyUser,field:'firstName','has-error')}">
                <label for="firstName"> First Name:</label>
                <g:textField name="firstName" placeholder="Enter FirstName" class="form-control"
                             value="${MyUser.firstName}"/><br>
                <g:renderErrors bean="${MyUser}" field="firstName"/>
            </div>
            <div class="form-group ${hasErrors(bean: MyUser,field:'lastName','has-error')}">
                <label for="lastName"> Last Name:</label>
                <g:textField  name="lastName" placeholder="Enter LastName" class="form-control"
                              value="${MyUser.lastName}"/><br>
                <g:renderErrors bean="${MyUser}" field="lastName"/>
            </div>
            <div class="form-group ${hasErrors(bean: MyUser,field:'email','has-error')}">

                <label for="Email"> Email:</label>
                <g:textField  name="Email" placeholder="Enter Email-id" class="form-control"
                              value="${MyUser.email}"/><br>
                <g:renderErrors bean="${MyUser}" field="email"/>
            </div>
            <div class="form-group ${hasErrors(bean: MyUser,field:'age','has-error')}">
                <label for="age">Age:</label>
                <g:textField   name="age" placeholder="Enter Age" class="form-control"
                               value="${MyUser.age}"/><br>
                <g:renderErrors bean="${MyUser}" field="age"/>
            </div>
            <div>
                <g:submitButton name="Submit" class="btn btn-inverse btn-block"/>
            </div>
        </g:form>
    </div>

</content>
</body>
</html>


