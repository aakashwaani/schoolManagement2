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
							<h5 class="card-title ">All Assignment Details-</h5>
						</div>

						<div class="card-body">
							<div class="row p-3">
								<div class="col-md-12">
									<div class="container">
										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<select class="form-control form-select">
														<option value="" disabled selected hidden>Select
															Status</option>
													</select>
												</div>
											</div>

											<div class="col-md-2 text-center">
												<div class="form-group">
													<a href="#" class="btn btn-primary btn-sm"><i
														class="fa-regular fa-eye"></i> View</a>
												</div>
											</div>

											<div class="col-md-5">
												<div class="form-group">
													<a href="#" class="btn btn-danger btn-sm">View Deleted
														Assignment</a>
												</div>
											</div>
										</div>

									</div>

								</div>
							</div>
							<div class="row p-4">
								<div class="col-md-4">
									<div class="form-group">
										<label class="fw-bold"> Search By Assignment Title : </label>
									</div>
								</div>
								<div class="col-md-5">
									<div class="form-group text-center">
										<div>
											<input type="text" class="form-control"
												placeholder="Enter Search Keyword..">
										</div>
									</div>
								</div>

								<div class="col-md-3">
									<div>
										<a href="#" class="btn btn-warning btn-md"><i
											class="fa-solid fa-magnifying-glass"></i> Search</a>
									</div>


								</div>
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
								<div class="col-md-3">
									<div class="form-group text-center">
										<label class="fw-bold"> Select Exam Name </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group text-center">
										<label class="fw-bold"> Select Section </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<label> </label>
									<div>
										<a href="#" class="btn btn-warning btn-md"><i
											class="fa-regular fa-eye"></i> View</a>
									</div>
								</div>
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