<!DOCTYPE html>
<html lang="en" data-bs-theme="light">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-type" content="text/html" charset=UTF-8>
    <link href="webjars/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Login</title>
</head>
<body class="bg-body-tertiary py-4">
    <form style="max-width:400px;" action="/login" method="post" class="container">

        <span>${requestScope.message}</span>

        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" id="username" name="username" class="form-control">
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" name="password" class="form-control">
        </div>

        <div class="d-grid gap-2 col-6 mx-auto py-4">
            <button type="submit" class="btn btn-primary">Login</button>
        </div>

    </form>
</body>
</html>