<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
<%@include file="all_component/all_css.jsp"%>
<style>
.back-img {
	background: url("img/editProfile.jpg");
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid back-img">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card bg-dark text-white opacity-75"
					style="box-shadow: 8px 9px 19px -10px rgba(33, 37, 41, 1);">
					<div class="card-body">
						<div class="text-center">
							<i class="fa-solid fa-user-pen fa-2x" aria-hidden="true"></i>
							
							<h5>Edit Profile</h5>
						</div>
						
						<form action="update_profile" method="post">
							<input type="hidden" name="id" value="${userobj.id }">
							<div class="form-group mb-3 mt-2">
								<label>Enter Full Name</label> <input type="text" placeholder="Name"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name" value="${userobj.name }">
							</div>

							<div class="form-group mb-3">
								<label>Qualification</label> <input required="required" placeholder="Qualification"
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="qualification" value="${userobj.password }">
							</div>

							<div class="form-group mb-3">
								<label>Email</label> <input type="text" placeholder="Email"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="qualification" value="${userobj.qualification}">
							</div>

							<div class="form-group mb-3">
								<label for="exampleInputPassword1">New Password</label> <input
									required="required" placeholder="Password" type="password" class="form-control"
									id="exampleInputPassword1" name="passsword" value="${userobj.password }">
							</div>

							<button type="submit"
								class="btn btn-dark btn-outline-success badge-pill btn-block mt-2">Update Profile</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>












