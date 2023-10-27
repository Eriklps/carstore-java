<html data-bs-theme="light">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-type" content="text/html" charset=UTF-8>
    <link href="webjars/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="py-4">

<form action="/create" method="post" enctype="multipart/form-data" class="container w-50">

    <h2>Create Car</h2>

    <input type="hidden" id="id" name="id" value="${param.id}">

    <div class="mb-3">
        <label class="form-label" for="car-name">Name</label>
        <input class="form-control" type="text" name="car-name" id="car-name" value="${param.name}">
    </div>

    <%--

    <div class="mb-3">
        <label class="form-label" for="brand">Brand</label>
        <input class="form-control" type="text" name="brand" id="brand">
    </div>

    <div class="mb-3">
        <label class="form-label" for="version">Version</label>
        <input class="form-control" type="text" name="version" id="version">
    </div>

    <div class="mb-3">
        <label class="form-label" for="year">Year</label>
        <input class="form-control" type="text" name="year" id="year">
    </div>

    <div class="mb-3">
        <label class="form-label" for="year-model">Model Year</label>
        <input class="form-control" type="text" name="year-model" id="year-model">
    </div>

    --%>

    <div class="mb-3">
        <label class="form-label" for="image">Image</label>
        <input class="form-control" type="file" id="image" name="image" value="${param.image}">
    </div>

    <div class="d-grid gap-2 d-md-flex justify-content-md-end py-4">
        <button class="btn btn-primary" type="submit" >Save</button>
    </div>
</form>

</body>
</html>