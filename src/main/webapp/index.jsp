<html>
<body>
<h2>Create Car</h2>

<form action="/create" method="post" enctype="multipart/form-data">

    <div>
    <label>Car Name</label>
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