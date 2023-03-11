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
				<div class=" col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">Class Details -</h5>
						</div>
						<div class="card-body">
							<div class="row p-3">
								<div class="col-lg-3 col-md-4">
									<div class="form-group text-center">
										<label class="fw-bold"> Academic Year </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-lg-3 col-md-4">
									<div class="form-group text-center">
										<label class="fw-bold"> Select Section </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-lg-3 col-md-4">
									<div class="form-group text-center">
										<label class="fw-bold"> Select Class </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row p-3">
								<div class="col-lg-3 col-md-4">
									<div class="form-group text-center">
										<label class="fw-bold"> Division </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-lg-3 col-md-4">
									<div class="form-group text-center">
										<label class="fw-bold"> Select Subject </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-lg-3 col-md-4">
									<div class="form-group text-center">
										<label class="fw-bold"> Select Exam </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>

								<div class="text-end p-2">
									<button type="button" class="btn btn-outline-success ">Search</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">Class Details -</h5>
						</div>
						<div class="row p-3">
							<div class="col-lg-3 col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Academic Year </label>

								</div>
							</div>
							<div class="col-lg-3 col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Class and Division </label>
								</div>
							</div>
							<div class="col-lg-3 col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Subject Name </label>
								</div>
							</div>
							<div class="col-lg-3 col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Exam Name </label>
								</div>
							</div>
						</div>
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