<!DOCTYPE html>
<html lang="en" data-bs-theme="">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-type" content="text/html" charset=UTF-8>
    <link href="webjars/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">

    <link href="http://localhost:8080/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="https://getbootstrap.com/docs/5.3/examples/sign-in/sign-in.css" rel="stylesheet">

    <title>Car Store | Login</title>
</head>

<body class="d-flex align-items-center py-4 bg-body-tertiary">

    <main class="form-signin w-100 m-auto">

    <form action="/login" method="post">

        <h1 class="h3 mb-3 fw-normal">Sign in</h1>



        <div class="form-floating">
            <input type="text" name="username" class="form-control" id="floatingInput" placeholder="Username">
            <label for="floatingInput">Username</label>
       </div>
        <div class="form-floating">
            <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
        </div>

        <div class="form-check text-start my-3">
            <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
            <label class="form-check-label" for="flexCheckDefault">Remember me</label>
        </div>

        <button class="btn btn-primary w-100 py-2" type="submit">Sign in</button>

        <div class="text-center my-3">
        <span>${requestScope.message}</span>
        </div>

    </form>

    </main>

    <script src="http://localhost:8080/webjars/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>

</body>
</html>