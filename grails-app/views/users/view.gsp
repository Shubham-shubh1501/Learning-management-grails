<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 14/6/16
  Time: 11:18 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbarlayout">
</head>

<body>
<content tag="pagename">
    view
</content>
<content tag="title">
    <h1>View Details</h1>
</content>
<content tag="body">
    <dl class="dl-horizontal">
        <dt>First Name:</dt><dd>${currentUsersDetails.firstName}</dd>
        <dt>Last Name:</dt><dd>${currentUsersDetails.lastName}</dd>
        <dt>Email</dt><dd>${currentUsersDetails.email}</dd>
        <dt>Age:</dt><dd>${currentUsersDetails.age}</dd>
    </dl>
</content>
</body>
</html>