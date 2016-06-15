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
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
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
                <li class="active"><a href="/learning-management/users/%20create/">Create</a></li>
                <li><a href="/learning-management/users/%20view/">View</a></li>
                <li><a href="/learning-management/users/%20list/">List</a></li>
            </ul>


        </div><!-- /.navbar-collapse -->

    </nav>
</div>
<div class="container">
    <h1>Registration Form</h1>
    <hr>
    <g:form controller="users" action="save" class="bg-danger table-bordered">
    <div class="form-group">
        <label for="firstName"> First Name:</label>
        <g:textField name="firstName" placeholder="Enter FirstName" class="form-control"/><br><br>
    </div>
    <div class="form-group">
        <label for="lastName"> First Name:</label>
        <g:textField  name="lastName" placeholder="Enter LastName" class="form-control"/><br><br>
    </div>
    <div class="form-group">
        <label for="Email"> First Name:</label>
        <g:textField  name="Email" placeholder="Enter Email-id" class="form-control"/><br><br>
    </div>
    <div class="form-group">
        <label for="age"> First Name:</label>
        <g:textField   name="age" placeholder="Enter Age" class="form-control"/><br><br>
    </div>
    <div>
        <g:submitButton name="submit" class="btn btn-primary btn-block"/>
    </div>
    </g:form>
</div>
</body>
</html>


