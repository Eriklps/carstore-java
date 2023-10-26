<html>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-type" content="text/html" charset=UTF-8>
    <link href="webjars/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<form action="/create" method="post" enctype="multipart/form-data" class="container">

    <h2>Create Car</h2>

    <div>
    <label>Car name</label>
        <input type="text" name="car-name" id="car-name" value="${param.name}">
        <input type="hidden" id="id" name="id" value="${param.id}">
    </div>
    <br>
    <div>
        <label>Image</label>
        <input type="file" id="image" name="image" value="${param.image}">
    </div>
    <br>
    <button type="submit">Save</button>

</form>

</body>
</html>