<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-type" content="text/html" charset=UTF-8>
    <link href="webjars/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Login</title>
</head>
<body>

    <form action="/login" method="post" class="container">

        <span>${requestScope.message}</span>

        <br>

        <label for="username">Username</label>
        <input type="text" id="username" name="username">

        <br>

        <label for="password">Password</label>
        <input type="password" id="password" name="password">

        <button type="submit">Login</button>

    </form>

</body>
</html>