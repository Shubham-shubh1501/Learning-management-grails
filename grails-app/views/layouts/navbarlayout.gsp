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
    <style>
        .container-fluid {
            padding-left: 0px;
            padding-right: 0px;
        }
        .navbar-inverse .navbar-nav>.active>a{
            background-color: sandybrown;
        }
    body {
        background-color:#cee2ff ;
    }
    </style>
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
            <a class="navbar-brand" href="#">Learning Management</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="${actionName.equals("create")?'active':''}"><a href="/users/%20create/">Create</a></li>
                <li class="${actionName.equals("view")?'active':''}"><a href="/users/%20view/">View</a></li>
                <li class="${actionName.equals("list")?'active':''}"><a href="/users/%20list/">List</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-sm-10 col-xs-10  table-bordered">

            <div class="page-header" >
                <g:pageProperty name="page.title"/>
            </div>
            <div>
                <g:pageProperty name="page.body"/>
            </div>
        </div>
        <div class="col-md-2 col-sm-2 col-xs-2 table-bordered">
            A learning management system (LMS) is a software application for the administration, documentation,
            tracking, reporting and delivery of electronic educational technology (also called e-learning)
            courses or training programs.Learning management systems range from systems for managing training
            and educational records to software for distributing online or blended/hybrid college courses over
            the Internet with features for online collaboration. Colleges, universities, school districts,
            and schools use LMSs to deliver online courses and augment on-campus courses.
            LMSs also act to augment the lessons the teacher is giving in a brick and mortar environment,
            not just replace them. Corporate training departments use LMSs to deliver online training.
        </div>
    </div>

</div>

</body>
</html>