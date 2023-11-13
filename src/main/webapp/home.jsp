<!doctype html>
<html data-bs-theme="">

<head>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="generator" content="">
	<meta name="theme-color" content="#7952b3">
	<title>Car Store</title>
	
	<link href="/webjars/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
	<link href="/css/style-album.css" rel="stylesheet">

	<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">

</head>
<body>

	<header class="navbar sticky-top flex-md-nowrap p-0 bg-body shadow">
        <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">CarStore</a>
            <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
        	    <span class="navbar-toggler-icon"></span>
            </button>
        	<input class="form-control form-control-dark w-100 rounded-0 border-0" type="text" placeholder="Search" aria-label="Search">
        	<div class="navbar-nav">
        		<!--
        		<c:if test="${sessionScope.loggedUser != null}">
        			<div class="nav-item text-nowrap">
        			<a class="nav-link px-3" href="/logout">Sign out</a>
        	    </c:if>
        	    --!>
        	    <c:if test="${sessionScope.loggedUser == null}">
                    <div class="nav-item text-nowrap">
                    <a class="nav-link px-3" href="/login">Sign in</a>
                </c:if>
                </div>
            </div>
    </header>

	<main>
	
		<div class="album py-5 bg-light">
			
			<div class="container">
	
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

					<c:forEach var="car" items="${cars}">

					<div class="col">
						<div class="card shadow-sm">
							
							<img src="/img/${car.image}" alt="car image">
	
							<div class="card-body">
								<p class="card-text">${car.name}</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					</c:forEach>
					
				</div>
			</div>
	
	</main>

	<footer class="text-muted py-5">
		<div class="container">
			<p class="float-end mb-1">
				<a href="#">Back to top</a>
			</p>
			<p class="mb-1">Create by &copy; CarStore 2023!</p>
		</div>
	</footer>

	<script src="/webjars/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>

</body>
</html>
