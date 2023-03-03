<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="link.jsp"></jsp:include>
</head>
<body>
	<div class="main-wrapper">
		<jsp:include page="header.jsp"></jsp:include>


		<jsp:include page="sidebar.jsp"></jsp:include>

		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="col-md-12">
					<div class="card">
					<form action="" method="POST" class="needs-validation" novalidate>
						<div class="card-header">
							<h5 class="card-title ">Class Detail -</h5>
						</div>
						<div class="row p-3">
							<div class="col-md-2">
								<div class="form-group">
									<label class="fw-bold"> Academic Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label class="fw-bold"> Select Selection </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label class="fw-bold"> Select Class </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-md-2"></div>
						</div>

						<div class="row p-3">
							<div class="col-md-2">
								<div class="form-group">
									<label class="fw-bold"> Division </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label class="fw-bold"> Select Subject </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label class="fw-bold"> Select Exam </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-md-2 py-4">
								<div style="text-align: right">
									<a href="#" class="btn btn-warning button-large btn-md"><i
										class="fa-solid fa-magnifying-glass"></i> Search </a>
								</div>
							</div>
						</div>
						</form>
					</div>

					<div class="card">
						<div class="container">
							<div class="row p-3" style="text-align: center">
								<div class="col-md-2 fw-bold">Academic Year</div>
								<div class="col-md-2 fw-bold">Class and Division</div>
								<div class="col-md-4 fw-bold">Subject Name</div>
								<div class="col-md-4 fw-bold">Exam Name</div>
							</div>
						</div>
					</div>



					<div class="card">
						<div class="row p-3">
							<div class="col-md-6">
								<div class="form-group">
									<label class="fw-bold"> Roll No. - 1 </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>.............</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label class="fw-bold"> Roll No. - 2 </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>.............</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row p-3">
							<div class="col-md-6">
								<div class="form-group">
									<label class="fw-bold"> Roll No. - 3 </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>.............</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label class="fw-bold"> Roll No. - 4 </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>.............</option>
									</select>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>