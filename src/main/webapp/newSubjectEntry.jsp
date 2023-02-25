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
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Add New Subject Details-</h5>
							</div>

							<div class="card-body">
								<form action="" method="POST" class="needs-validation"
									novalidate>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-address-card"></i></span>Select Section Name -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="selectSection" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-address-card"></i></span>Select Class Name -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="selectClass"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
													</select>
												</div>
											</div>
										</div>

										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-address-card"></i></span>Select Subject
													Category -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="selectClass"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label "><span class="px-1"><i
														class="fas fa-user "></i></span>Subject Name-</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="maximunMarks" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Update Max
														Marks.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label "><span class="px-1"><i
														class="fas fa-user "></i></span>Subject Short Name-</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="obtainedMarks" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Update Max
														Marks.</div>
												</div>
											</div>
										</div>

									</div>


									<div class="text-end">
										<button class="btn btn-primary " type="submit">Save
											</button>
										<button class="btn btn-danger" type="reset">Reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="card card-table">
							<div class="card-body">

								<div class="page-header">
									<div class="row align-items-center">
										<div class="col">
											<h5>Search Classwise Subject Details-</h5>
										</div>

									</div>
								</div>
								<div class="row p-3">
									<div class="col-lg-3 col-md-3">
										<div class="form-group text-center">
											<label class="fw-bold"> Section Name - </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-lg-3 col-md-3">
										<div class="form-group text-center">
											<label class="fw-bold"> Class Name - </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-lg-3 col-md-4">
										<div class="form-group text-center">
											<label class="fw-bold"> Search by Subjet/Short Name </label> <input
												type="text" name="" class="form-control"
												placeholder="Enter Search keyword .." id="validationCustom01"
												required>
										</div>
									</div>

									<div class="col-lg-3 col-md-2 text-center">
										<div class="search-student-btn py-4">
											<button type="search" class="btn button-large btn-primary">Search</button>
										</div>
									</div>
								</div>
								<div class="table-responsive">
									<table class="table table-center mb-0 table-bordered">
										<thead>
											<tr class="text-center">

												<th>Sr No</th>
												<th>Section Name</th>
												<th>Class Name</th>
												<th>Subject Name</th>
												<th>Subject Short Name</th>
												<th>Subject Category</th>
												<th>Status</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
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