<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 16/6/16
  Time: 11:21 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <g:layoutHead />
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-inverse">

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header ">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Learning Management ${myCurrentPage}</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="${myCurrentPage.equals("create")?'active':''}"><a href="/learning-management/users/%20create/">Create</a></li>
                <li class="${myCurrentPage.equals("view")?'active':''}"><a href="/learning-management/users/%20view/">View</a></li>
                <li class="${myCurrentPage.equals("list")?'active':''}"><a href="/learning-management/users/%20list/">List</a></li>
            </ul>


        </div><!-- /.navbar-collapse -->

    </nav>
</div>
    <g:layoutBody />

</body>
</html>