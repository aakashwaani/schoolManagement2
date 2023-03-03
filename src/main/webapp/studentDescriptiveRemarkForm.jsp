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
								<h5 class="card-title ">Class Details -</h5>
							</div>
							<div class="row p-3">
								<div class="col-md-3">
									<div class="form-group text-center">
										<label class="fw-bold"> Academic Year </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group text-center">
										<label class="fw-bold"> Select Selection </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group text-center">
										<label class="fw-bold"> Select Class </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-1"></div>

								<div class="col-md-3">
									<div class="form-group text-center">
										<label class="fw-bold"> Division </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group text-center">
										<label class="fw-bold"> Select Term </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-3"></div>
								<div class="col-md-2">
									<div class="container mt-4 py-2">
										<div style="text-align: right">
											<a href="#" class="btn btn-warning btn-md"><i
												class="fa-solid fa-magnifying-glass"></i> Search </a> <br>
											<br>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>

					<div class="card">
						<div class="row p-3 text-center ">
							<div class="col-md-4 ">
								<div class="container">
									<label class="fw-bold">Academic Year</label>
								</div>
							</div>

							<div class="col-md-4">
								<label class="fw-bold">Class and Division</label>
							</div>

							<div class="col-md-4">
								<label class="fw-bold">Term Name</label>
							</div>
						</div>
					</div>


					<div class="card">
						<form action="" method="POST" class="needs-validation" novalidate>
							<div class="card-header">
								<h5 class="card-title ">Roll No. - 1</h5>
							</div>

							<div class="row p-3">
								<div class="col-md-4">
									<div class="form-group text-center" data-spy="scroll">
										<label class="fw-bold"> Select Subject </label>
										<div>
											<textarea class="form-control"></textarea>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group text-center" data-spy="scroll">
										<label class="fw-bold"> Select Subject </label>
										<div>
											<textarea class="form-control"></textarea>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group text-center" data-spy="scroll">
										<label class="fw-bold"> Select Subject </label>
										<div>
											<textarea class="form-control"></textarea>
										</div>
									</div>
								</div>
							</div>

							<div class="row p-3">
								<div style="text-align: center">
									<a href="#" class="btn btn-success btn-md"><i
										class="fa-regular fa-floppy-disk"></i> Submit </a>
									<button type="reset" value="reset"
										class="btn btn-danger btn-md">
										<i class="fa-sharp fa-solid fa-arrow-rotate-right"></i> Reset
									</button>
									<br> <br>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>