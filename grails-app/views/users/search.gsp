<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 20/6/16
  Time: 1:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbarlayout">
</head>
<body>
<content tag="title">
    <h1>Search</h1>
</content>
<content tag="body">
    <div>
        <g:form  controller="users" action="test" class="table-bordered">
            <div class="form-group">
                <label for="email">Email:</label>
                <g:textField name="email" placeholder="Enter Email" class="form-control"/><br>
            </div>
            <div class="form-group">
                <label for="age">Age:</label>
                <g:textField  name="age" placeholder="Enter Age" class="form-control"/><br>

            </div>
            <div class="form-group">

                <g:select class="form-control" name="ageType" from="${['Exact', 'Greater', 'Lesser']}"/>
            </div>
            <div>
                <g:submitButton name="Submit" class="btn btn-inverse btn-block"/>
            </div>
        </g:form>
    </div>

</content>
</body>
</html>