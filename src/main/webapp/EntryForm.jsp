<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0" />
<title>Preskool - Basic Inputs</title>

<link rel="shortcut icon" href="assets/img/favicon.png" />

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&amp;display=swap"
	rel="stylesheet" />

<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css" />

<link rel="stylesheet" href="assets/plugins/feather/feather.css" />

<link rel="stylesheet" href="assets/plugins/icons/flags/flags.css" />

<link rel="stylesheet"
	href="assets/plugins/fontawesome/css/fontawesome.min.css" />
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css" />

<link rel="stylesheet"
	href="assets/plugins/twitter-bootstrap-wizard/form-wizard.css" />

<link rel="stylesheet" href="assets/css/style.css" />
</head>

<body>
	<div class="main-wrapper">
		<jsp:include page="header.jsp"></jsp:include>


		<jsp:include page="sidebar.jsp"></jsp:include>

		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title mb-0">Wizard with Progressbar</h4>
							</div>
							<div class="card-body">
								<div id="progrss-wizard" class="twitter-bs-wizard">
									<ul class="twitter-bs-wizard-nav nav nav-pills nav-justified">
										<li class="nav-item"><a href="#progress-seller-details"
											class="nav-link" data-toggle="tab">
												<div class="step-icon" data-bs-toggle="tooltip"
													data-bs-placement="top" title="Student Detail">
													<i class="fas fa-user"></i>
												</div>
										</a></li>
										<li class="nav-item"><a href="#progress-company-document"
											class="nav-link" data-toggle="tab">
												<div class="step-icon" data-bs-toggle="tooltip"
													data-bs-placement="top" title="Guardian Detail">
													<i class="fas fa-user-group"></i>
												</div>
										</a></li>
										<li class="nav-item"><a href="#progress-bank-detail"
											class="nav-link" data-toggle="tab">
												<div class="step-icon" data-bs-toggle="tooltip"
													data-bs-placement="top" title="Other Detail">
													<i class="fa-solid fa-users"></i>
												</div>
										</a></li>
									</ul>

									<div id="bar" class="progress mt-4">
										<div
											class="progress-bar bg-primary progress-bar-striped progress-bar-animated">
										</div>
									</div>
									<div class="tab-content twitter-bs-wizard-tab-content">
										<div class="tab-pane" id="progress-seller-details">
											<div class="mb-4">
												<h5>Student Details</h5>
											</div>
											<form>
												<div class="row">
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-firstname-input"><span
																class="px-1"><i class="fas fa-user"></i></span>Student
																First Name -</label> <input type="text" class="form-control"
																id="progresspill-firstname-input" />
														</div>
													</div>
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-middle-input"><span
																class="px-1"><i class="fas fa-user"></i></span>Student
																Middle Name -</label> <input type="text" class="form-control"
																id="progresspill-middle-input" />
														</div>
													</div>
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-lastname-input"><span
																class="px-1"><i class="fas fa-user"></i></span>Student
																Last Name -</label> <input type="text" class="form-control"
																id="progresspill-lastname-input" />
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-firstname-input"><span
																class="px-1"><i class="fas fa-user"></i></span>Student
																PRN No - </label> <input type="text" class="form-control"
																id="progresspill-firstname-input" />
														</div>
													</div>
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-middle-input"><span
																class="px-1"><i class="fas fa-user"></i></span>Student
																Contact No -</label> <input type="text" class="form-control"
																id="progresspill-middle-input" />
														</div>
													</div>
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-lastname-input"><span
																class="px-1"><i class="fas fa-user"></i></span>Gender -</label>
															<select class="form-select">
																<option selected>Select Gender -</option>
																<option>Male</option>
																<option>Female</option>
															</select>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-Birthdate-input"><span
																class="px-1"><i class="fas fa-user"></i></span> Date Of
																Birth - </label> <input type="date" class="form-control"
																id="progresspill-Birthdate-input" />
														</div>
													</div>
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-Birthplace-input"><span
																class="px-1"><i class="fas fa-user"></i></span>Birth
																Place -</label> <input type="text" class="form-control"
																id="progresspill-Birthplace-input" />
														</div>
													</div>
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-national-input"><span
																class="px-1"><i class="fas fa-user"></i></span>Nationality
																-</label> <input type="text" class="form-control"
																id="progresspill-national-input" />
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-Birthdate-input"><span
																class="px-1"><i class="fas fa-user"></i></span> Caste
																Category - </label> <select class="form-control form-select"
																name="sectionId" id="validationCustom01" required>
																<option value="" disabled selected hidden>Please
																	Select</option>
																<%
																try {
																	Connection con = ConnectionProvider.getConnection();
																	Statement stmt = con.createStatement();
																	ResultSet rs = stmt.executeQuery("select * from casts");
																	while (rs.next()) {
																%>



																<option value="<%=rs.getInt("castId")%>">
																	<%=rs.getString("castName")%></option>
																<%
																}

																} catch (Exception e) {
																e.printStackTrace();
																}
																%>
															</select>
														</div>
													</div>
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-Birthplace-input"><span
																class="px-1"><i class="fas fa-user"></i></span>Religion
																-</label> <select class="form-control form-select"
																name="studentReligion" id="validationCustom01" required>

																<option value="" disabled selected hidden>Please
																	Select</option>

																<%
																try {
																	Connection con = ConnectionProvider.getConnection();
																	Statement stmt = con.createStatement();
																	ResultSet rs = stmt.executeQuery("select * from religion");
																	while (rs.next()) {
																%>

																<option value="<%=rs.getInt("religionId")%>">
																	<%=rs.getString("religionName")%></option>
																<%
																}

																} catch (Exception e) {
																e.printStackTrace();
																}
																%>
															</select>
														</div>
													</div>
													<div class="col-lg-4">
														<div class="mb-3">
															<label for="progresspill-national-input"><span
																class="px-1"><i class="fas fa-user"></i></span>Status -</label>
															<select class="form-control form-select"
																name="admissionStatus" id="validationCustom01" required>
																<option value="" disabled selected hidden>Please
																	Select</option>
																<option>ADMITTED</option>
																<option>NOT-ADMITTED</option>
															</select>
														</div>
													</div>
												</div>
												<h5 class="card-title">Academic & Transport Fee Details -</h5>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="far fa-money-bill-alt"></i></span> Select Fee Category -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
													</select>
													<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Select Fee Category.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-bus"></i></span> Select Transport Way -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
													</select>
													<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Select Transport Way.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span> Select Slab -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
													</select>
													<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Select Slab.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="far fa-money-bill-alt"></i></span> Slab Fees-</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" name="slabFees" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Slab Fees.</div>

												</div>
											</div>
										</div>
									</div>
											</form>
											<ul class="pager wizard  twitter-bs-wizard-pager-link">
												<li class="next"><a href="javascript: void(0);"
													class="btn btn-primary" onclick="nextTab()">Next <i
														class="bx bx-chevron-right ms-1"></i></a></li>
											</ul>
										</div>
										<div class="tab-pane" id="progress-company-document">
											<div>
												<div class="mb-4">
													<h5>Location Details</h5>
												</div>
												<form>
													<div class="row">
														<div class="col-lg-6">
															<div class="mb-3">
																<label for="progresspill-pancard-input"
																	class="form-label">Address Line 1</label> <input
																	type="text" class="form-control"
																	id="progresspill-pancard-input" />
															</div>
														</div>
														<div class="col-lg-6">
															<div class="mb-3">
																<label for="progresspill-vatno-input" class="form-label">Address
																	Line 2</label> <input type="text" class="form-control"
																	id="progresspill-vatno-input" />
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-6">
															<div class="mb-3">
																<label for="progresspill-cstno-input" class="form-label">Landmark</label>
																<input type="text" class="form-control"
																	id="progresspill-cstno-input" />
															</div>
														</div>
														<div class="col-lg-6">
															<div class="mb-3">
																<label for="progresspill-servicetax-input"
																	class="form-label">City</label> <input type="text"
																	class="form-control" id="progresspill-servicetax-input" />
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-6">
															<div class="mb-3">
																<label for="progresspill-companyuin-input"
																	class="form-label">State</label> <input type="text"
																	class="form-control" id="progresspill-companyuin-input" />
															</div>
														</div>
														<div class="col-lg-6">
															<div class="mb-3">
																<label for="progresspill-declaration-input"
																	class="form-label">Country</label> <input type="text"
																	class="form-control"
																	id="progresspill-declaration-input" />
															</div>
														</div>
													</div>
												</form>
												<ul class="pager wizard twitter-bs-wizard-pager-link">
													<li class="previous"><a href="javascript: void(0);"
														class="btn btn-primary" onclick="nextTab()"><i
															class="bx bx-chevron-left me-1"></i> Previous</a></li>
													<li class="next"><a href="javascript: void(0);"
														class="btn btn-primary" onclick="nextTab()">Next <i
															class="bx bx-chevron-right ms-1"></i></a></li>
												</ul>
											</div>
										</div>
										<div class="tab-pane" id="progress-bank-detail">
											<div>
												<div class="mb-4">
													<h5>Payment Details</h5>
												</div>
												<form>
													<div class="row">
														<div class="col-lg-6">
															<div class="mb-3">
																<label for="progresspill-namecard-input"
																	class="form-label">Name on Card</label> <input
																	type="text" class="form-control"
																	id="progresspill-namecard-input" />
															</div>
														</div>
														<div class="col-lg-6">
															<div class="mb-3">
																<label class="form-label">Credit Card Type</label> <select
																	class="form-select">
																	<option selected>Select Card Type</option>
																	<option value="AE">American Express</option>
																	<option value="VI">Visa</option>
																	<option value="MC">MasterCard</option>
																	<option value="DI">Discover</option>
																</select>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-6">
															<div class="mb-3">
																<label for="progresspill-cardno-input"
																	class="form-label">Credit Card Number</label> <input
																	type="text" class="form-control"
																	id="progresspill-cardno-input" />
															</div>
														</div>
														<div class="col-lg-6">
															<div class="mb-3">
																<label for="progresspill-card-verification-input"
																	class="form-label">Card Verification Number</label> <input
																	type="text" class="form-control"
																	id="progresspill-card-verification-input" />
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-6">
															<div class="mb-3">
																<label for="progresspill-expiration-input"
																	class="form-label">Expiration Date</label> <input
																	type="text" class="form-control"
																	id="progresspill-expiration-input" />
															</div>
														</div>
													</div>
												</form>
												<ul class="pager wizard twitter-bs-wizard-pager-link">
													<li class="previous"><a href="javascript: void(0);"
														class="btn btn-primary" onclick="nextTab()"><i
															class="bx bx-chevron-left me-1"></i> Previous</a></li>
													<li class="float-end"><a href="javascript: void(0);"
														class="btn btn-primary" data-bs-toggle="modal"
														data-bs-target=".confirmModal">Save Changes</a></li>
												</ul>
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

		<footer>
			<p>Copyright © 2022 Dreamguys.</p>
		</footer>
	</div>
	</div>

	<div class="modal fade confirmModal" tabindex="-1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content p-3">
				<div class="modal-header border-bottom-0">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h5 class="mb-3">Confirm Save Changes</h5>
						<button type="button" class="btn btn-dark w-md"
							data-bs-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary w-md"
							data-bs-dismiss="modal" onclick="nextTab()">Save changes
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>

	</div>
	<script src="assets/js/jquery-3.6.0.min.js"></script>

	<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="assets/js/feather.min.js"></script>

	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<script
		src="assets/plugins/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
	<script src="assets/plugins/twitter-bootstrap-wizard/prettify.js"></script>
	<script src="assets/plugins/twitter-bootstrap-wizard/form-wizard.js"></script>


	<script src="assets/js/script.js"></script>

	<script src="https://kit.fontawesome.com/341dc2ad4e.js"
		crossorigin="anonymous"></script>
</body>


</html>