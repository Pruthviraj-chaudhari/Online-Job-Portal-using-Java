<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.entity.Jobs"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User : Home</title>
<%@include file="all_component/all_css.jsp"%>
</head>


<body style="background-color: #d5d5d6;">

	 <c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if> 
	<%@include file="all_component/navbar.jsp"%>

	<div class="container mb-5">
		<div class="row">
			<div class="col-md-12">

				<h5 class="text-center text-dark">All Jobs</h5>

				 <c:if test="${not empty succMsg }">
					<h4 class="text-center text-success">${succMsg }</h4>
					<c:remove var="succMsg" />
				</c:if> 


				<div class="card bg-dark text-white">
					<div class="card-body">

						<form class="form-inline" action="more_view.jsp" method="get">
						<div class="from-group col-md-5 mt-1 d-inline ">
							<h4 style="display: inline;" class="text-white">Location</h4>
						</div>

						<div class="form-group col-md-5 mr-5 d-inline">
							<select name="loc" class="custom-select bg-light text-dark border border-dark"
								id="inlineFormCustomSelectPref">
								<option selected>Choose...</option>
								<option value="Chandigarh">Chandigarh</option>
								<option value="Bangalore">Bangalore</option>
								<option value="Coimbatore">Coimbatore</option>
								<option value="Chennai">Chennai</option>
								<option value="Mumbai">Mumbai</option>
								<option value="Pune">Pune</option>
								<option value="Kolkata">Kolkata</option>
								<option value="Delhi-NCR">Delhi-NCR</option>
								<option value="Baroda">Baroda</option>
								<option value="Hydrabad">Hydrabad</option>
							</select>
						</div>
						
						<div class="from-group col-md-5 mt-1 ml-5 d-inline">
						<div style="width:10px; display: inline-block;"> </div>
							<h4 style="display: inline;" class="ml-5 text-white">Category</h4>
						</div>

						<div class="form-group col-md-5 d-inline">
							<select class="custom-select bg-light text-dark border border-dark" id="inlineFormCustomSelectPref"
								name="cat">
								<option value="ca" selected>Choose...</option>
								<option value="IT">IT</option>
								<option value="Devloper">Devloper</option>
								<option value="Banking">Banking</option>
								<option value="Engineer">Engineer</option>
								<option value="Teacher">Teacher</option>
							</select>
						</div>
						<br>
						<br>
						<button class="btn btn-outline-light  btn-block"><strong>Search</strong></button>
						</form>

					</div>
				</div>

				<%
				JobDAO dao = new JobDAO(DBConnect.getconn());
				List<Jobs> list = dao.getAllJobs();
				for (Jobs j : list) {
				%>
				<div class="card mt-2 opacity-80 bg-light text-dark"
					style="box-shadow: 8px 9px 19px -10px rgba(33, 37, 41, 1);">
					<div class="card-body">
						<div class="text-center text-secondary">
							<i class="fa-regular fa-clipboard fa-2x"></i>
						</div>



						<h6><%=j.getTitle()%></h6>

						<%
						if (j.getDescription().length() > 0 && j.getDescription().length() < 120) {
						%>
						<p><%=j.getDescription()%></p>
						<%
						} else {
						%>
						<p><%=j.getDescription().substring(0, 120)%></p>...<%
						}
						%>


						<br>
						<div class="form-row">
							<div class="form-group col col-md-3 d-inline-block">
								<input type="text" class="form-control form-control-sm"
									value="Location: <%=j.getLocation()%>" readonly>
							</div>

							<div class="form-group col col-md-3 d-inline-block">
								<input type="text" class="form-control form-control-sm"
									value="Category: <%=j.getCategory()%>" readonly>
							</div>
						</div>

						<h6 class="mt-3">
							Publish Date:<%=j.getPdate().toString()%></h6>
						<div class=" text-center mt-4">
							<a href="one_view.jsp?id=<%=j.getId()%>"
								class="btn btn-outline-secondary  btn-block btn-sm">View More</a>
						</div>
					</div>

				</div>
				<%
				}
				%>



			</div>
		</div>
		</div>
		<%@include file="all_component/footer.jsp"%>
</body>
</html>