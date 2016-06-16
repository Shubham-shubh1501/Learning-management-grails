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

<dl class="dl-horizontal">
    <dt>First Name:</dt><dd>${currentUsersDetails.myFirstName}</dd>
    <dt>Last Name:</dt><dd>${currentUsersDetails.myLastName}</dd>
    <dt>Email</dt><dd>${currentUsersDetails.myEmail}</dd>
    <dt>Age:</dt><dd>${currentUsersDetails.myAge}</dd>
</dl>
</body>
</html>