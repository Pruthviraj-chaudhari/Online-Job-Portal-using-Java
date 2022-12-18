<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
.back-img{
	background: url("img/login_page.jpg");
	height: 90vh;
	background-repeat: no-repeat;
	background-size: cover;
} 

.back-video{
	position: absolute;
	right: 0;
	bottom: 0;
	z-index: -1;
}
</style>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
			<video autoplay loop muted plays-inline class="back-video">
				<source src="img/video.mp4" type="video/mp4">
			</video>
				<div class="card bg-dark text-white opacity-75"
					style="box-shadow: 8px 9px 19px -10px rgba(33,37,41,1);">
					<div class="card-body">
						<div class="text-center">
							
							<i class="fa-solid fa-user fa-2x" aria-hidden="true"></i>
							<h5>User Login</h5>
						</div>
						<c:if test="${not empty succMsg }">
							<h4 class="text-center text-danger">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if>
						<form action="login" method="post">
							<div class="form-group mb-3">
								<label>Email</label> <input type="email"
									required="required" placeholder="Email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
							</div>
							<div class="form-group mb-3">
								<label for="exampleInputPassword1">Password</label> <input
									required="required" placeholder="Password" type="password" class="form-control"
									id="exampleInputPassword1" name="password">
							</div>

							<button type="submit"
								class="btn btn-dark btn-outline-success badge-pill btn-block mt-2">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>