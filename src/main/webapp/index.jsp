<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Job Portal</title>
<%@include file="all_component/all_css.jsp"%>

<style type="text/css">
.back-img {
	background: url("img/Home_page.jpg");
	width: 100%;
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
}

.footerImg{
	width: 100%;
}
</style>
</head>

<body>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-black p-4">
				<i class="fa fa-book" aria-hidden="true"></i> Online Job Portal
			</h1>
		</div>
	</div>
	<img class="footerImg" alt="" src="img/img1.png">
	<img class="footerImg" alt="" src="img/img2.png">
	<img class="footerImg" alt="" src="img/footer.png">
	<!-- Features -->

	<!-- <section class="white-section" id="features">
		<div class="container-fluidss">
			<div class="row">

				<div class="col-lg-4">
					<i class="fas fa-check-circle fa-4x"></i>
					<h3 class="feature-title">Easy to use.</h3>
					<p>So easy to use, even your dog could do it.</p>
				</div>

				<div class="col-lg-4">
					<i class="fas fa-bullseye fa-4x"></i>
					<h3 class="feature-title">Elite Clientele</h3>
					<p>We have all the dogs, the greatest dogs.</p>
				</div>

				<div class="col-lg-4">
					<i class="fas fa-heart fa-4x"></i>
					<h3 class="feature-title">Guaranteed to work.</h3>
					<p>Find the love of your dog's life or your money back.</p>
				</div>
			</div>
		</div>

	</section> -->

	
	
	<%-- <%@include file="all_component/footer.jsp"%> --%>
</body>

</html>