<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Job Portal</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-1 mb-lg-0">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp"><i class="fa-solid fa-house-chimney"></i> Home
						<span class="sr-only">(current)</span> </a></li>

				<c:if test="${userobj.role eq 'admin'}">
					<li class="nav-item"><a class="nav-link" href="add_job.jsp"><i
							class="fa fa-plus-circle"></i> Post Jobs</a></li>
					<li class="nav-item"><a class="nav-link" href="view_job.jsp"><i
							class="fa-solid fa-eye"></i> View Jobs </a></li>
				</c:if>

			</ul>


			<form class="d-flex" role="search">

				<c:if test="${userobj.role eq 'admin'}">
					<a href="#" class="btn btn-light mr-1" data-bs-toggle="modal" data-bs-target="#exampleModal"><i
						class="fa-solid fa-user"></i> Admin</a>

					<a href="#" class="raj">' '</a>
					<a href="logout" class="btn btn-light"><i
						class="fa-solid fa-power-off"></i> Logout</a>
				</c:if>

				<c:if test="${userobj.role eq 'user'}">
					<a href="" data-bs-toggle="modal" data-bs-target="#exampleModal"
						class="btn btn-light mr-1"><i class="fa-solid fa-user"></i>
						${userobj.name}</a>

					<a href="#" class="raj">' '</a>
					<a href="logout" class="btn btn-light"><i
						class="fa-solid fa-power-off"></i> Logout</a>
				</c:if>



				<c:if test="${empty userobj}">
					<a href="login.jsp" class="btn btn-light mr-1"><i
						class="fas fa-sign-in-alt"></i> Login</a>
					<a href="#" class="raj">' '</a>
					<a href="signup.jsp" class="btn btn-light"><i
						class="fa-solid fa-user"></i> SignUp</a>
				</c:if>

			</form>
		</div>
	</div>
</nav>




<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Profile</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close">
				</button>
			</div>
			<div class="modal-body">
				<div class="card bg-dark text-white">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fas fa-user-circle fa-3x"></i>
						</div>

						<table class="table text-white">
							<tbody>
								<tr>
									<th scope="row">Name</th>
									<th>${userobj.name}</th>
								</tr>

								<tr>
									<th scope="row">Qualification</th>
									<th>${userobj.password}</th>
								</tr>

								<tr>
									<th scope="row">Email</th>
									<th>${userobj.qualification}</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal"
					aria-label="Close">Close</button>
				<a href="edit_profile.jsp" class="btn btn-primary">Edit</a>
			</div>
		</div>
	</div>
</div>